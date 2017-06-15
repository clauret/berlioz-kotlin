<?xml version="1.0"?>
<!--
  Global functions.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.org"
                exclude-result-prefixes="#all">

<!-- VARIABLES USED BY THIS MODULE                                                              -->
<!-- ========================================================================================== -->

<!-- The Path info (provided by Berlioz) -->
<xsl:variable name="_path-info" select="/root/header/path/@info"/>

<!-- The HTTP Parameters (provided by Berlioz) -->
<xsl:variable name="_http-parameters" select="/root/header/http-parameters"/>

<!-- GLOBAL FUNCTIONS                                                                           -->
<!-- ========================================================================================== -->

<!--
  Returns all the sections in the current structure.
-->
<xsl:function name="f:path-info" as="xs:string">
  <xsl:value-of select="$_path-info"/>
</xsl:function>

<!--
  Returns the value of the first matching HTTP parameter if any.

  @param name the name of the HTTP parameter
-->
<xsl:function name="f:get-http-parameter" as="xs:string?">
  <xsl:param name="name" as="xs:string"/>
  <xsl:value-of select="$_http-parameters/parameter[@name = $name][1]"/>
</xsl:function>

</xsl:stylesheet>
