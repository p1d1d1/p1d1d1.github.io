<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/">
  	<xsl:output method="html" encoding="utf-8"/>

	<xsl:template match="/">
      <html>
        <head>
          <title><xsl:value-of select="atom:feed/atom:title"/></title>
		  <link rel="stylesheet" href="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-internet.min.5dd268a2a1188e121194f31250129824.css" />
        </head>
		<body>
		<xsl:apply-templates select="/atom:feed"/>
		</body>
	</html>
	</xsl:template>

	<xsl:template match="atom:entry">
		<li class="entry">
			<h2>
			<a href="{atom:link[@rel='alternate']/@href}">
				<xsl:value-of select="atom:title"/>
			</a>
			</h2>
			<p class="date">
		 		(<xsl:value-of select="substring-before(atom:updated,'T')"/>)
			</p>
			<xsl:value-of select="atom:content" disable-output-escaping="yes"/>
			<br/>
			<xsl:apply-templates select="atom:category"/>
		</li>
	</xsl:template>

	<xsl:template match="atom:category">
		<xsl:for-each select=".">
		<xsl:element name="a">
			<xsl:attribute name="rel">
				<xsl:text>tag</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="concat(@scheme, @term)"/>
			</xsl:attribute>
			<xsl:value-of select="@term"/>
		</xsl:element>
		<xsl:text> </xsl:text>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
