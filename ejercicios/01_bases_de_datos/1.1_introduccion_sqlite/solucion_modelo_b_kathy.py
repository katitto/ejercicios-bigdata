"""
ETL CSV -> SQLite (Modelo B Normalizado + EAV + Ecommerce básico)
Genera: tienda_modelo_b_kathy_ecommerce.db

- categorias: 1 por CSV (nombre = stem del archivo)
- fabricantes: extraído de la 1ª palabra del name (con caso especial G.Skill)
- productos: FK a categorias y fabricantes
- colores + productos_colores: N:M (split por "/")
- producto_atributos: EAV con todas las columnas específicas (excepto name/price/color)

Extensión ecommerce (tablas creadas aunque estén vacías):
- clientes, direcciones, pedidos, pedido_items, pagos, envios

Requisitos:
  pip install pandas
"""

import glob
import sqlite3
from pathlib import Path

import pandas as pd


# =========================
# CONFIG (ajusta a tu proyecto)
# =========================
BASE_DIR = Path(__file__).resolve().parents[3]  # → ejercicios-bigdata
RUTA_CSVS = BASE_DIR / "datos" / "csv_tienda_informatica" / "csv_tienda_informatica"
RUTA_DB = Path(__file__).parent / "tienda_modelo_b_kathy_ecommerce.db"

# Si quieres insertar un cliente/pedido de ejemplo (opcional)
INSERTAR_DATOS_EJEMPLO = False


# =========================
# Helpers
# =========================
def extraer_categoria_de_csv(path_csv: str) -> str:
    """categoria = nombre del archivo sin extensión. Ej: cpu_cooler.csv -> cpu_cooler"""
    return Path(path_csv).stem


def extraer_fabricante(nombre_producto: str) -> str:
    """fabricante = primera palabra del name; caso especial G.Skill."""
    if not isinstance(nombre_producto, str) or not nombre_producto.strip():
        return "Unknown"
    if nombre_producto.startswith("G.Skill"):
        return "G.Skill"
    return nombre_producto.split()[0]


def split_colores(valor_color) -> list[str]:
    """Convierte 'Black / Yellow' -> ['Black','Yellow']"""
    if valor_color is None or (isinstance(valor_color, float) and pd.isna(valor_color)):
        return []
    s = str(valor_color).strip()
    if not s or s.lower() == "nan":
        return []
    if "/" in s:
        return [c.strip() for c in s.split("/") if c.strip()]
    return [s]


def crear_esquema(conn: sqlite3.Connection):
    conn.executescript(
        """
        PRAGMA foreign_keys = ON;

        -- =========================
        -- CATÁLOGO (Modelo B + EAV)
        -- =========================
        CREATE TABLE IF NOT EXISTS categorias (
          id          INTEGER PRIMARY KEY AUTOINCREMENT,
          nombre      TEXT NOT NULL UNIQUE,
          descripcion TEXT
        );

        CREATE TABLE IF NOT EXISTS fabricantes (
          id        INTEGER PRIMARY KEY AUTOINCREMENT,
          nombre    TEXT NOT NULL UNIQUE,
          pais      TEXT,
          sitio_web TEXT
        );

        CREATE TABLE IF NOT EXISTS colores (
          id         INTEGER PRIMARY KEY AUTOINCREMENT,
          nombre     TEXT NOT NULL UNIQUE,
          codigo_hex TEXT
        );

        CREATE TABLE IF NOT EXISTS productos (
          id            INTEGER PRIMARY KEY AUTOINCREMENT,
          nombre        TEXT NOT NULL,
          precio        REAL,
          categoria_id  INTEGER NOT NULL,
          fabricante_id INTEGER,
          fuente_csv    TEXT,
          FOREIGN KEY (categoria_id) REFERENCES categorias(id),
          FOREIGN KEY (fabricante_id) REFERENCES fabricantes(id)
        );

        CREATE TABLE IF NOT EXISTS productos_colores (
          producto_id INTEGER NOT NULL,
          color_id    INTEGER NOT NULL,
          PRIMARY KEY (producto_id, color_id),
          FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE,
          FOREIGN KEY (color_id)    REFERENCES colores(id)  ON DELETE RESTRICT
        );

        CREATE TABLE IF NOT EXISTS producto_atributos (
          producto_id INTEGER NOT NULL,
          atributo    TEXT NOT NULL,
          valor       TEXT,
          PRIMARY KEY (producto_id, atributo),
          FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE
        );

        CREATE INDEX IF NOT EXISTS idx_productos_categoria   ON productos(categoria_id);
        CREATE INDEX IF NOT EXISTS idx_productos_fabricante  ON productos(fabricante_id);
        CREATE INDEX IF NOT EXISTS idx_attr_atributo         ON producto_atributos(atributo);
        CREATE INDEX IF NOT EXISTS idx_attr_atributo_valor   ON producto_atributos(atributo, valor);

        -- =========================
        -- ECOMMERCE BÁSICO (vacías)
        -- =========================

        CREATE TABLE IF NOT EXISTS clientes (
          id         INTEGER PRIMARY KEY AUTOINCREMENT,
          email      TEXT NOT NULL UNIQUE,
          nombre     TEXT,
          telefono   TEXT,
          created_at TEXT,
          activo     INTEGER
        );

        CREATE TABLE IF NOT EXISTS direcciones (
          id         INTEGER PRIMARY KEY AUTOINCREMENT,
          cliente_id INTEGER NOT NULL,
          tipo       TEXT NOT NULL, -- 'envio' o 'facturacion'
          alias      TEXT,
          linea1     TEXT NOT NULL,
          linea2     TEXT,
          ciudad     TEXT NOT NULL,
          provincia  TEXT,
          cp         TEXT,
          pais       TEXT NOT NULL,
          created_at TEXT,
          FOREIGN KEY (cliente_id) REFERENCES clientes(id)
        );

        CREATE TABLE IF NOT EXISTS pedidos (
          id                     INTEGER PRIMARY KEY AUTOINCREMENT,
          numero                 TEXT NOT NULL UNIQUE,
          cliente_id             INTEGER NOT NULL,
          direccion_envio_id     INTEGER,
          direccion_facturacion_id INTEGER,
          estado                 TEXT NOT NULL, -- pendiente, pagado, preparando, enviado, entregado, cancelado
          subtotal               REAL,
          envio                  REAL,
          impuestos              REAL,
          total                  REAL,
          moneda                 TEXT,
          created_at             TEXT,
          updated_at             TEXT,
          FOREIGN KEY (cliente_id) REFERENCES clientes(id),
          FOREIGN KEY (direccion_envio_id) REFERENCES direcciones(id),
          FOREIGN KEY (direccion_facturacion_id) REFERENCES direcciones(id)
        );

        CREATE TABLE IF NOT EXISTS pedido_items (
          pedido_id       INTEGER NOT NULL,
          linea           INTEGER NOT NULL,
          producto_id     INTEGER NOT NULL,
          nombre_snapshot TEXT,
          precio_unitario REAL NOT NULL,
          cantidad        INTEGER NOT NULL,
          total_linea     REAL,
          PRIMARY KEY (pedido_id, linea),
          FOREIGN KEY (pedido_id) REFERENCES pedidos(id) ON DELETE CASCADE,
          FOREIGN KEY (producto_id) REFERENCES productos(id)
        );

        CREATE TABLE IF NOT EXISTS pagos (
          id                 INTEGER PRIMARY KEY AUTOINCREMENT,
          pedido_id          INTEGER NOT NULL UNIQUE,
          proveedor          TEXT,
          estado             TEXT NOT NULL, -- iniciado, autorizado, capturado, fallido, reembolsado
          amount             REAL,
          moneda             TEXT,
          referencia_externa TEXT,
          created_at         TEXT,
          FOREIGN KEY (pedido_id) REFERENCES pedidos(id) ON DELETE CASCADE
        );

        CREATE TABLE IF NOT EXISTS envios (
          id           INTEGER PRIMARY KEY AUTOINCREMENT,
          pedido_id    INTEGER NOT NULL UNIQUE,
          transportista TEXT,
          tracking     TEXT,
          estado       TEXT NOT NULL, -- creado, en_transito, entregado, incidencia
          shipped_at   TEXT,
          delivered_at TEXT,
          FOREIGN KEY (pedido_id) REFERENCES pedidos(id) ON DELETE CASCADE
        );
        """
    )
    conn.commit()


def upsert_nombre(conn: sqlite3.Connection, tabla: str, nombre: str) -> int:
    """Inserta si no existe y devuelve id. Tabla debe tener columna 'nombre'."""
    cur = conn.cursor()
    cur.execute(f"INSERT OR IGNORE INTO {tabla} (nombre) VALUES (?)", (nombre,))
    conn.commit()
    cur.execute(f"SELECT id FROM {tabla} WHERE nombre = ?", (nombre,))
    row = cur.fetchone()
    if not row:
        raise RuntimeError(f"No pude obtener id de {tabla} para nombre={nombre}")
    return row[0]


def get_id(conn: sqlite3.Connection, tabla: str, nombre: str) -> int | None:
    """Devuelve id por nombre (tabla con columna 'nombre')."""
    cur = conn.execute(f"SELECT id FROM {tabla} WHERE nombre = ?", (nombre,))
    row = cur.fetchone()
    return row[0] if row else None


# =========================
# (Opcional) datos ejemplo ecommerce
# =========================
def insertar_datos_ejemplo(conn: sqlite3.Connection):
    """
    Inserta un cliente + 2 direcciones + 1 pedido vacío (sin items),
    solo para que el diagrama y pruebas tengan registros.
    """
    cur = conn.cursor()

    # cliente
    cur.execute(
        """
        INSERT OR IGNORE INTO clientes (email, nombre, telefono, created_at, activo)
        VALUES (?, ?, ?, datetime('now'), 1)
        """,
        ("kathy@example.com", "Kathy", "600000000"),
    )
    conn.commit()
    cliente_id = conn.execute("SELECT id FROM clientes WHERE email = ?", ("kathy@example.com",)).fetchone()[0]

    # direcciones
    cur.execute(
        """
        INSERT INTO direcciones (cliente_id, tipo, alias, linea1, ciudad, pais, created_at)
        VALUES (?, 'envio', 'Casa', 'Calle Ejemplo 1', 'Madrid', 'ES', datetime('now'))
        """,
        (cliente_id,),
    )
    dir_envio_id = cur.lastrowid

    cur.execute(
        """
        INSERT INTO direcciones (cliente_id, tipo, alias, linea1, ciudad, pais, created_at)
        VALUES (?, 'facturacion', 'Factura', 'Calle Factura 99', 'Madrid', 'ES', datetime('now'))
        """,
        (cliente_id,),
    )
    dir_fact_id = cur.lastrowid

    # pedido (sin items)
    cur.execute(
        """
        INSERT INTO pedidos (
          numero, cliente_id, direccion_envio_id, direccion_facturacion_id,
          estado, subtotal, envio, impuestos, total, moneda, created_at, updated_at
        )
        VALUES (
          ?, ?, ?, ?, 'pendiente', 0, 0, 0, 0, 'EUR', datetime('now'), datetime('now')
        )
        """,
        ("ORD-TEST-0001", cliente_id, dir_envio_id, dir_fact_id),
    )
    conn.commit()


# =========================
# ETL
# =========================
def main():
    print("========================================================")
    print("== ETL CSV -> MODELO B (KATHY ECOMMERCE) ==")
    print("========================================================")
    print(f"📂 CSVs: {RUTA_CSVS}")
    print(f"💾 Salida DB: {RUTA_DB}")

    if not RUTA_CSVS.exists():
        raise FileNotFoundError(f"No existe la carpeta de CSVs: {RUTA_CSVS}")

    archivos = sorted(glob.glob(str(RUTA_CSVS / "*.csv")))
    if not archivos:
        raise FileNotFoundError(f"No encontré CSVs en: {RUTA_CSVS}")

    # recrear DB
    if RUTA_DB.exists():
        RUTA_DB.unlink()

    conn = sqlite3.connect(RUTA_DB)
    crear_esquema(conn)

    # 1) Cargar categorías (1 por CSV)
    print("\n📋 Paso 1: categorías...")
    for f in archivos:
        cat = extraer_categoria_de_csv(f)
        desc = cat.replace("_", " ").replace("-", " ").title()
        conn.execute(
            "INSERT OR IGNORE INTO categorias (nombre, descripcion) VALUES (?, ?)",
            (cat, desc),
        )
    conn.commit()

    # 2) Primera pasada: recolectar fabricantes + colores
    print("📋 Paso 2: fabricantes y colores (scan global)...")
    fabricantes = set()
    colores = set()

    for f in archivos:
        try:
            df = pd.read_csv(f)
        except Exception as e:
            print(f"  ⚠️ No pude leer {Path(f).name}: {e}")
            continue

        if "name" in df.columns:
            for n in df["name"].dropna():
                fabricantes.add(extraer_fabricante(n))

        if "color" in df.columns:
            for c in df["color"].dropna():
                for cc in split_colores(c):
                    colores.add(cc)

    for fab in sorted(fabricantes):
        upsert_nombre(conn, "fabricantes", fab)
    for col in sorted(colores):
        upsert_nombre(conn, "colores", col)

    print(f"✅ Fabricantes únicos: {len(fabricantes)}")
    print(f"✅ Colores únicos: {len(colores)}")

    # 3) Segunda pasada: insertar productos + atributos + relación colores
    print("\n📋 Paso 3: cargar productos + atributos + productos_colores...")
    productos_insertados = 0
    atributos_insertados = 0
    relaciones_color = 0

    cur = conn.cursor()

    for f in archivos:
        categoria = extraer_categoria_de_csv(f)
        categoria_id = get_id(conn, "categorias", categoria) or upsert_nombre(conn, "categorias", categoria)

        try:
            df = pd.read_csv(f)
        except Exception as e:
            print(f"  ⚠️ No pude leer {Path(f).name}: {e}")
            continue

        cols = list(df.columns)
        if "name" not in cols:
            print(f"  ⚠️ {Path(f).name} no tiene columna 'name' (se salta).")
            continue

        cols_atributos = [c for c in cols if c not in {"name", "price", "color"}]
        print(f"\n📄 {Path(f).name} -> categoria={categoria} | filas={len(df)} | attrs={len(cols_atributos)}")

        for _, row in df.iterrows():
            nombre = row.get("name", None)
            if nombre is None or (isinstance(nombre, float) and pd.isna(nombre)) or not str(nombre).strip():
                continue

            precio = row.get("price", None)
            if isinstance(precio, float) and pd.isna(precio):
                precio = None

            fabricante = extraer_fabricante(str(nombre))
            fabricante_id = get_id(conn, "fabricantes", fabricante)

            # Insert producto
            cur.execute(
                """
                INSERT INTO productos (nombre, precio, categoria_id, fabricante_id, fuente_csv)
                VALUES (?, ?, ?, ?, ?)
                """,
                (str(nombre), float(precio) if precio is not None else None, categoria_id, fabricante_id, Path(f).name),
            )
            producto_id = cur.lastrowid
            productos_insertados += 1

            # Atributos (EAV)
            for attr in cols_atributos:
                val = row.get(attr, None)
                if val is None or (isinstance(val, float) and pd.isna(val)):
                    continue
                cur.execute(
                    """
                    INSERT OR IGNORE INTO producto_atributos (producto_id, atributo, valor)
                    VALUES (?, ?, ?)
                    """,
                    (producto_id, str(attr), str(val)),
                )
                atributos_insertados += 1

            # Colores N:M
            if "color" in cols:
                for cc in split_colores(row.get("color", None)):
                    color_id = get_id(conn, "colores", cc)
                    if color_id is None:
                        color_id = upsert_nombre(conn, "colores", cc)
                    try:
                        cur.execute(
                            "INSERT INTO productos_colores (producto_id, color_id) VALUES (?, ?)",
                            (producto_id, color_id),
                        )
                        relaciones_color += 1
                    except sqlite3.IntegrityError:
                        pass

        conn.commit()

    # (Opcional) insertar datos ejemplo ecommerce
    if INSERTAR_DATOS_EJEMPLO:
        insertar_datos_ejemplo(conn)

    # 4) Resumen final
    def count(tabla: str) -> int:
        return conn.execute(f"SELECT COUNT(*) FROM {tabla}").fetchone()[0]

    print("\n" + "=" * 70)
    print("📊 RESUMEN MODELO B (KATHY ECOMMERCE)")
    print("=" * 70)
    print(f"✅ categorias: {count('categorias')}")
    print(f"✅ fabricantes: {count('fabricantes')}")
    print(f"✅ colores: {count('colores')}")
    print(f"✅ productos: {count('productos')}")
    print(f"✅ producto_atributos (filas): {count('producto_atributos')}")
    print(f"✅ productos_colores (relaciones): {count('productos_colores')}")
    print(f"✅ clientes: {count('clientes')}")
    print(f"✅ direcciones: {count('direcciones')}")
    print(f"✅ pedidos: {count('pedidos')}")
    print(f"✅ pedido_items: {count('pedido_items')}")
    print(f"✅ pagos: {count('pagos')}")
    print(f"✅ envios: {count('envios')}")
    print(f"\n💾 DB: {RUTA_DB} ({RUTA_DB.stat().st_size / 1024 / 1024:.2f} MB)")

    conn.close()
    print("\n✅ ETL terminado.")


if __name__ == "__main__":
    main()
