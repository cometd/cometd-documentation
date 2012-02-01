<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        xmlns="http://www.w3.org/1999/xhtml"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xslthl="http://xslthl.sf.net"
        version="1.0">

    <xsl:import href="urn:docbkx:stylesheet" />
    <xsl:import href="urn:docbkx:stylesheet/highlight.xsl" />

    <xsl:param name="section.label.includes.component.label" select="1" />
    <xsl:param name="highlight.source" select="1" />

    <xsl:template match="processing-instruction('linebreak')">
        <br />
    </xsl:template>

    <xsl:template match="xslthl:comment" mode="xslthl">
        <span class="hl-comment">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="xslthl:string" mode="xslthl">
        <span class="hl-string">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="xslthl:annotation" mode="xslthl">
        <span class="hl-annotation">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template name="user.head.content">
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-11897685-1']);
_gaq.push(['_trackPageview']);
(function()
{
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();
</script>
    </xsl:template>


</xsl:stylesheet>
