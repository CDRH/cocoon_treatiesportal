<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

<xsl:output method="html" indent="yes" />

<xsl:template match="/">
<xsl:copy-of select="." />
</xsl:template>

</xsl:stylesheet>