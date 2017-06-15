<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.org"
                exclude-result-prefixes="#all">

<!-- No header on home page -->
<xsl:template match="root[@service='home']" mode="header"/>

<!-- Main page -->
<xsl:template match="root[@service='home']" mode="main">
<main>
  <h1>Home</h1>
</main>
</xsl:template>

</xsl:stylesheet>
