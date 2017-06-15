<?xml version="1.0"?>
<!--
  Main part
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.org"
                exclude-result-prefixes="#all">

<!--
  Main part (default)
-->
<xsl:template match="root" mode="main">
<main>
  <xsl:apply-templates select="content[@target='main']" mode="content"/>
</main>
</xsl:template>

</xsl:stylesheet>
