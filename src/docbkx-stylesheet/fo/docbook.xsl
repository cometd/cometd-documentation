<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:d="http://docbook.org/ns/docbook"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xl="http://www.w3.org/1999/xlink"
                xmlns:xslthl="http://xslthl.sf.net">

    <xsl:import href="urn:docbkx:stylesheet"/>
    <xsl:import href="urn:docbkx:stylesheet/highlight.xsl"/>

    <!-- Customization of <code> and <classname> blocks -->
    <xsl:template match="d:code|d:classname">
        <fo:inline font-family="monospace" font-size="90%"><xsl:apply-templates/></fo:inline>
    </xsl:template>

    <!-- Customization of <programlisting> and <screen> blocks -->
    <xsl:attribute-set name="monospace.verbatim.properties">
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="font-size">80%</xsl:attribute>
    </xsl:attribute-set>
    <xsl:param name="shade.verbatim" select="1"/>
    <xsl:attribute-set name="shade.verbatim.style">
        <xsl:attribute name="background-color">#eee</xsl:attribute>
        <xsl:attribute name="border-width">0.5pt</xsl:attribute>
        <xsl:attribute name="border-style">solid</xsl:attribute>
        <xsl:attribute name="border-color">#ddd</xsl:attribute>
        <xsl:attribute name="padding">3pt</xsl:attribute>
    </xsl:attribute-set>

    <!-- Customization of links -->
    <xsl:attribute-set name="xref.properties">
        <xsl:attribute name="color">#f80</xsl:attribute>
        <xsl:attribute name="text-decoration">underline</xsl:attribute>
    </xsl:attribute-set>
    <xsl:template match="d:link">
        <xsl:choose>
            <xsl:when test="@xl:href">
                <fo:basic-link external-destination="{@xl:href}"
                               xsl:use-attribute-sets="xref.properties">
                    <xsl:apply-templates/>
                </fo:basic-link>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Colors for syntax highlighting -->
    <xsl:template match="xslthl:tag" mode="xslthl">
        <fo:inline font-weight="bold" color="#009"><xsl:apply-templates/></fo:inline>
    </xsl:template>
    <xsl:template match="xslthl:keyword" mode="xslthl">
        <fo:inline font-weight="bold" color="#009"><xsl:apply-templates/></fo:inline>
    </xsl:template>
    <xsl:template match="xslthl:comment" mode="xslthl">
        <fo:inline font-style="italic" color="gray"><xsl:apply-templates/></fo:inline>
    </xsl:template>
    <xsl:template match="xslthl:string" mode="xslthl">
        <fo:inline font-weight="bold" color="green"><xsl:apply-templates/></fo:inline>
    </xsl:template>
    <xsl:template match="xslthl:annotation" mode="xslthl">
        <fo:inline color="#880"><xsl:apply-templates/></fo:inline>
    </xsl:template>

</xsl:stylesheet>
