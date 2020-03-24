<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom"
    exclude-result-prefixes="atom">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/atom:feed">
  <h1><xsl:value-of select="atom:title"/></h1>

  		<p class="description">This feed has been exported from
  			<a target="_new" class="extlink" href="http://tt-rss.org">Tiny Tiny RSS</a>.
  			It contains the following items:</p>

  		<xsl:for-each select="atom:entry">
  			<h2><a target="_new" href="{atom:link/@href}"><xsl:value-of select="atom:title"/></a></h2>

  			<div name="decodeme" class="content">
  				<xsl:value-of select="atom:content" disable-output-escaping="yes"/>
  			</div>


  		</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
