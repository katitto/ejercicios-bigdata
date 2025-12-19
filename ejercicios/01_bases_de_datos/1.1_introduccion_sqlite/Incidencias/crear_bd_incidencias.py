#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sqlite3
from pathlib import Path

BASE_DIR = Path(__file__).parent
SQL_PATH = BASE_DIR / "modelo_incidencias.sql"
DB_PATH = BASE_DIR / "incidencias.db"

def main():
    if not SQL_PATH.exists():
        print(f"❌ No existe: {SQL_PATH}")
        return

    sql = SQL_PATH.read_text(encoding="utf-8", errors="replace")

    if DB_PATH.exists():
        DB_PATH.unlink()

    conn = sqlite3.connect(DB_PATH)
    try:
        conn.execute("PRAGMA foreign_keys = ON;")
        conn.executescript(sql)
        conn.commit()
        print(f"✅ BD creada: {DB_PATH}")
    finally:
        conn.close()

if __name__ == "__main__":
    main()
