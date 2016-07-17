<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:ng="http://docbook.org/docbook-ng"
                xmlns:db="http://docbook.org/ns/docbook"
                exclude-result-prefixes="exsl"
                version='1.0'>

  <xsl:import href="../html/docbook.xsl"/>
  <xsl:import href="../html/manifest.xsl"/>
  <!-- * html-synop.xsl file is generated by build -->
  <xsl:import href="html-synop.xsl"/>
  <xsl:output method="text"
              encoding="UTF-8"
              indent="no"/>
  <!-- ********************************************************************

       This file is part of the XSL DocBook Stylesheet distribution.
       See ../README or http://cdn.docbook.org/release/xsl/current/ for
       copyright and other information.

       ******************************************************************** -->

  <!-- ==================================================================== -->

  <xsl:include href="../common/refentry.xsl"/>
  <xsl:include href="../common/charmap.xsl"/>
  <xsl:include href="param.xsl"/>
  <xsl:include href="utility.xsl"/>
  <xsl:include href="info.xsl"/>
  <xsl:include href="other.xsl"/>
  <xsl:include href="refentry.xsl"/>
  <xsl:include href="block.xsl"/>
  <xsl:include href="inline.xsl"/>
  <xsl:include href="synop.xsl"/>
  <xsl:include href="lists.xsl"/>
  <xsl:include href="endnotes.xsl"/>
  <xsl:include href="table.xsl"/>
  <xsl:include href="pi.xsl"/>

  <!-- * we rename the following just to avoid using params with "man" -->
  <!-- * prefixes in the table.xsl stylesheet (because that stylesheet -->
  <!-- * can potentially be reused for more than just man output) -->
  <xsl:param name="tbl.font.headings" select="$man.font.table.headings"/>
  <xsl:param name="tbl.font.title" select="$man.font.table.title"/>

  <xsl:param name="stylesheet.result.type" select="'manpages'"/>

  <!-- ==================================================================== -->

<xsl:template match="/">
  <!-- * Get a title for current doc so that we let the user -->
  <!-- * know what document we are processing at this point. -->
  <xsl:variable name="doc.title">
   <xsl:call-template name="get.doc.title"/>
  </xsl:variable>
  <xsl:choose>
    <!-- fix namespace if necessary -->
    <xsl:when test="$exsl.node.set.available != 0 and 
                  namespace-uri(/*) = 'http://docbook.org/ns/docbook'">
      <xsl:call-template name="log.message">
        <xsl:with-param name="level">Note</xsl:with-param>
        <xsl:with-param name="source" select="$doc.title"/>
        <xsl:with-param name="context-desc">
          <xsl:text>namesp. cut</xsl:text>
        </xsl:with-param>
        <xsl:with-param name="message">
          <xsl:text>stripped namespace before processing</xsl:text>
        </xsl:with-param>
      </xsl:call-template>
      <!-- DEBUG: uncomment to save namespace-fixed document.
      <xsl:message>Saving namespace-fixed document.</xsl:message>
      <xsl:call-template name="write.chunk">
        <xsl:with-param name="filename" select="'namespace-fixed.debug.xml'"/>
        <xsl:with-param name="method" select="'xml'"/>
        <xsl:with-param name="content">
          <xsl:copy-of select="$no.namespace"/>
        </xsl:with-param>
      </xsl:call-template>
      -->
      <xsl:apply-templates select="exsl:node-set($no.namespace)"/>
    </xsl:when>
    <!-- Can't process unless namespace fixed with exsl node-set()-->
    <xsl:when test="namespace-uri(/*) = 'http://docbook.org/ns/docbook'">
      <xsl:message terminate="yes">
        <xsl:text>Unable to strip the namespace from DB5 document,</xsl:text>
        <xsl:text> cannot proceed.</xsl:text>
      </xsl:message>
    </xsl:when>

    <xsl:when test="//*[local-name() = 'refentry']">
      <!-- * Check to see if we have any refentry children in this -->
      <!-- * document; if so, process them. The reason we use -->
      <!-- * local-name()=refentry (instead of just //refentry) to to -->
      <!-- * check for refentry children is because this stylsheet is -->
      <!-- * also post-processed by the stylesheet build to create the -->
      <!-- * manpages/profile-docbook.xsl, and the refentry child check -->
      <!-- * in the profile-docbook.xsl stylesheet won't work if we do -->
      <!-- * a simple //refentry check. -->
      <xsl:apply-templates select="//refentry"/>
      <!-- * if $man.output.manifest.enabled is non-zero, -->
      <!-- * generate a manifest file -->
      <xsl:if test="not($man.output.manifest.enabled = 0)">
        <xsl:call-template name="generate.manifest">
          <xsl:with-param name="filename">
            <xsl:choose>
              <xsl:when test="not($man.output.manifest.filename = '')">
                <!-- * If a name for the manifest file is specified, -->
                <!-- * use that name. -->
                <xsl:value-of select="$man.output.manifest.filename"/>
              </xsl:when>
              <xsl:otherwise>
                <!-- * Otherwise, if user has unset -->
                <!-- * $man.output.manifest.filename, default to -->
                <!-- * using "MAN.MANIFEST" as the filename. Because -->
                <!-- * $man.output.manifest.enabled is non-zero and -->
                <!-- * so we must have a filename in order to -->
                <!-- * generate the manifest. -->
                <xsl:text>MAN.MANIFEST</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <!-- * Otherwise, the document does not contain any -->
      <!-- * refentry elements, so log/emit message and stop. -->
      <xsl:call-template name="log.message">
        <xsl:with-param name="level">Erro</xsl:with-param>
        <xsl:with-param name="source" select="$doc.title"/>
        <xsl:with-param name="context-desc">
          <xsl:text> no refentry</xsl:text>
        </xsl:with-param>
        <xsl:with-param name="message">
          <xsl:text>No refentry elements found</xsl:text>
          <xsl:if test="$doc.title != ''">
          <xsl:text> in "</xsl:text>
            <xsl:choose>
              <xsl:when test="string-length($doc.title) &gt; 30">
                <xsl:value-of select="substring($doc.title,1,30)"/>
                <xsl:text>...</xsl:text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$doc.title"/>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:text>"</xsl:text>
          </xsl:if>
          <xsl:text>.</xsl:text>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

  <!-- ============================================================== -->

  <xsl:template match="refentry">
    <xsl:param name="lang">
      <xsl:call-template name="l10n.language"/>
    </xsl:param>
    <!-- * Just use the first refname found as the "name" of the man -->
    <!-- * page (which may different from the "title"...) -->
    <xsl:variable name="first.refname" select="refnamediv[1]/refname[1]"/>

    <xsl:call-template name="root.messages">
      <xsl:with-param name="refname" select="$first.refname"/>
    </xsl:call-template>

    <!-- * Because there are several times when we need to check *info of -->
    <!-- * each refentry and its ancestors, we get those and store the -->
    <!-- * data from them as a node-set in memory. -->

    <!-- * Make a node-set with contents of *info -->
    <xsl:variable name="get.info"
                  select="ancestor-or-self::*/*[substring(local-name(),
                          string-length(local-name()) - 3) = 'info']"
                  />
    <xsl:variable name="info" select="exsl:node-set($get.info)"/>

    <!-- * The get.refentry.metadata template is in -->
    <!-- * ../common/refentry.xsl. It looks for metadata in $info -->
    <!-- * and in various other places and then puts it into a form -->
    <!-- * that's easier for us to digest. -->
    <xsl:variable name="get.refentry.metadata">
      <xsl:call-template name="get.refentry.metadata">
        <xsl:with-param name="refname" select="$first.refname"/>
        <xsl:with-param name="info" select="$info"/>
        <xsl:with-param name="prefs" select="$refentry.metadata.prefs"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="refentry.metadata" select="exsl:node-set($get.refentry.metadata)"/>

    <!-- * Assemble the various parts into a complete page, then store into -->
    <!-- * $manpage.contents so that we can manipluate them further. -->
    <xsl:variable name="manpage.contents">
      <!-- * preprocessor invocation (need for legacy AT&T troff use) -->
      <!-- * this tells troff to pre-process the page through tbl(1) -->
      <!-- * (groff can figure it out automatically, but AT&T troff can't) -->
      <xsl:text>'\" t&#10;</xsl:text>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * top.comment = commented-out section at top of roff source -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:call-template name="top.comment">
        <xsl:with-param name="info"       select="$info"/>
        <xsl:with-param name="date"       select="$refentry.metadata/date"/>
        <xsl:with-param name="title"      select="$refentry.metadata/title"/>
        <xsl:with-param name="manual"     select="$refentry.metadata/manual"/>
        <xsl:with-param name="source"     select="$refentry.metadata/source"/>
        <xsl:with-param name="refname"    select="$first.refname"/>
      </xsl:call-template>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * TH.title.line = title line in header/footer of man page -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:call-template name="TH.title.line">
        <!-- * .TH TITLE  section  extra1  extra2  extra3 -->
        <!-- *  -->
        <!-- * According to the man(7) man page: -->
        <!-- *  -->
        <!-- * extra1 = date,   "the date of the last revision" -->
        <!-- * extra2 = source, "the source of the command" -->
        <!-- * extra3 = manual, "the title of the manual -->
        <!-- *                  (e.g., Linux Programmer's Manual)" -->
        <!-- * -->
        <!-- * So, we end up with: -->
        <!-- *  -->
        <!-- * .TH TITLE  section  date  source  manual -->
        <!-- * -->
        <xsl:with-param name="title"   select="$refentry.metadata/title"/>
        <xsl:with-param name="section" select="$refentry.metadata/section"/>
        <xsl:with-param name="extra1"  select="$refentry.metadata/date"/>
        <xsl:with-param name="extra2"  select="$refentry.metadata/source"/>
        <xsl:with-param name="extra3"  select="$refentry.metadata/manual"/>
      </xsl:call-template>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * (re)define some macros -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:call-template name="define.portability.macros"/>
      <xsl:if test="not($man.output.better.ps.enabled = 0)">
        <xsl:call-template name="define.macros"/>
      </xsl:if>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * Set default hyphenation, justification, indentation, and -->
      <!-- * line-breaking -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:call-template name="set.default.formatting"/>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * Main body of man page -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:text>.\" -----------------------------------------------------------------&#10;</xsl:text>
      <xsl:text>.\" * MAIN CONTENT STARTS HERE *&#10;</xsl:text>
      <xsl:text>.\" -----------------------------------------------------------------&#10;</xsl:text>
      <xsl:apply-templates/>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * AUTHOR section -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:if test="not($man.authors.section.enabled = 0)">
        <xsl:call-template name="author.section">
          <xsl:with-param name="info" select="$info"/>
        </xsl:call-template>
      </xsl:if>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * COPYRIGHT section -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:if test="not($man.copyright.section.enabled = 0)">
        <xsl:call-template name="copyright.section">
          <xsl:with-param name="info" select="$info"/>
        </xsl:call-template>
      </xsl:if>
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <!-- * NOTES list (only if user wants endnotes numbered and/or listed) -->
      <!-- * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
      <xsl:if test="$man.endnotes.list.enabled != 0 or
                    $man.endnotes.are.numbered != 0">
        <xsl:call-template name="endnotes.list"/>
      </xsl:if>
    </xsl:variable> <!-- * end of manpage.contents -->

    <!-- * Prepare the page contents for final output, then store in -->
    <!-- * $manpage.contents.prepared so the we can pass it on to the -->
    <!-- * write.text.chunk() function -->
    <xsl:variable name="manpage.contents.prepared">
      <!-- * "Preparing" the page contents involves, at a minimum, -->
      <!-- * doubling any backslashes found (so they aren't interpreted -->
      <!-- * as roff escapes). -->
      <!-- * -->
      <!-- * If $charmap.enabled is true, "preparing" the page contents also -->
      <!-- * involves applying a character map to convert Unicode symbols and -->
      <!-- * special characters into corresponding roff escape sequences. -->
      <xsl:call-template name="prepare.manpage.contents">
        <xsl:with-param name="content" select="$manpage.contents"/>
      </xsl:call-template>
    </xsl:variable>
    
    <!-- * Write the prepared page contents to disk to create -->
    <!-- * the final man page. -->
    <xsl:call-template name="write.man.file">
      <xsl:with-param name="name" select="$first.refname"/>
      <xsl:with-param name="section" select="$refentry.metadata/section"/>
      <xsl:with-param name="lang" select="$lang"/>
      <xsl:with-param name="content" select="$manpage.contents.prepared"/>
    </xsl:call-template>

    <!-- * Generate "stub" (alias) pages (if any needed) -->
    <xsl:call-template name="write.stubs">
      <xsl:with-param name="first.refname" select="$first.refname"/>
      <xsl:with-param name="section" select="$refentry.metadata/section"/>
      <xsl:with-param name="lang" select="$lang"/>
    </xsl:call-template>

  </xsl:template>

</xsl:stylesheet>
