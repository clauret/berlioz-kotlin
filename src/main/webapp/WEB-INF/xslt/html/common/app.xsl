<?xml version="1.0"?>
<!--
  This stylesheet usually contains common application specific templates
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.org"
                exclude-result-prefixes="#all">

<!-- GLOBAL VARIABLES                                                                           -->
<!-- ========================================================================================== -->

<!-- General context for the app -->
<xsl:variable name="context" select="/root/header/path/@context"/>

<!-- GLOBAL TEMPLATES                                                                           -->
<!-- ========================================================================================== -->

<!--
  Generate metadata to insert in the HTML head of every page.
-->
<xsl:template match="root" mode="head">
  <xsl:variable name="context" select="header/path/@context"/>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="format-detection" content="telephone=no"/>
  <title>Berlioz with Kotlin</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,300,700,900&amp;subset=latin,latin-ext" type="text/css"/>
  <link rel="stylesheet" href="/css/lib/foundation-essential-6.3.1.min.css" />
  <xsl:for-each select="content[@name='bundles']/style">
    <link rel="stylesheet" href="{$context}{@src}"/>
  </xsl:for-each>
  <xsl:call-template name="_favicons"/>
</xsl:template>

<!--
  Scripts to be included at the bottom of the page.
-->
<xsl:template match="root" mode="bottom">
  <script src="/js/lib/jquery-3.2.1.min.js"/>
  <script src="/js/lib/foundation-essential-6.3.1.min.js"/>
  <script>
    $(document).foundation();
  </script>

  <xsl:for-each select="content[@name='bundles']/script">
    <script src="{$context}{@src}"/>
  </xsl:for-each>

  <xsl:comment>v<xsl:value-of select="header/app/@version"/></xsl:comment>
</xsl:template>

<!-- NAMED TEMPLATES USED ABOVE                                                                 -->
<!-- ========================================================================================== -->

<!--
  Favicons
  @see http://realfavicongenerator.net/
-->
<xsl:template name="_favicons">
  <link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-touch-icon.png?v=jrd1"/>
  <link rel="icon" type="image/png" href="/favicons/favicon-32x32.png?v=jrd1" sizes="32x32"/>
  <link rel="icon" type="image/png" href="/favicons/favicon-16x16.png?v=jrd1" sizes="16x16"/>
  <link rel="manifest" href="/favicons/manifest.json?v=jrd1"/>
  <link rel="mask-icon" href="/favicons/safari-pinned-tab.svg?v=jrd1" color="#5bbad5"/>
  <link rel="shortcut icon" href="/favicons/favicon.ico?v=jrd1"/>
  <meta name="msapplication-config" content="/favicons/browserconfig.xml?v=jrd1"/>
  <meta name="theme-color" content="#ffffff"/>
</xsl:template>

</xsl:stylesheet>
