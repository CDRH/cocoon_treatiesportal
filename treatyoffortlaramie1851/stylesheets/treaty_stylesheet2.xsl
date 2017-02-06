<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

<xsl:output method="html" indent="yes" />

<xsl:template match="/">

<xsl:choose>
<xsl:when test="descendant::TEI.2">
<xsl:apply-templates select="//TEI.2" />
</xsl:when>
<xsl:otherwise>
<xsl:call-template name="noResult" />
</xsl:otherwise>
</xsl:choose>

</xsl:template>

<xsl:template match="TEI.2">
<html>
<head>
  <title><xsl:copy-of select="teiHeader/fileDesc/notesStmt/note//text()" /></title>

<link rel="stylesheet" type="text/css" href="treaties.css" />

</head>

<body>
<div id="mainwrapper">

<div id="secondwrapper">

<div id="projecthead">
<div class="mainmenu">
<a href="index.html">Home</a>
<form action="search" method="get" style="margin-top: 0px;"><input size="20" type="text" name="keyword" value="Search these treaties" onfocus="this.select()" /><input value="go" type="submit" style="padding: 0px; "/><br/><!-- edit --><a href="search.html" class="help">Search Help</a></form>

</div>
<img src="head.gif" />



</div>


<div id="metadata">
<h2>Document Metadata</h2>
<table>
<tr><th>Description</th><td><xsl:apply-templates select="//TEI.2/teiHeader//note[@type='label']" />: <xsl:apply-templates select="teiHeader//note[@type='project']" /></td></tr>
<tr><th>Source</th><td><xsl:apply-templates select="teiHeader//note[@type='source']" /></td></tr>
<!-- <tr><th>Source</th><td><xsl:copy-of select="//TEI.2/teiHeader//sourceDesc//text()" /></td></tr> -->
</table>
</div>


<div id="content">
<xsl:apply-templates />
</div>



<div id="footer">
University of Nebraska-Lincoln, <a href="http://cdrh.unl.edu">Center for Digital Research in the Humanities</a><br/>
<a href="http://www.unl.edu/"><img src="unl.jpg" /></a>
</div>
</div>

</div>
<xsl:text disable-output-escaping="yes"><![CDATA[<!-- Start of StatCounter Code -->
<script type="text/javascript" language="javascript">
var sc_project=1330091; 
var sc_invisible=1; 
var sc_partition=11; 
var sc_security="57e280aa"; 
</script>

<script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/counter.js"></script><noscript><a href="http://www.statcounter.com/" target="_blank"><img  src="http://c12.statcounter.com/counter.php?sc_project=1330091&amp;java=0&amp;security=57e280aa&amp;invisible=1" alt="web statistics" border="0" /></a> </noscript>
<!-- End of StatCounter Code -->]]></xsl:text>
</body>


</html>

</xsl:template>

<xsl:template match="teiHeader" />


<xsl:template match="letter">
  <blockquote><xsl:apply-templates /></blockquote>
</xsl:template>

<xsl:template match="lb">
  <xsl:apply-templates /><br />
</xsl:template>

<xsl:template match="hi[@rend='roman']">
<span class="roman"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="hi[@rend='italics']">
<i><xsl:apply-templates/></i>
</xsl:template>

<xsl:template match="hi[@rend='underline']">
<u><xsl:apply-templates/></u>
</xsl:template>

<xsl:template match="hi[@rend='bold']">
<b><xsl:apply-templates/></b>
</xsl:template>

<xsl:template match="hi[@rend='quoted']">
<xsl:text>"</xsl:text><xsl:apply-templates/><xsl:text>"</xsl:text>
</xsl:template>

<xsl:template match="hi[@rend='underline']">
<u><xsl:apply-templates/></u>
</xsl:template>

<xsl:template match="hi[@rend='super']">
<sup><xsl:apply-templates/></sup>
</xsl:template>

<xsl:template match="hi[@rend='subscript']">
<sub><xsl:apply-templates/></sub>
</xsl:template>

<xsl:template match="hi[@rend='center']">
<center><xsl:apply-templates/></center>
</xsl:template>

<xsl:template match="hi[@rend='smallCaps']">
<span class="smallcaps"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="hi[@rend='right']">
<div class="right"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="title[@rend='bold']">
<strong><xsl:apply-templates/></strong>
</xsl:template>

<xsl:template match="title[@rend='underline']">
<u>&#160;<xsl:apply-templates/></u>&#160;
</xsl:template>

<xsl:template match="title[@rend='sub']">
<sub><xsl:apply-templates/></sub>
</xsl:template>

<xsl:template match="title[@rend='quoted']">
<xsl:text>"</xsl:text><xsl:apply-templates/><xsl:text>"</xsl:text>
</xsl:template>

<xsl:template match="body">
<xsl:apply-templates/>
</xsl:template>

<xsl:template match="title[@type='main']">
<center><b><xsl:apply-templates/></b></center>
</xsl:template>

<xsl:template match="revisionDesc">
<!-- hide -->
</xsl:template>

<xsl:template match="publicationStmt">
<!-- hide -->
</xsl:template>

<xsl:template match="sourceDesc">
<!-- hide -->
</xsl:template>

<xsl:template match="note[not(ancestor::teiHeader)]">
<div type="notes">
<p><a name="{@id}.note" /><small><xsl:value-of select="@n" />.&#160;<xsl:apply-templates />&#160;<a href="#{@id}.ref">[back]</a></small></p>
</div>
</xsl:template>

<xsl:template match="ref">
<a name="{@target}.ref" /><a href="#{@target}.note"><sup>[<xsl:value-of select="@n" />]</sup></a>
</xsl:template>

<xsl:template name="noResult">
<html>
<head>
<title>Error</title>
</head>
<body>
<h1>Document not found.</h1>
</body>
</html>
</xsl:template>

<xsl:template match="pb">

<span class="page">
<xsl:if test="preceding::pb"><br/></xsl:if><br/>
<xsl:if test="@n">
&#160;&#160;&#160;<a href="images/images.html?n={@n}&amp;ref={//TEI.2/@id}">
<img src="jpg/thumbs/{@n}.jpg" class="pg" alt="page {@n}"/>

<br/>
<strong class="black">View page <xsl:value-of select="@n" /></strong>
</a><br/><br/></xsl:if>
</span>
</xsl:template>

<xsl:template match="processing-instruction('REV_DISC')">
<xsl:if test="contains(. , '+')">
<xsl:text disable-output-escaping="yes"><![CDATA[<strong class="highlighted">]]></xsl:text>
</xsl:if>
<xsl:if test="contains(. , '-')">
<xsl:text disable-output-escaping="yes"><![CDATA[</strong>]]></xsl:text>
</xsl:if>
</xsl:template>

<xsl:template match="notesStmt">
<p class="top">
<xsl:apply-templates />
</p>
</xsl:template>

<xsl:template match="table">
<table>
<xsl:apply-templates />
</table>
</xsl:template>

<xsl:template match="row">
<tr>
<xsl:apply-templates />
</tr>
</xsl:template>

<xsl:template match="cell">
<td>
<xsl:apply-templates />
</td>
</xsl:template>

<xsl:template match="figure[@entity]">
<p><!-- edit -->
<img src="jpg/{@entity}.jpg" />
<xsl:apply-templates />
</p>
</xsl:template>

<xsl:template match="processing-instruction('REV_DISC')">
<xsl:if test="contains(. , '+')">
<xsl:text disable-output-escaping="yes"><![CDATA[<strong class="highlighted">]]></xsl:text>
</xsl:if>
<xsl:if test="contains(. , '-')">
<xsl:text disable-output-escaping="yes"><![CDATA[</strong>]]></xsl:text>
</xsl:if>
</xsl:template>

</xsl:stylesheet>