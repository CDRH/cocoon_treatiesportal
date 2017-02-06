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
        <title>Johnson revisited: An extension of the Guide to American Indian Documents in the Congressional Serial Set: 1817-1899</title>
        <link rel="stylesheet" type="text/css" href="css/treaties.css"/>

        <script type="text/javascript">
          <![CDATA[
 
   var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-43328306-1']);
  _gaq.push(['_trackPageview']);
 
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();


          ]]>
        </script>
        <!--<base href="http://treatiesportal.unl.edu/serialset/" />-->
      </head>

      <body>
        <div id="mainwrapper">

          <div id="secondwrapper">

            <div id="projecthead">
              <div class="backto" style="text-align: right;
                margin: -10px -20px 10px 0;
                padding: 0;"><a style="display: inline;
                background-color: #844c4a;
                color:  #fff;
                padding: 5px;
                text-decoration: none;
                font-weight: bold;" href="http://treatiesportal.unl.edu/">Back to Treaties Portal page</a></div>

              <div class="mainmenu">

              </div>
              <h1>Johnson revisited: An extension of the <em>Guide to American Indian Documents in the Congressional Serial Set: 1817-1899</em></h1>

            </div>

            <div id="content">
              <xsl:apply-templates/>

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
  
  <xsl:template match="quote">
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

  <xsl:template match="hi[@rend='italics'] | term | hi[@rend='italic'] | foreign">
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
  
  <xsl:template match="hi[@rend='sup']">
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
        <a name="{@target}.ref"/>
        <a href="#{@target}.note">
          <sup>[<xsl:value-of select="@n"/>]</sup>
        </a>
 
      </xsl:when>

      <xsl:otherwise>
        <xsl:choose>
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
          
          <xsl:when test="ends-with(@target, '.xlsx')">
            <a>
              <xsl:attribute name="href">
                <xsl:text>excel/</xsl:text>
                <xsl:value-of select="@target"/>
                <!--<xsl:text>.xls</xsl:text>-->
              </xsl:attribute>
              <xsl:value-of select="."/><xsl:text> (Download Excel File)</xsl:text>
            </a>
          </xsl:when>
         
          <xsl:otherwise>
            <a>
              <xsl:attribute name="href">
                <xsl:text>excel/</xsl:text>
                <xsl:value-of select="@target"/>
                <!--<xsl:text>.xls</xsl:text>-->
              </xsl:attribute>
              <xsl:value-of select="."/><xsl:text> (Download Excel File)</xsl:text>
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
    <xsl:choose>
      <xsl:when test="@rend='center'">
        <td class="center">
          <xsl:apply-templates/>
        </td>
      </xsl:when>
      <xsl:otherwise>
        <td>
          <xsl:apply-templates/>
        </td>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>

  <xsl:template match="figure">
    <div class="graphic">
      <!-- edit -->
      <img src="images/{@facs}"/>
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
      <xsl:otherwise><xsl:apply-templates/>
        <br/></xsl:otherwise>
      
    </xsl:choose>
    
  </xsl:template>
    

 <!-- </xsl:template>

  <xsl:template match="docAuthor::c:docAuthor">
    <xsl:text>, </xsl:text>
    <xsl:apply-templates/>

  </xsl:template>-->


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


  <xsl:template match="note">
    
    <xsl:if test="ancestor::back">
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
    </xsl:if>
    
  </xsl:template>




  <xsl:template match="bibl">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>



  <xsl:template match="list">
    
    
    <xsl:choose>
      <xsl:when test="@type='numbered'">
        <div class="indent">
          <xsl:apply-templates/>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <ul>
          <xsl:apply-templates/>
        </ul>
      
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
   
    
  <xsl:template match="item">
    <xsl:choose>
      <xsl:when test="parent::list/@type='numbered'">
        <p><xsl:apply-templates/></p>
      </xsl:when>
      <xsl:otherwise>
        <li>
          <xsl:apply-templates/>
        </li>
      </xsl:otherwise>
    </xsl:choose>

    
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
  
  <xsl:template match="seg">
    <xsl:choose>
      <xsl:when test="@type='character'">
        <span class="character"><xsl:apply-templates/></span>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
