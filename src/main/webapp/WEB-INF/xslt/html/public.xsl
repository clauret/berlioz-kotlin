<?xml version="1.0" encoding="UTF-8"?>
<!--
  Public pages
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all">

<!-- Common modules -->
<xsl:include href="common/app.xsl"/>
<xsl:include href="common/header.xsl"/>
<xsl:include href="common/main.xsl"/>
<xsl:include href="common/footer.xsl"/>
<xsl:include href="common/functions.xsl"/>

<!-- Home page -->
<xsl:include href="public/home.xsl"/>

<!-- General Output properties (HTML5) -->
<xsl:output method="html" encoding="utf-8" indent="yes" undeclare-prefixes="no" media-type="text/html" />

<!--
  Main template called in all cases.
-->
<xsl:template match="/">
<!-- Display the HTML Doctype -->
<xsl:text disable-output-escaping="yes"><![CDATA[<!doctype html>
]]></xsl:text>
<html class="no-js" lang="en">
  <head>
    <xsl:apply-templates mode="head"/>
  </head>
  <body id="page-{root/@service}" class="default">
    <xsl:apply-templates mode="header"/>
    <xsl:apply-templates mode="main"/>
    <xsl:apply-templates mode="footer"/>
    <xsl:apply-templates mode="bottom"/>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>
