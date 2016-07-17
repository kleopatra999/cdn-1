<?xml version="1.0" encoding="ASCII"?><!--This file was created automatically by html2xhtml--><!--from the HTML stylesheets.--><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:d="http://docbook.org/ns/docbook"
xmlns:exsl="http://exslt.org/common" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="exsl d" version="1.0">

<xsl:output method="xml" encoding="UTF-8" indent="no"/>

<!-- ********************************************************************

     This file is part of the XSL DocBook Stylesheet distribution.
     See ../README or http://cdn.docbook.org/release/xsl/current/ for
     copyright and other information.

     ******************************************************************** -->

<!-- ==================================================================== -->

<xsl:include href="../VERSION.xsl"/>
<xsl:include href="param.xsl"/>
<xsl:include href="../lib/lib.xsl"/>
<xsl:include href="../common/l10n.xsl"/>
<xsl:include href="../common/common.xsl"/>
<xsl:include href="../common/utility.xsl"/>
<xsl:include href="../common/labels.xsl"/>
<xsl:include href="../common/titles.xsl"/>
<xsl:include href="../common/subtitles.xsl"/>
<xsl:include href="../common/gentext.xsl"/>
<xsl:include href="../common/targets.xsl"/>
<xsl:include href="../common/olink.xsl"/>
<xsl:include href="../common/pi.xsl"/>
<xsl:include href="autotoc.xsl"/>
<xsl:include href="autoidx.xsl"/>
<xsl:include href="lists.xsl"/>
<xsl:include href="callout.xsl"/>
<xsl:include href="verbatim.xsl"/>
<xsl:include href="graphics.xsl"/>
<xsl:include href="xref.xsl"/>
<xsl:include href="formal.xsl"/>
<xsl:include href="table.xsl"/>
<xsl:include href="htmltbl.xsl"/>
<xsl:include href="sections.xsl"/>
<xsl:include href="inline.xsl"/>
<xsl:include href="footnote.xsl"/>
<xsl:include href="html.xsl"/>
<xsl:include href="its.xsl"/>
<xsl:include href="info.xsl"/>
<xsl:include href="keywords.xsl"/>
<xsl:include href="division.xsl"/>
<xsl:include href="toc.xsl"/>
<xsl:include href="index.xsl"/>
<xsl:include href="refentry.xsl"/>
<xsl:include href="math.xsl"/>
<xsl:include href="admon.xsl"/>
<xsl:include href="component.xsl"/>
<xsl:include href="biblio.xsl"/>
<xsl:include href="biblio-iso690.xsl"/>
<xsl:include href="glossary.xsl"/>
<xsl:include href="block.xsl"/>
<xsl:include href="task.xsl"/>
<xsl:include href="qandaset.xsl"/>
<xsl:include href="synop.xsl"/>
<xsl:include href="titlepage.xsl"/>
<xsl:include href="titlepage.templates.xsl"/>
<xsl:include href="pi.xsl"/>
<xsl:include href="ebnf.xsl"/>
<xsl:include href="chunker.xsl"/>
<xsl:include href="html-rtf.xsl"/>
<xsl:include href="annotations.xsl"/>
<xsl:include href="../common/addns.xsl"/>
<xsl:include href="publishers.xsl"/>

<xsl:param name="stylesheet.result.type" select="'xhtml'"/>
<xsl:param name="htmlhelp.output" select="0"/>

<!-- ==================================================================== -->

<xsl:key name="id" match="*" use="@id|@xml:id"/>
<xsl:key name="gid" match="*" use="generate-id()"/>

<!-- ==================================================================== -->

<xsl:template match="*">
  <xsl:message>
    <xsl:text>Element </xsl:text>
    <xsl:value-of select="local-name(.)"/>
    <xsl:text> in namespace '</xsl:text>
    <xsl:value-of select="namespace-uri(.)"/>
    <xsl:text>' encountered</xsl:text>
    <xsl:if test="parent::*">
      <xsl:text> in </xsl:text>
      <xsl:value-of select="name(parent::*)"/>
    </xsl:if>
    <xsl:text>, but no template matches.</xsl:text>
  </xsl:message>

  <span style="color: red">
    <xsl:text>&lt;</xsl:text>
    <xsl:value-of select="name(.)"/>
    <xsl:text>&gt;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>&lt;/</xsl:text>
    <xsl:value-of select="name(.)"/>
    <xsl:text>&gt;</xsl:text>
  </span>
</xsl:template>

<xsl:template match="text()">
  <xsl:value-of select="."/>
</xsl:template>

<xsl:template name="body.attributes"><xslo:if xmlns:xslo="http://www.w3.org/1999/XSL/Transform" test="starts-with($writing.mode, 'rl')"><xslo:attribute name="dir">rtl</xslo:attribute></xslo:if>
<!-- no apply-templates; make it empty except for dir for rtl-->
</xsl:template>

<xsl:template name="head.content.base">
  <xsl:param name="node" select="."/>
  <base href="{$html.base}"/>
</xsl:template>

<xsl:template name="head.content.abstract">
  <xsl:param name="node" select="."/>
  <xsl:variable name="info" select="(d:articleinfo     |d:bookinfo     |d:prefaceinfo     |d:chapterinfo     |d:appendixinfo     |d:sectioninfo     |d:sect1info     |d:sect2info     |d:sect3info     |d:sect4info     |d:sect5info     |d:referenceinfo     |d:refentryinfo     |d:partinfo     |d:info     |d:docinfo)[1]"/>
  <xsl:if test="$info and $info/d:abstract">
    <meta name="description">
      <xsl:attribute name="content">
        <xsl:for-each select="$info/d:abstract[1]/*">
          <xsl:value-of select="normalize-space(.)"/>
          <xsl:if test="position() &lt; last()">
            <xsl:text> </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </xsl:attribute>
    </meta>
  </xsl:if>
</xsl:template>

<xsl:template name="head.content.link.made">
  <xsl:param name="node" select="."/>
  
  <link rev="made" href="{$link.mailto.url}"/>
</xsl:template>

<xsl:template name="head.content.generator">
  <xsl:param name="node" select="."/>
  <meta name="generator" content="DocBook {$DistroTitle} V{$VERSION}"/>
</xsl:template>

<xsl:template name="head.content.style">
  <xsl:param name="node" select="."/>
  <style type="text/css"><xsl:text>
body { background-image: url('</xsl:text>
<xsl:value-of select="$draft.watermark.image"/><xsl:text>');
       background-repeat: no-repeat;
       background-position: top left;
       /* The following properties make the watermark "fixed" on the page. */
       /* I think that's just a bit too distracting for the reader... */
       /* background-attachment: fixed; */
       /* background-position: center center; */
     }</xsl:text>
    </style>
</xsl:template>

<xsl:template name="head.content">
  <xsl:param name="node" select="."/>
  <xsl:param name="title">
    <xsl:apply-templates select="$node" mode="object.title.markup.textonly"/>
  </xsl:param>

  <xsl:call-template name="user.head.title">
    <xsl:with-param name="title" select="$title"/>
    <xsl:with-param name="node" select="$node"/>
  </xsl:call-template>

  <xsl:if test="$html.base != ''">
    <xsl:call-template name="head.content.base">
      <xsl:with-param name="node" select="$node"/>
    </xsl:call-template>
  </xsl:if>

  <!-- Insert links to CSS files or insert literal style elements -->
  <xsl:call-template name="generate.css"/>

  <xsl:if test="$html.stylesheet != ''">
    <xsl:call-template name="output.html.stylesheets">
      <xsl:with-param name="stylesheets" select="normalize-space($html.stylesheet)"/>
    </xsl:call-template>
  </xsl:if>

  <xsl:if test="$html.script != ''">
    <xsl:call-template name="output.html.scripts">
      <xsl:with-param name="scripts" select="normalize-space($html.script)"/>
    </xsl:call-template>
  </xsl:if>

  <xsl:if test="$link.mailto.url != ''">
    <xsl:call-template name="head.content.link.made">
      <xsl:with-param name="node" select="$node"/>
    </xsl:call-template>
  </xsl:if>

  <xsl:call-template name="head.content.generator">
    <xsl:with-param name="node" select="$node"/>
  </xsl:call-template>

  <xsl:if test="$generate.meta.abstract != 0">
    <xsl:call-template name="head.content.abstract">
      <xsl:with-param name="node" select="$node"/>
    </xsl:call-template>
  </xsl:if>

  <xsl:if test="($draft.mode = 'yes' or                 ($draft.mode = 'maybe' and                 ancestor-or-self::*[@status][1]/@status = 'draft'))                 and $draft.watermark.image != ''">
    <xsl:call-template name="head.content.style">
      <xsl:with-param name="node" select="$node"/>
    </xsl:call-template>
  </xsl:if>
  <xsl:apply-templates select="." mode="head.keywords.content"/>
</xsl:template>

<xsl:template name="output.html.stylesheets">
  <xsl:param name="stylesheets" select="''"/>

  <xsl:choose>
    <xsl:when test="contains($stylesheets, ' ')">
      <xsl:variable name="css.filename" select="substring-before($stylesheets, ' ')"/>

      <xsl:call-template name="make.css.link">
        <xsl:with-param name="css.filename" select="$css.filename"/>
      </xsl:call-template>

      <xsl:call-template name="output.html.stylesheets">
        <xsl:with-param name="stylesheets" select="substring-after($stylesheets, ' ')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$stylesheets != ''">
      <xsl:call-template name="make.css.link">
        <xsl:with-param name="css.filename" select="$stylesheets"/>
      </xsl:call-template>
    </xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template name="output.html.scripts">
  <xsl:param name="scripts" select="''"/>

  <xsl:choose>
    <xsl:when test="contains($scripts, ' ')">
      <xsl:variable name="script.filename" select="substring-before($scripts, ' ')"/>

      <xsl:call-template name="make.script.link">
        <xsl:with-param name="script.filename" select="$script.filename"/>
      </xsl:call-template>

      <xsl:call-template name="output.html.scripts">
        <xsl:with-param name="scripts" select="substring-after($scripts, ' ')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$scripts != ''">
      <xsl:call-template name="make.script.link">
        <xsl:with-param name="script.filename" select="$scripts"/>
      </xsl:call-template>
    </xsl:when>
  </xsl:choose>
</xsl:template>

<!-- ============================================================ -->

<xsl:template match="*" mode="head.keywords.content">
  <xsl:apply-templates select="d:chapterinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:appendixinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:prefaceinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:bookinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:setinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:articleinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:artheader/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sect1info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sect2info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sect3info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sect4info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sect5info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:sectioninfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:refsect1info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:refsect2info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:refsect3info/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:bibliographyinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:glossaryinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:indexinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:refentryinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:partinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:referenceinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:docinfo/d:keywordset" mode="html.header"/>
  <xsl:apply-templates select="d:info/d:keywordset" mode="html.header"/>

  <xsl:if test="$inherit.keywords != 0                 and parent::*">
    <xsl:apply-templates select="parent::*" mode="head.keywords.content"/>
  </xsl:if>
</xsl:template>

<!-- ============================================================ -->

<xsl:template name="system.head.content">
  <xsl:param name="node" select="."/>

  <!-- FIXME: When chunking, only the annotations actually used
              in this chunk should be referenced. I don't think it
              does any harm to reference them all, but it adds
              unnecessary bloat to each chunk. -->
  <xsl:if test="$annotation.support != 0 and //d:annotation">
    <xsl:call-template name="add.annotation.links"/>
    <script type="text/javascript">
      <xsl:text>
// Create PopupWindow objects</xsl:text>
      <xsl:for-each select="//d:annotation">
        <xsl:text>
var popup_</xsl:text>
        <xsl:value-of select="generate-id(.)"/>
        <xsl:text> = new PopupWindow("popup-</xsl:text>
        <xsl:value-of select="generate-id(.)"/>
        <xsl:text>");
</xsl:text>
        <xsl:text>popup_</xsl:text>
        <xsl:value-of select="generate-id(.)"/>
        <xsl:text>.offsetY = 15;
</xsl:text>
        <xsl:text>popup_</xsl:text>
        <xsl:value-of select="generate-id(.)"/>
        <xsl:text>.autoHide();
</xsl:text>
      </xsl:for-each>
    </script>

    <style type="text/css">
      <xsl:value-of select="$annotation.css"/>
    </style>
  </xsl:if>

  <!-- system.head.content is like user.head.content, except that
       it is called before head.content. This is important because it
       means, for example, that <style> elements output by system.head.content
       have a lower CSS precedence than the users stylesheet. -->
</xsl:template>

<!-- ============================================================ -->

<xsl:template name="user.preroot">
  <!-- Pre-root output, can be used to output comments and PIs. -->
  <!-- This must not output any element content! -->
</xsl:template>

<xsl:template name="user.head.title">
  <xsl:param name="node" select="."/>
  <xsl:param name="title"/>

  <title>
    <xsl:copy-of select="$title"/>
  </title>
</xsl:template>

<xsl:template name="user.head.content">
  <xsl:param name="node" select="."/>
</xsl:template>

<xsl:template name="user.header.navigation">
  <xsl:param name="node" select="."/>
  <xsl:param name="prev" select="/d:foo"/>
  <xsl:param name="next" select="/d:foo"/>
  <xsl:param name="nav.context"/>
</xsl:template>

<xsl:template name="user.header.content">
  <xsl:param name="node" select="."/>
</xsl:template>

<xsl:template name="user.footer.content">
  <xsl:param name="node" select="."/>
</xsl:template>

<xsl:template name="user.footer.navigation">
  <xsl:param name="node" select="."/>
  <xsl:param name="prev" select="/d:foo"/>
  <xsl:param name="next" select="/d:foo"/>
  <xsl:param name="nav.context"/>
</xsl:template>

<!-- To use the same namespace-adjusted nodeset everywhere, it should
be created as a global variable here.
Used by docbook.xsl, chunk-common.xsl, chunktoc.xsl, and
chunk-code.xsl; and in $chunk.hierarchy used in chunkfast.xsl -->
<xsl:variable name="with.namespace">
  <xsl:if test="$exsl.node.set.available != 0 and                  namespace-uri(/*) != 'http://docbook.org/ns/docbook'">
      <xsl:apply-templates select="/*" mode="addNS"/>
  </xsl:if>
</xsl:variable>

<xsl:template match="/">
  <!-- * Get a title for current doc so that we let the user -->
  <!-- * know what document we are processing at this point. -->
  <xsl:variable name="doc.title">
    <xsl:call-template name="get.doc.title"/>
  </xsl:variable>
  <xsl:choose>
    <!-- fix namespace if necessary -->
    <xsl:when test="$exsl.node.set.available != 0 and                    namespace-uri(/*) != 'http://docbook.org/ns/docbook'">
      <xsl:call-template name="log.message">
        <xsl:with-param name="level">Note</xsl:with-param>
        <xsl:with-param name="source" select="$doc.title"/>
        <xsl:with-param name="context-desc">
          <xsl:text>namesp. add</xsl:text>
        </xsl:with-param>
        <xsl:with-param name="message">
          <xsl:text>added namespace before processing</xsl:text>
        </xsl:with-param>
      </xsl:call-template>
      <!-- DEBUG: uncomment to save namespace-fixed document.
      <xsl:message>Saving namespace-fixed document.</xsl:message>
      <xsl:call-template name="write.chunk">
        <xsl:with-param name="filename" select="'namespace-fixed.debug.xml'"/>
        <xsl:with-param name="method" select="'xml'"/>
        <xsl:with-param name="content">
          <xsl:copy-of select="exsl:node-set($with.namespace)"/>
        </xsl:with-param>
      </xsl:call-template>
      -->
      <xsl:apply-templates select="exsl:node-set($with.namespace)"/>
    </xsl:when>
    <!-- Can't process unless namespace fixed with exsl node-set()-->
    <xsl:when test="namespace-uri(/*) != 'http://docbook.org/ns/docbook'">
      <xsl:message terminate="yes">
        <xsl:text>Unable to add the namespace from DB4 document,</xsl:text>
        <xsl:text> cannot proceed.</xsl:text>
      </xsl:message>
    </xsl:when>
    <xsl:otherwise>
      <xsl:choose>
        <xsl:when test="$rootid != ''">
          <xsl:choose>
            <xsl:when test="count(key('id',$rootid)) = 0">
              <xsl:message terminate="yes">
                <xsl:text>ID '</xsl:text>
                <xsl:value-of select="$rootid"/>
                <xsl:text>' not found in document.</xsl:text>
              </xsl:message>
            </xsl:when>
            <xsl:otherwise>
              <xsl:if test="$collect.xref.targets = 'yes' or                             $collect.xref.targets = 'only'">
                <xsl:apply-templates select="key('id', $rootid)" mode="collect.targets"/>
              </xsl:if>
              <xsl:if test="$collect.xref.targets != 'only'">
                <xsl:apply-templates select="key('id',$rootid)" mode="process.root"/>
                <xsl:if test="$tex.math.in.alt != ''">
                  <xsl:apply-templates select="key('id',$rootid)" mode="collect.tex.math"/>
                </xsl:if>
              </xsl:if>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="$collect.xref.targets = 'yes' or                         $collect.xref.targets = 'only'">
            <xsl:apply-templates select="/" mode="collect.targets"/>
          </xsl:if>
          <xsl:if test="$collect.xref.targets != 'only'">
            <xsl:apply-templates select="/" mode="process.root"/>
            <xsl:if test="$tex.math.in.alt != ''">
              <xsl:apply-templates select="/" mode="collect.tex.math"/>
            </xsl:if>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="*" mode="process.root">
  <xsl:variable name="doc" select="self::*"/>

  <xsl:call-template name="user.preroot"/>
  <xsl:call-template name="root.messages"/>

  <html>
    <xsl:call-template name="root.attributes"/>
    <head>
      <xsl:call-template name="system.head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
      <xsl:call-template name="head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
      <xsl:call-template name="user.head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
    </head>
    <body>
      <xsl:call-template name="body.attributes"/>
      <xsl:call-template name="user.header.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
      <xsl:apply-templates select="."/>
      <xsl:call-template name="user.footer.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
    </body>
  </html>
  <xsl:value-of select="$html.append"/>
  
  <!-- Generate any css files only once, not once per chunk -->
  <xsl:call-template name="generate.css.files"/>
</xsl:template>

<xsl:template name="root.attributes">
  <!-- customize to add attributes to <html> element  -->
</xsl:template>

<xsl:template name="root.messages">
  <!-- redefine this any way you'd like to output messages -->
  <!-- DO NOT OUTPUT ANYTHING FROM THIS TEMPLATE -->
</xsl:template>

<!-- ==================================================================== -->

<xsl:template name="chunk">
  <xsl:param name="node" select="."/>

  <!-- The default is that we are not chunking... -->
  <xsl:text>0</xsl:text>
</xsl:template>

</xsl:stylesheet>