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
  <title><xsl:copy-of select="teiHeader/fileDesc/titleStmt/title[@type='main']//text()" /></title>

<link rel="stylesheet" type="text/css" href="css/treaties.css" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
</head>

<body>
<div id="mainwrapper">

<div id="secondwrapper">

<div id="projecthead">

  <h1 class="bio"><span>Charles J. Kappler — A Life Beyond Indian Affairs:
    Laws and Treaties</span></h1>

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

  <xsl:template match="teiHeader"/>
  
  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="head">
    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>
  
  <xsl:template match="title">
    <xsl:choose>
      <xsl:when test="./@level='a'"><xsl:apply-templates/></xsl:when>
      <xsl:otherwise> <i>
        <xsl:apply-templates/>
      </i></xsl:otherwise>
    </xsl:choose>
    
    
  </xsl:template>
  
  <xsl:template match="list"><ul><xsl:apply-templates/></ul></xsl:template>
  
  <xsl:template match="item"><li><xsl:apply-templates/></li></xsl:template>
  
  <xsl:template match="foreign | term">
    <i>
      <xsl:apply-templates/>
    </i>
  </xsl:template>
  
  <xsl:template match="milestone[@unit='crosses']">
    <div class="separator">
      <xsl:text> </xsl:text>
    </div>
  </xsl:template>
  
  <!--<xsl:template match="quote">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>-->
  
  <xsl:template match="docAuthor">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="emph">
    <i>
      <xsl:apply-templates/>
    </i>
  </xsl:template>
  
  <xsl:template match="letter">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>
  
  <xsl:template match="bibl"><p><xsl:apply-templates/></p></xsl:template>
  
  <xsl:template match="lb">
    <xsl:apply-templates/>
    <br/>
  </xsl:template>
  
  <xsl:template match="hi[@rend='roman']">
    <span class="roman">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="hi[@rend='italics']">
    <i>
      <xsl:apply-templates/>
    </i>
  </xsl:template>
  
  <xsl:template match="hi[@rend='bold']">
    <b>
      <xsl:apply-templates/>
    </b>
  </xsl:template>
  
  <xsl:template match="hi[@rend='quoted']">
    <xsl:text>"</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>"</xsl:text>
  </xsl:template>
  
  <xsl:template match="hi[@rend='underline']">
    <u>
      <xsl:apply-templates/>
    </u>
  </xsl:template>
  
  <xsl:template match="hi[@rend='super']">
    <sup>
      <xsl:apply-templates/>
    </sup>
  </xsl:template>
  
  <xsl:template match="hi[@rend='subscript']">
    <sub>
      <xsl:apply-templates/>
    </sub>
  </xsl:template>
  
  <xsl:template match="hi[@rend='center']">
    <center>
      <xsl:apply-templates/>
    </center>
  </xsl:template>
  
  <xsl:template match="hi[@rend='smallCaps']">
    <span class="smallcaps">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="hi[@rend='right']">
    <div class="right">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="title[@rend='bold']">
    <strong>
      <xsl:apply-templates/>
    </strong>
  </xsl:template>
  
  <xsl:template match="title[@rend='underline']">
    <u>&#160;<xsl:apply-templates/></u>&#160; </xsl:template>
  
  <xsl:template match="title[@rend='sub']">
    <sub>
      <xsl:apply-templates/>
    </sub>
  </xsl:template>
  
  <xsl:template match="title[@rend='quoted']">
    <xsl:text>"</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>"</xsl:text>
  </xsl:template>
  
  <xsl:template match="body">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="title[@type='main']">
    <center>
      <b>
        <xsl:apply-templates/>
      </b>
    </center>
  </xsl:template>
  
  
  <xsl:template match="note[not(ancestor::teiHeader)]">
    <div type="notes">
      <p>
        <a name="{@id}.note"/>
        <small><xsl:apply-templates/>&#160;<a
          href="#{@id}.ref">[back]</a></small>
      </p>
    </div>
  </xsl:template>
  
  <xsl:template match="ref">
    
    <xsl:choose>
      <xsl:when test="./@target">
        <a name="{@target}.ref"/>
        <a href="#{@target}.note">
          <sup>[<xsl:value-of select="@n"/>]</sup>
        </a>
      </xsl:when>
      <xsl:when test="starts-with(@n, 'http')">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="./@n"/>
          </xsl:attribute>
          
          <xsl:apply-templates/>
        </a>
      </xsl:when>
      <xsl:when test="ends-with(@n, 'pdf')">
        <a>
          <xsl:attribute name="href">
            <xsl:text>includes/</xsl:text>
            <xsl:value-of select="./@n"/>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:text>_blank</xsl:text>
          </xsl:attribute>
          <xsl:apply-templates/>
        </a>
      </xsl:when>
      <xsl:when test="@type='newwindow'">
        
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="./@n"/>
          </xsl:attribute>
          <xsl:attribute name="target"><xsl:text>_blank</xsl:text></xsl:attribute>
          <xsl:apply-templates/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="./@n"/>
          </xsl:attribute>
          <xsl:apply-templates/>
        </a>
      </xsl:otherwise>
    </xsl:choose>
    
    
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
      <xsl:if test="preceding::pb">
        <br/>
      </xsl:if>
      <br/>
      <xsl:if test="@n"> &#160;&#160;&#160;<a
        href="images/images.html?n={@n}&amp;ref={//TEI.2/@id}">
        <img src="jpg/thumbs/{@n}.jpg" class="pg" alt="page {@n}"/>
        
        <br/>
        <strong class="black">View page <xsl:value-of select="@n"/></strong>
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
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="table">
    <table>
      <xsl:apply-templates/>
    </table>
  </xsl:template>
  
  <xsl:template match="row">
    <tr>
      <xsl:apply-templates/>
    </tr>
  </xsl:template>
  
  <xsl:template match="cell">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>
  
  <xsl:template match="figure">
    <div class="imagecenter">
      <!-- edit -->
      <img src="images/{@id}"/>
      <br/>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="processing-instruction('REV_DISC')">
    <xsl:if test="contains(. , '+')">
      <xsl:text disable-output-escaping="yes"><![CDATA[<strong class="highlighted">]]></xsl:text>
    </xsl:if>
    <xsl:if test="contains(. , '-')">
      <xsl:text disable-output-escaping="yes"><![CDATA[</strong>]]></xsl:text>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="anchor">
    <a><xsl:attribute name="name"><xsl:value-of select="@id"/></xsl:attribute><xsl:text> </xsl:text></a>
    
  </xsl:template>
  

</xsl:stylesheet>
