<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:param name="n" />
<xsl:param name="ref" />


<xsl:output method="html" indent="yes" />

<xsl:template match="/">


<html>

<head>
<title>Early Recognized Treaties with American Indian Nations</title>
<style type="text/css">
body {background: #faeed5;}
</style>

</head>

<body>

<p>
<img src="../jpg/{$n}.jpg" />
</p>

<p>
<xsl:choose>

<xsl:when test="not($ref)">
<a href="../index.html" onclick="history.back();return false;">Back to Homepage</a>
</xsl:when>
<xsl:otherwise>
<a onclick="history.back();return false;" href="../{$ref}.html">Back to Document</a>
</xsl:otherwise>
</xsl:choose>
</p>


</body>

</html>

</xsl:template>

</xsl:stylesheet>