<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:exsl="http://exslt.org/common" 
    extension-element-prefixes="exsl"
    xmlns:xsltu="http://xsltunit.org/0/"
    exclude-result-prefixes="exsl">
    <xsl:import href="xsltunit.xslt" />
    <xsl:import href="fibonacci.xslt" />
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsltu:tests>

            <xsltu:test id="test 0">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="0"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="0" />
                            <xsl:with-param name="current" select="0" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>0</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 1">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="1"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="1" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>1</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 2">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="2"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="2" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>1</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 3">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="3"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="3" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>2</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 4">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="4"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="4" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>3</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 5">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="5"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="5" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>5</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 6">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="6"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="6" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>8</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

            <xsltu:test id="test 15">
                <xsl:call-template name="xsltu:assertEqual">
                    <xsl:with-param name="id" select="15"/>
                    <xsl:with-param name="nodes1">
                        <xsl:call-template name="fib">
                            <xsl:with-param name="count" select="15" />
                            <xsl:with-param name="current" select="1" />
                            <xsl:with-param name="next" select="1" />
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="nodes2">
                        <xsl:text>610</xsl:text>
                    </xsl:with-param>
                </xsl:call-template>
            </xsltu:test>

        </xsltu:tests>
    </xsl:template>    
</xsl:stylesheet>
