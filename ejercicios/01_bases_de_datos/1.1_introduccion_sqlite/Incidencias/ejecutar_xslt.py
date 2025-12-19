from pathlib import Path
from lxml import etree

def main():
    base = Path(__file__).parent
    xml_path = base / "incidencias.xml"
    xsl_path = base / "incidencias.xsl"
    out_sql  = base / "inserts_incidencias.sql"

    xml_doc = etree.parse(str(xml_path))
    xsl_doc = etree.parse(str(xsl_path))

    transform = etree.XSLT(xsl_doc)
    result = transform(xml_doc)

    out_sql.write_text(str(result), encoding="utf-8")
    print(f"✅ Generado: {out_sql}")

if __name__ == "__main__":
    main()
