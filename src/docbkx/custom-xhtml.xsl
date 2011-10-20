<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns="http://www.w3.org/1999/xhtml"
        version="1.0">

    <xsl:import href="urn:docbkx:stylesheet" />

    <xsl:import href="urn:docbkx:stylesheet/highlight.xsl" />
    <xsl:param name="highlight.source" select="1" />

    <xsl:template match="processing-instruction('linebreak')">
        <br />
    </xsl:template>

</xsl:stylesheet>
