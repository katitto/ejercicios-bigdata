<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet">

  <xsl:output method="text" encoding="UTF-8"/>

  <!-- Escapar ' para SQL -->
  <xsl:template name="sql-escape">
    <xsl:param name="s"/>
    <xsl:choose>
      <xsl:when test="contains($s, &quot;'&quot;)">
        <xsl:value-of select="substring-before($s, &quot;'&quot;)"/>
        <xsl:text>''</xsl:text>
        <xsl:call-template name="sql-escape">
          <xsl:with-param name="s" select="substring-after($s, &quot;'&quot;)"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$s"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Obtener el valor de la columna N teniendo en cuenta ss:Index -->
  <xsl:template name="cell">
    <xsl:param name="row"/>
    <xsl:param name="col"/>

    <!-- Recorremos celdas acumulando el índice real -->
    <xsl:for-each select="$row/ss:Cell">
      <xsl:variable name="pos">
        <xsl:choose>
          <xsl:when test="@ss:Index">
            <xsl:value-of select="@ss:Index"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="position()"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <xsl:if test="number($pos)=number($col)">
        <xsl:value-of select="normalize-space(ss:Data)"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <!-- Keys (unique) usando cell(row, col) -->
  <xsl:key name="kDept" match="ss:Worksheet[@ss:Name='Datos']//ss:Row[position()>1]"
           use="normalize-space(ss:Cell[5]/ss:Data)"/>
  <xsl:key name="kTipo" match="ss:Worksheet[@ss:Name='Datos']//ss:Row[position()>1]"
           use="normalize-space(ss:Cell[2]/ss:Data)"/>

  <xsl:template match="/">
<xsl:text>PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- DEPARTAMENTOS (DISTINTOS)
</xsl:text>

    <!-- Departamentos únicos (col 5) -->
    <xsl:for-each select="ss:Workbook/ss:Worksheet[@ss:Name='Datos']/ss:Table/ss:Row[position()>1]
                          [generate-id() = generate-id(key('kDept', normalize-space(ss:Cell[5]/ss:Data))[1])]">
      <xsl:variable name="dept">
        <xsl:call-template name="cell">
          <xsl:with-param name="row" select="."/>
          <xsl:with-param name="col" select="5"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:text>INSERT OR IGNORE INTO departamentos(nombre) VALUES ('</xsl:text>
      <xsl:call-template name="sql-escape">
        <xsl:with-param name="s" select="$dept"/>
      </xsl:call-template>
      <xsl:text>');
</xsl:text>
    </xsl:for-each>

<xsl:text>
-- TIPOS (DISTINTOS)
</xsl:text>

    <!-- Tipos únicos (col 2) -->
    <xsl:for-each select="ss:Workbook/ss:Worksheet[@ss:Name='Datos']/ss:Table/ss:Row[position()>1]
                          [generate-id() = generate-id(key('kTipo', normalize-space(ss:Cell[2]/ss:Data))[1])]">
      <xsl:variable name="tipo">
        <xsl:call-template name="cell">
          <xsl:with-param name="row" select="."/>
          <xsl:with-param name="col" select="2"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:text>INSERT OR IGNORE INTO tipos_incidencia(nombre) VALUES ('</xsl:text>
      <xsl:call-template name="sql-escape">
        <xsl:with-param name="s" select="$tipo"/>
      </xsl:call-template>
      <xsl:text>');
</xsl:text>
    </xsl:for-each>

<xsl:text>
-- INCIDENCIAS
</xsl:text>

    <xsl:for-each select="ss:Workbook/ss:Worksheet[@ss:Name='Datos']/ss:Table/ss:Row[position()>1]">

      <xsl:variable name="num">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="1"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="tipo">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="2"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="llegada">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="3"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="respuesta">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="4"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="dept">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="5"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ontime">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="7"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="anio">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="8"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="mes">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="9"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="tresp">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="10"/></xsl:call-template>
      </xsl:variable>
      <xsl:variable name="desv">
        <xsl:call-template name="cell"><xsl:with-param name="row" select="."/><xsl:with-param name="col" select="11"/></xsl:call-template>
      </xsl:variable>

      <xsl:if test="string-length($num) &gt; 0">
<xsl:text>INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(</xsl:text><xsl:value-of select="$num"/><xsl:text> AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='</xsl:text>
        <xsl:call-template name="sql-escape"><xsl:with-param name="s" select="$tipo"/></xsl:call-template>
<xsl:text>'),
  (SELECT id_departamento FROM departamentos WHERE nombre='</xsl:text>
        <xsl:call-template name="sql-escape"><xsl:with-param name="s" select="$dept"/></xsl:call-template>
<xsl:text>'),
  date('1899-12-30', '+</xsl:text><xsl:value-of select="$llegada"/><xsl:text> days'),
  date('1899-12-30', '+</xsl:text><xsl:value-of select="$respuesta"/><xsl:text> days'),
  </xsl:text>
        <xsl:choose>
          <xsl:when test="translate($ontime,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='YES' or $ontime='1'">1</xsl:when>
          <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
<xsl:text>,
  </xsl:text><xsl:value-of select="$anio"/><xsl:text>,
  </xsl:text><xsl:value-of select="$mes"/><xsl:text>,
  </xsl:text><xsl:value-of select="$tresp"/><xsl:text>,
  </xsl:text>
        <xsl:choose>
          <xsl:when test="string-length($desv) &gt; 0"><xsl:value-of select="$desv"/></xsl:when>
          <xsl:otherwise>NULL</xsl:otherwise>
        </xsl:choose>
<xsl:text>
);
</xsl:text>
      </xsl:if>
    </xsl:for-each>

<xsl:text>
COMMIT;
</xsl:text>
  </xsl:template>
</xsl:stylesheet>
