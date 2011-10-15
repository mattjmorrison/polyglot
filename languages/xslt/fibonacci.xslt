<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  	<xsl:template match="/n">
  	  <xsl:variable name="result">
    	  <xsl:call-template name="fib">
    	    <xsl:with-param name="count" select="." />
    	    <xsl:with-param name="current" select="1" />
    	    <xsl:with-param name="next" select="1" />
    	  </xsl:call-template>
    	</xsl:variable>
  	  <xsl:value-of select="$result" />
  	</xsl:template>

	<xsl:template name="fib">
	  <xsl:param name="count" />
	  <xsl:param name="current" />
    <xsl:param name="next" />

	  <xsl:choose>
	    <xsl:when test="$count &lt; 2"><xsl:value-of select="$current" /></xsl:when>
	    <xsl:otherwise>
	      <xsl:call-template name="fib">
	        <xsl:with-param name="count" select="$count - 1" />
          <xsl:with-param name="current" select="$next" />
          <xsl:with-param name="next" select="$current + $next" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>
</xsl:stylesheet>
