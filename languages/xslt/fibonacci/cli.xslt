<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="fibonacci.xslt" />
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <xsl:variable name="result">
            <xsl:call-template name="fib">
                <xsl:with-param name="count" select=". - 1" />
                <xsl:with-param name="current" select="1" />
                <xsl:with-param name="next" select="1" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="$result" />
    </xsl:template>

</xsl:stylesheet>