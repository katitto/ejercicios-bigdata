#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sqlite3
from pathlib import Path

BASE_DIR = Path(__file__).parent
DB_PATH = BASE_DIR / "incidencias.db"
SQL_PATH = BASE_DIR / "inserts_incidencias.sql"

def main():
    if not DB_PATH.exists():
        print(f"❌ No existe la BD: {DB_PATH}")
        return
    if not SQL_PATH.exists():
        print(f"❌ No existe el SQL: {SQL_PATH}")
        return

    sql = SQL_PATH.read_text(encoding="utf-8", errors="replace")

    conn = sqlite3.connect(DB_PATH)
    try:
        conn.execute("PRAGMA foreign_keys = ON;")
        conn.executescript(sql)
        conn.commit()
        print("✅ Datos insertados correctamente en incidencias.db")
    except sqlite3.IntegrityError as e:
        conn.rollback()
        print("❌ Error de integridad (FK/PK):", e)
    except sqlite3.OperationalError as e:
        conn.rollback()
        print("❌ Error SQL:", e)
    finally:
        conn.close()

if __name__ == "__main__":
    main()
