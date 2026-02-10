from pyspark.sql import SparkSession
from pyspark.sql.functions import col, when, count, isnan
from pyspark.sql.types import DoubleType, IntegerType
import os

spark = (
    SparkSession.builder
    .appName("PipelineKath")
    .master("spark://spark-master:7077")
    .getOrCreate()
)
# ====== CONFIG ======
INPUT_CSV = os.environ.get("QOG_CSV_PATH", "/opt/bitnami/spark/data/raw/qog.csv")
OUTPUT_DIR = os.environ.get("QOG_OUT_DIR", "/opt/bitnami/spark/data/processed/qog_magreb_1990_2022_parquet")

# Países elegidos (Magreb ampliado)
COUNTRIES = ["Morocco", "Algeria", "Tunisia", "Egypt", "Libya"]

# Años
YEAR_MIN = 1990
YEAR_MAX = 2022

# 5 variables recomendadas (y defensibles)
# NOTA: pueden variar ligeramente según el CSV (por nombre exacto).
CANDIDATE_COLS = [
    "year",
    "cname",              # nombre del país
    "ccodealp",           # código alfa (AFG, MAR, etc.)

    "vdem_libdem",        # democracia liberal
    "vdem_polyarchy",     # democracia electoral
    "ti_cpi",             # corrupción (percepción)
    "wdi_gdpcapcur",      # PIB per cápita
    "fh_status"           # Freedom House status (si existe)
]


def main():
    spark = (
        SparkSession.builder
        .appName("QoG-Magreb-Pipeline")
        .getOrCreate()
    )

    spark.sparkContext.setLogLevel("WARN")

    print("\n=== 1) Leyendo CSV ===")
    df = (
        spark.read
        .option("header", "true")
        .option("inferSchema", "true")
        .option("sep", ",")
        .csv(INPUT_CSV)
    )

    print(f"Columnas totales: {len(df.columns)}")
    print("Muestra de columnas:", df.columns[:25])

    # ====== 2) Comprobar qué columnas existen realmente (por si algún nombre cambia) ======
    existing = set(df.columns)
    missing = [c for c in CANDIDATE_COLS if c not in existing]

    if missing:
        print("\n⚠️ OJO: Estas columnas NO existen en tu CSV y se ignorarán:")
        for c in missing:
            print(" -", c)

    selected_cols = [c for c in CANDIDATE_COLS if c in existing]

    # Si faltan variables “clave”, avisamos de forma clara
    must_have = ["year", "cname"]
    for c in must_have:
        if c not in existing:
            raise ValueError(
                f"Falta la columna obligatoria '{c}'. "
                "Revisa el separador o si el CSV tiene cabecera."
            )

    df = df.select(*selected_cols)

    # ====== 3) Filtrar países y años ======
    print("\n=== 2) Filtrando países y años ===")
    df_f = (
        df
        .filter(col("cname").isin(COUNTRIES))
        .filter((col("year") >= YEAR_MIN) & (col("year") <= YEAR_MAX))
    )

    print("Filas tras filtros:", df_f.count())

    # ====== 4) Cast de tipos (a veces vienen como string) ======
    # Year a int siempre.
    df_f = df_f.withColumn("year", col("year").cast(IntegerType()))

    # Si existen, estas a double
    for num_col in ["vdem_libdem", "vdem_polyarchy", "ti_cpi", "wdi_gdpcapcur"]:
        if num_col in df_f.columns:
            df_f = df_f.withColumn(num_col, col(num_col).cast(DoubleType()))

    # ====== 5) Variable derivada: nivel de democracia (con vdem_libdem si existe) ======
    # Regla simple y explicable:
    # - Alta: >= 0.6
    # - Media: 0.3–0.599
    # - Baja: < 0.3
    if "vdem_libdem" in df_f.columns:
        df_f = df_f.withColumn(
            "democracy_level",
            when(col("vdem_libdem").isNull(), None)
            .when(col("vdem_libdem") >= 0.6, "High")
            .when(col("vdem_libdem") >= 0.3, "Medium")
            .otherwise("Low")
        )
    else:
        df_f = df_f.withColumn("democracy_level", col("cname") * 0)  # placeholder
        print("⚠️ No existe vdem_libdem -> no se puede crear democracy_level (revisa nombre exacto).")

    # ====== 6) Mini calidad de datos (rápido, útil para memoria del proyecto) ======
    print("\n=== 3) Calidad de datos (nulos por columna) ===")
    null_counts = []
    for c in df_f.columns:
        null_counts.append(
            df_f.select(
                count(when(col(c).isNull() | isnan(col(c)), c)).alias(c)
            )
        )
    # Unimos “a lo bruto” mostrando en consola
    # (es intencional: fácil de leer)
    for c in df_f.columns:
        nnull = df_f.select(count(when(col(c).isNull() | isnan(col(c)), c)).alias("n")).collect()[0]["n"]
        print(f"{c:20s} -> nulls: {nnull}")

    print("\n=== 4) Muestra final ===")
    df_f.orderBy("cname", "year").show(20, truncate=False)

    # ====== 7) Guardar en Parquet (particionado por país, ideal para Big Data) ======
    print("\n=== 5) Guardando Parquet ===")
    (
        df_f
        .repartition(col("cname"))           # mejor distribución por país
        .write
        .mode("overwrite")
        .partitionBy("cname")
        .parquet(OUTPUT_DIR)
    )

    print(f"✅ Parquet guardado en: {OUTPUT_DIR}")

    spark.stop()


if __name__ == "__main__":
    main()
