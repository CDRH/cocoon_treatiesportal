<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">

    <xsl:choose>
      <xsl:when test="descendant::TEI">
        <xsl:apply-templates select="//TEI"/>
      </xsl:when>
      <xsl:otherwise>
        <!--<xsl:call-template name="noResult"/>-->
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="TEI">
    <html>
      <head>
        <title>
          "In order to organize the Government of the Indian Territory. . .": Comparing variants of the 1870 Okmulgee Constitution
        </title>

        <link rel="stylesheet" type="text/css" href="css/treaties.css"/>

        <script type="text/javascript">
          <![CDATA[

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23876514-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
          ]]>
        </script>

      </head>

      <body>
        <div id="mainwrapper">

          <div id="secondwrapper">

            <div id="projecthead">
              <div class="backto"><a href="http://treatiesportal.unl.edu/">Back to Treaties Portal page</a></div>


              <div class="mainmenu">
                <!--<xsl:if test="not(/TEI/@xml:id = 'veto.intro')">
                  <a href="index.html">Home</a>
                </xsl:if>-->
                <!--<form action="search" method="get" style="margin-top: 0px;"><input size="20" type="text" name="q" value="Search these treaties" onfocus="this.select()"/><input value="go" type="submit" style="padding: 0px; "/><br/>
    <!-\- edit -\-><a href="searchHelp.html" class="help">Search Help</a></form>-->

              </div>
              <h1>"In order to organize the Government of the Indian Territory. . .": Comparing variants of the 1870 <em>Okmulgee Constitution</em></h1>
              



            </div>

            <div id="content">
              <xsl:apply-templates/>

              <xsl:if test="contains(/TEI[@xml:id], 'veto.pv')">
                <a href="veto.index.html" class="vetoeslink">Back to Presidents' List</a><br clear="all" />
                <a href="veto.table.html" class="vetoeslink">Back to Cumulative Index</a>
                
              </xsl:if>
            </div>



            <div id="footer"> University of Nebraska-Lincoln, <a href="http://cdrh.unl.edu">Center
                for Digital Research in the Humanities</a><br/>
              <a href="http://www.unl.edu/"><img src="images/unl.jpg"/></a>
            </div>
          </div>

        </div>







      </body>


    </html>

  </xsl:template>

  <xsl:template match="teiHeader"/>


  <xsl:template match="letter">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>

  <xsl:template match="hi[@rend='roman']">
    <span class="roman">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="hi[@rend='highlight']">
    <span class="highlight">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="hi[@rend='italics']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>
  
  <xsl:template match="hi[@rend='bold_ital']">
    <strong><em>
      <xsl:apply-templates/>
    </em></strong>
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

 

  <xsl:template match="title">


    <xsl:choose>
      <xsl:when test="@title='a'">
        <xsl:apply-templates/>
      </xsl:when>
      

      <xsl:otherwise>
        <em>
          <xsl:apply-templates/>
        </em>
      </xsl:otherwise>
    </xsl:choose>


  </xsl:template>

  <xsl:template match="body">
    <xsl:apply-templates/>
  </xsl:template>

<!--  <xsl:template match="title[@type='main']">
    <center>
      <b>
        <xsl:apply-templates/>
      </b>
    </center>
  </xsl:template>-->

  <xsl:template match="revisionDesc">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="publicationStmt">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="sourceDesc">
    <!-- hide -->
  </xsl:template>



  <xsl:template match="ref">
    
    <xsl:choose>
      <xsl:when test="@n">
        
        <xsl:choose>
          <xsl:when test="ends-with(@n,'xls')">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@target"/>
              </xsl:attribute>
              <xsl:apply-templates/>
            </a>
            <xsl:text> | </xsl:text>
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@n"/>
              </xsl:attribute>
              <xsl:text>Download Excel File</xsl:text>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <a name="{@target}.ref"/>
            <a href="#{@target}.note">
              <sup>[<xsl:value-of select="@n"/>]</sup>
            </a>
          </xsl:otherwise>
        </xsl:choose>
 
      </xsl:when>

      <xsl:otherwise>
        <!--<xsl:text> </xsl:text>-->
        <xsl:choose>
          <!--<ref target="PV0129.01.pdf">-->
          <xsl:when test="ends-with(@target, 'pdf')">
            <xsl:choose>
              <xsl:when test="starts-with(@target, 'http')">

                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="@target"/>
                    <!--<xsl:text>.html</xsl:text>-->
                  </xsl:attribute>
                  <xsl:apply-templates/>
                </a>
                <img src="images/file_acrobat.gif"/>
              </xsl:when>
              <xsl:otherwise>

                <a>
                  <xsl:attribute name="href">
                    <xsl:text>pdf/</xsl:text>
                    <xsl:value-of select="@target"/>
                    <!--<xsl:text>.html</xsl:text>-->
                  </xsl:attribute>
                  <xsl:apply-templates/>
                </a>
                <img src="images/file_acrobat.gif"/>
              </xsl:otherwise>
            </xsl:choose>

          </xsl:when>
          
          <xsl:when test="starts-with(@target, 'http')">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@target"/>
              </xsl:attribute>
              <xsl:apply-templates/>
            </a>
            <img src="images/offsite.gif"/>
          </xsl:when>
          <xsl:when test="ends-with(@target, 'html')">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@target"/>
              </xsl:attribute>
              <xsl:apply-templates/>
            </a>

          </xsl:when>
         
          <xsl:otherwise>
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@target"/>
                <!--<xsl:text>.html</xsl:text>-->
              </xsl:attribute>
              <xsl:apply-templates/>
            </a>
          </xsl:otherwise>
        </xsl:choose>

      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="pb">

    <span class="page">
      <xsl:if test="preceding::pb">
        <br/>
      </xsl:if>
      <br/>
      <xsl:if test="@n"> &#160;&#160;&#160;<a
          href="images/images.html?n={@n}&amp;ref={//TEI/@xml:id}">
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

  <xsl:template match="figure[@entity]">
    <p>
      <!-- edit -->
      <img src="jpg/{@entity}.jpg"/>
      <xsl:apply-templates/>
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




  <xsl:template match="docAuthor">
    <p>
      <xsl:apply-templates/>
    </p>

  </xsl:template>

  <xsl:template match="lb">
    <xsl:choose>
      <xsl:when test="parent::docAuthor">
        <xsl:text>, </xsl:text>
        <xsl:apply-templates/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates/>
        <br/>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>


  <xsl:template match="milestone[@unit='crosses']">
    <div class="separator"> </div>
  </xsl:template>





  <xsl:template match="head">

    <xsl:choose>
      <xsl:when test="@type='heading'"> </xsl:when>

      <xsl:otherwise>
        <h2>
          <xsl:apply-templates/>
        </h2>

      </xsl:otherwise>

    </xsl:choose>


  </xsl:template>

  <xsl:template match="epigraph">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>

  <xsl:template match="div1 | div2 | div3">
    <xsl:choose>
      <xsl:when test="@xml:id">
        <a>
          <xsl:attribute name="name">
            <xsl:value-of select="@xml:id"/>
          </xsl:attribute> 
        </a>
        <p>
          <xsl:apply-templates/>
          </p>
      </xsl:when>
      
      <xsl:otherwise>
        <p>
          <xsl:apply-templates/>
        </p>
      </xsl:otherwise>
    </xsl:choose>
    
  <!--  <p>
      <xsl:apply-templates/>
    </p>-->
  </xsl:template>


  <xsl:template match="/TEI/text/back/div1/note">
    <p>
      <a>
        <xsl:attribute name="name">
          <xsl:value-of select="@xml:id"/>
          <xsl:text>.note</xsl:text>
        </xsl:attribute>
      </a>
      <!--<xsl:value-of select="@xml:id"/>
      <xsl:text>. </xsl:text>-->
      <xsl:apply-templates/>
      <xsl:text> </xsl:text>
      <a>
        <xsl:attribute name="href"><xsl:text>#</xsl:text><xsl:value-of select="@xml:id"
          /><xsl:text>.ref</xsl:text>
        </xsl:attribute> [back] </a>
    </p>
  </xsl:template>




  <xsl:template match="bibl">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>



  <xsl:template match="list">
    <ul>
      <xsl:apply-templates/>
    </ul>
  </xsl:template>
  <xsl:template match="item">
    <li>
      <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="floatingText">
    <!-- Hide -->
  </xsl:template>

  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="emph">
  <em><xsl:apply-templates/></em></xsl:template>

</xsl:stylesheet>
