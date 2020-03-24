<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom"
    exclude-result-prefixes="atom">

    <xsl:output indent="yes" omit-xml-declaration="no"
        media-type="application/xml" encoding="UTF-8" />

    <xsl:template match="/atom:feed">
        <searchresult>
            <xsl:apply-templates select="atom:entry"/>
        </searchresult>
    </xsl:template>

    <xsl:template match="atom:entry">
        <document>
            <title><xsl:value-of select="atom:title" /></title>
            <snippet>
                <xsl:value-of select="atom:summary" />
            </snippet>
            <url><xsl:value-of select="atom:link/@href" /></url>
        </document>
    </xsl:template>
</xsl:stylesheet>
