<?xml version="1.0"?>
<!--
  Header templates
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.org"
                exclude-result-prefixes="#all">

<!--
  Fall back template for the header
-->
<xsl:template match="root" mode="header">
<header class="header">
  <xsl:apply-templates select="content[@target='header']" mode="header"/>
</header>
</xsl:template>

</xsl:stylesheet>