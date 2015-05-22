xquery version "1.0-ml";

import module namespace plugin="http://marklogic.com/extension/plugin"
       at "/MarkLogic/plugin/plugin.xqy";

declare namespace dbl10n="http://docbook.org/localization";
declare namespace l="http://docbook.sourceforge.net/xmlns/l10n/1.0";

declare default function namespace "http://www.w3.org/2005/xpath-functions";

declare option xdmp:mapping "false";

(:~ Map of capabilities implemented by this Plugin.
:
: Required capabilities for all Transformers
: - http://docbook.org/localization
:)

declare function dbl10n:capabilities()
as map:map
{
    let $map := map:map()
    let $_   := map:put($map, "http://docbook.org/localization/cs", xdmp:function(xs:QName("dbl10n:cs")))
    return $map
};

declare function dbl10n:cs()
as element(l:l10n)
{
  let $l10n := document {
<l:l10n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0" language="cs" english-language-name="Czech">

<!--  * This file is generated automatically. -->
<!--  * To submit changes to this file upstream (to the DocBook Project) -->
<!--  * do not submit an edited version of this file. Instead, submit an -->
<!--  * edited version of the source file at the following location: -->
<!--  * -->
<!--  *  https://docbook.svn.sourceforge.net/svnroot/docbook/trunk/gentext/locale/cs.xml -->
<!--  * -->
<!--  * E-mail the edited cs.xml source file to: -->
<!--  * -->
<!--  *  docbook-developers@lists.sourceforge.net -->

<!--  ******************************************************************** -->

<!--  This file is part of the XSL DocBook Stylesheet distribution. -->
<!--  See ../README or http://docbook.sf.net/release/xsl/current/ for -->
<!--  copyright and other information. -->

<!--  ******************************************************************** -->
<!--  In these files, % with a letter is used for a placeholder: -->
<!--    %t is the current element's title -->
<!--    %s is the current element's subtitle (if applicable)-->
<!--    %n is the current element's number label-->
<!--    %p is the current element's page number (if applicable)-->
<!--  ******************************************************************** -->


<l:gentext key="Abstract" text="Abstrakt"/>
<l:gentext key="abstract" text="Abstrakt"/>
<l:gentext key="Acknowledgements" text="Acknowledgements" lang="en"/>
<l:gentext key="acknowledgements" text="Acknowledgements" lang="en"/>
<l:gentext key="Answer" text="Odpověď:"/>
<l:gentext key="answer" text="Odpověď:"/>
<l:gentext key="Appendix" text="Příloha"/>
<l:gentext key="appendix" text="Příloha"/>
<l:gentext key="Article" text="Článek"/>
<l:gentext key="article" text="Článek"/>
<l:gentext key="Author" text="Autor"/>
<l:gentext key="Bibliography" text="Bibliografie"/>
<l:gentext key="bibliography" text="Bibliografie"/>
<l:gentext key="Book" text="Kniha"/>
<l:gentext key="book" text="Kniha"/>
<l:gentext key="CAUTION" text="Výstraha"/>
<l:gentext key="Caution" text="Výstraha"/>
<l:gentext key="caution" text="Výstraha"/>
<l:gentext key="Chapter" text="Kapitola"/>
<l:gentext key="chapter" text="Kapitola"/>
<l:gentext key="Colophon" text="Tiráž"/>
<l:gentext key="colophon" text="Tiráž"/>
<l:gentext key="Copyright" text="Copyright"/>
<l:gentext key="copyright" text="Copyright"/>
<l:gentext key="Dedication" text="Věnování"/>
<l:gentext key="dedication" text="Věnování"/>
<l:gentext key="Edition" text="Vydání"/>
<l:gentext key="edition" text="Vydání"/>
<l:gentext key="Editor" text="Editor" lang="en"/>
<l:gentext key="Equation" text="Rovnice"/>
<l:gentext key="equation" text="Rovnice"/>
<l:gentext key="Example" text="Příklad"/>
<l:gentext key="example" text="Příklad"/>
<l:gentext key="Figure" text="Obrázek"/>
<l:gentext key="figure" text="Obrázek"/>
<l:gentext key="Glossary" text="Slovník"/>
<l:gentext key="glossary" text="Slovník"/>
<l:gentext key="GlossSee" text="Viz"/>
<l:gentext key="glosssee" text="Viz"/>
<l:gentext key="GlossSeeAlso" text="Viz též"/>
<l:gentext key="glossseealso" text="Viz též"/>
<l:gentext key="IMPORTANT" text="Důležité"/>
<l:gentext key="important" text="Důležité"/>
<l:gentext key="Important" text="Důležité"/>
<l:gentext key="Index" text="Rejstřík"/>
<l:gentext key="index" text="Rejstřík"/>
<l:gentext key="ISBN" text="ISBN"/>
<l:gentext key="isbn" text="ISBN"/>
<l:gentext key="LegalNotice" text="Právní doložka"/>
<l:gentext key="legalnotice" text="Právní doložka"/>
<l:gentext key="MsgAud" text="Publikum"/>
<l:gentext key="msgaud" text="Publikum"/>
<l:gentext key="MsgLevel" text="Úroveň"/>
<l:gentext key="msglevel" text="Úroveň"/>
<l:gentext key="MsgOrig" text="Původ"/>
<l:gentext key="msgorig" text="Původ"/>
<l:gentext key="NOTE" text="Poznámka"/>
<l:gentext key="Note" text="Poznámka"/>
<l:gentext key="note" text="Poznámka"/>
<l:gentext key="Part" text="Část"/>
<l:gentext key="part" text="Část"/>
<l:gentext key="Preface" text="Předmluva"/>
<l:gentext key="preface" text="Předmluva"/>
<l:gentext key="Procedure" text="Postup"/>
<l:gentext key="procedure" text="Postup"/>
<l:gentext key="ProductionSet" text="Produkce"/>
<l:gentext key="PubDate" text="Datum vydání"/>
<l:gentext key="pubdate" text="Datum vydání"/>
<l:gentext key="Published" text="Vydáno"/>
<l:gentext key="published" text="Vydáno"/>
<l:gentext key="Publisher" text="Publisher" lang="en"/>
<l:gentext key="Qandadiv" text="Otázky a odpovědi"/>
<l:gentext key="qandadiv" text="Otázky a odpovědi"/>
<l:gentext key="QandASet" text="Frequently Asked Questions" lang="en"/>
<l:gentext key="Question" text="Otázka:"/>
<l:gentext key="question" text="Otázka:"/>
<l:gentext key="RefEntry" text=""/>
<l:gentext key="refentry" text=""/>
<l:gentext key="Reference" text="Odkaz"/>
<l:gentext key="reference" text="Odkaz"/>
<l:gentext key="References" text="References" lang="en"/>
<l:gentext key="RefName" text="Jméno"/>
<l:gentext key="refname" text="Jméno"/>
<l:gentext key="RefSection" text=""/>
<l:gentext key="refsection" text=""/>
<l:gentext key="RefSynopsisDiv" text="Přehled"/>
<l:gentext key="refsynopsisdiv" text="Přehled"/>
<l:gentext key="RevHistory" text="Přehled revizí"/>
<l:gentext key="revhistory" text="Přehled revizí"/>
<l:gentext key="revision" text="Revize"/>
<l:gentext key="Revision" text="Revize"/>
<l:gentext key="sect1" text="Oddíl"/>
<l:gentext key="sect2" text="Oddíl"/>
<l:gentext key="sect3" text="Oddíl"/>
<l:gentext key="sect4" text="Oddíl"/>
<l:gentext key="sect5" text="Oddíl"/>
<l:gentext key="section" text="Oddíl"/>
<l:gentext key="Section" text="Oddíl"/>
<l:gentext key="see" text="Viz"/>
<l:gentext key="See" text="Viz"/>
<l:gentext key="seealso" text="Viz též"/>
<l:gentext key="Seealso" text="Viz též"/>
<l:gentext key="SeeAlso" text="Viz též"/>
<l:gentext key="set" text="Sada"/>
<l:gentext key="Set" text="Sada"/>
<l:gentext key="setindex" text="Rejstřík sady"/>
<l:gentext key="SetIndex" text="Rejstřík sady"/>
<l:gentext key="Sidebar" text="Marginálie"/>
<l:gentext key="sidebar" text="Marginálie"/>
<l:gentext key="step" text="krok"/>
<l:gentext key="Step" text="Krok"/>
<l:gentext key="table" text="Tabulka"/>
<l:gentext key="Table" text="Tabulka"/>
<l:gentext key="task" text="Task" lang="en"/>
<l:gentext key="Task" text="Task" lang="en"/>
<l:gentext key="tip" text="Tip"/>
<l:gentext key="TIP" text="Tip"/>
<l:gentext key="Tip" text="Tip"/>
<l:gentext key="Warning" text="Varování"/>
<l:gentext key="warning" text="Varování"/>
<l:gentext key="WARNING" text="Varování"/>
<l:gentext key="and" text="a"/>
<l:gentext key="by" text=""/>
<l:gentext key="Edited" text="Vydáno"/>
<l:gentext key="edited" text="Vydáno"/>
<l:gentext key="Editedby" text="Sestavil"/>
<l:gentext key="editedby" text="Sestavil"/>
<l:gentext key="in" text="v"/>
<l:gentext key="lastlistcomma" text=""/>
<l:gentext key="listcomma" text=","/>
<l:gentext key="notes" text="Poznámky"/>
<l:gentext key="Notes" text="Poznámky"/>
<l:gentext key="Pgs" text="Str."/>
<l:gentext key="pgs" text="Str."/>
<l:gentext key="Revisedby" text="Revidoval: "/>
<l:gentext key="revisedby" text="Revidoval: "/>
<l:gentext key="TableNotes" text="Poznámky"/>
<l:gentext key="tablenotes" text="Poznámky"/>
<l:gentext key="TableofContents" text="Obsah"/>
<l:gentext key="tableofcontents" text="Obsah"/>
<l:gentext key="unexpectedelementname" text="Neočekávané jméno prvku"/>
<l:gentext key="unsupported" text="nepodporovaný"/>
<l:gentext key="xrefto" text="xref k"/>
<l:gentext key="Authors" text="Autoři"/>
<l:gentext key="copyeditor" text="Korektor"/>
<l:gentext key="graphicdesigner" text="Grafický designér"/>
<l:gentext key="productioneditor" text="Produkce"/>
<l:gentext key="technicaleditor" text="Technický editor"/>
<l:gentext key="translator" text="Překladatel"/>
<l:gentext key="listofequations" text="Seznam rovnic"/>
<l:gentext key="ListofEquations" text="Seznam rovnic"/>
<l:gentext key="ListofExamples" text="Seznam příkladů"/>
<l:gentext key="listofexamples" text="Seznam příkladů"/>
<l:gentext key="ListofFigures" text="Seznam obrázků"/>
<l:gentext key="listoffigures" text="Seznam obrázků"/>
<l:gentext key="ListofProcedures" text="Seznam postupů"/>
<l:gentext key="listofprocedures" text="Seznam postupů"/>
<l:gentext key="listoftables" text="Seznam tabulek"/>
<l:gentext key="ListofTables" text="Seznam tabulek"/>
<l:gentext key="ListofUnknown" text="Seznam neznámého"/>
<l:gentext key="listofunknown" text="Seznam neznámého"/>
<l:gentext key="nav-home" text="Domů"/>
<l:gentext key="nav-next" text="Další"/>
<l:gentext key="nav-next-sibling" text="Rychle dopředu"/>
<l:gentext key="nav-prev" text="Předcházející"/>
<l:gentext key="nav-prev-sibling" text="Rychle zpět"/>
<l:gentext key="nav-up" text="Nahoru"/>
<l:gentext key="nav-toc" text="Obsah"/>
<l:gentext key="Draft" text="Návrh"/>
<l:gentext key="above" text="nad"/>
<l:gentext key="below" text="pod"/>
<l:gentext key="sectioncalled" text="oddíl nazvaný"/>
<l:gentext key="index symbols" text="Symboly"/>
<l:gentext key="writing-mode" text="lr-tb"/>
<l:gentext key="lowercase.alpha" text="aábcčdďeéěfghiíjklmnňoópqrřsštťuúůvwxyýzž"/>
<l:gentext key="uppercase.alpha" text="AÁBCČDĎEÉĚFGHIÍJKLMNŇOÓPQRŘSŠTŤUÚŮVWXYÝZŽ"/>
<l:gentext key="normalize.sort.input" text="aábcčdďeéěfghiíjklmnňoópqrřsštťuúůvwxyýzž"/>
<l:gentext key="normalize.sort.output" text="AÁBCČDĎEÉĚFGHIÍJKLMNŇOÓPQRŘSŠTŤUÚŮVWXYÝZŽ"/>
<l:dingbat key="startquote" text="„"/>
<l:dingbat key="endquote" text="“"/>
<l:dingbat key="nestedstartquote" text="‚"/>
<l:dingbat key="nestedendquote" text="‘"/>
<l:dingbat key="singlestartquote" text="‚"/>
<l:dingbat key="singleendquote" text="‘"/>
<l:dingbat key="bullet" text="•"/>
<l:gentext key="hyphenation-character" text="-" lang="en"/>
<l:gentext key="hyphenation-push-character-count" text="2" lang="en"/>
<l:gentext key="hyphenation-remain-character-count" text="2" lang="en"/>
<l:context name="styles"><l:template name="person-name" text="first-last"/>
</l:context>
<l:context name="title"><l:template name="abstract" text="%t"/>
<l:template name="acknowledgements" text="%t" lang="en"/>
<l:template name="answer" text="%t"/>
<l:template name="appendix" text="Příloha %n. %t"/>
<l:template name="article" text="%t"/>
<l:template name="annotation" text="%t" lang="en"/>
<l:template name="authorblurb" text="%t"/>
<l:template name="bibliodiv" text="%t"/>
<l:template name="biblioentry" text="%t"/>
<l:template name="bibliography" text="%t"/>
<l:template name="bibliolist" text="%t" lang="en"/>
<l:template name="bibliomixed" text="%t"/>
<l:template name="bibliomset" text="%t"/>
<l:template name="biblioset" text="%t"/>
<l:template name="blockquote" text="%t"/>
<l:template name="book" text="%t"/>
<l:template name="calloutlist" text="%t"/>
<l:template name="caution" text="%t"/>
<l:template name="chapter" text="Kapitola %n. %t"/>
<l:template name="colophon" text="%t"/>
<l:template name="dedication" text="%t"/>
<l:template name="equation" text="Rovnice %n. %t"/>
<l:template name="example" text="Příklad %n. %t"/>
<l:template name="figure" text="Obrázek %n. %t"/>
<l:template name="foil" text="%t" lang="en"/>
<l:template name="foilgroup" text="%t" lang="en"/>
<l:template name="formalpara" text="%t"/>
<l:template name="glossary" text="%t"/>
<l:template name="glossdiv" text="%t"/>
<l:template name="glosslist" text="%t" lang="en"/>
<l:template name="glossentry" text="%t" lang="en"/>
<l:template name="important" text="%t"/>
<l:template name="index" text="%t"/>
<l:template name="indexdiv" text="%t"/>
<l:template name="itemizedlist" text="%t"/>
<l:template name="legalnotice" text="%t"/>
<l:template name="listitem" text=""/>
<l:template name="lot" text="%t"/>
<l:template name="msg" text="%t"/>
<l:template name="msgexplan" text="%t"/>
<l:template name="msgmain" text="%t"/>
<l:template name="msgrel" text="%t"/>
<l:template name="msgset" text="%t"/>
<l:template name="msgsub" text="%t"/>
<l:template name="note" text="%t"/>
<l:template name="orderedlist" text="%t"/>
<l:template name="part" text="Část %n. %t"/>
<l:template name="partintro" text="%t"/>
<l:template name="preface" text="%t"/>
<l:template name="procedure" text="%t"/>
<l:template name="procedure.formal" text="Postup %n. %t"/>
<l:template name="productionset" text="%t"/>
<l:template name="productionset.formal" text="Produkce %n"/>
<l:template name="qandadiv" text="%t"/>
<l:template name="qandaentry" text="%t"/>
<l:template name="qandaset" text="%t"/>
<l:template name="question" text="%t"/>
<l:template name="refentry" text="%t"/>
<l:template name="reference" text="%t"/>
<l:template name="refsection" text="%t"/>
<l:template name="refsect1" text="%t"/>
<l:template name="refsect2" text="%t"/>
<l:template name="refsect3" text="%t"/>
<l:template name="refsynopsisdiv" text="%t"/>
<l:template name="refsynopsisdivinfo" text="%t"/>
<l:template name="segmentedlist" text="%t"/>
<l:template name="set" text="%t"/>
<l:template name="setindex" text="%t"/>
<l:template name="sidebar" text="%t"/>
<l:template name="step" text="%t"/>
<l:template name="table" text="Tabulka %n. %t"/>
<l:template name="task" text="%t" lang="en"/>
<l:template name="tasksummary" text="%t" lang="en"/>
<l:template name="taskprerequisites" text="%t" lang="en"/>
<l:template name="taskrelated" text="%t" lang="en"/>
<l:template name="tip" text="%t"/>
<l:template name="toc" text="%t"/>
<l:template name="variablelist" text="%t"/>
<l:template name="varlistentry" text=""/>
<l:template name="warning" text="%t"/>
</l:context>
<l:context name="title-unnumbered"><l:template name="appendix" text="%t"/>
<l:template name="article/appendix" text="%t" lang="en"/>
<l:template name="bridgehead" text="%t"/>
<l:template name="chapter" text="%t"/>
<l:template name="sect1" text="%t"/>
<l:template name="sect2" text="%t"/>
<l:template name="sect3" text="%t"/>
<l:template name="sect4" text="%t"/>
<l:template name="sect5" text="%t"/>
<l:template name="section" text="%t"/>
<l:template name="simplesect" text="%t"/>
<l:template name="part" text="%t" lang="en"/>
</l:context>
<l:context name="title-numbered"><l:template name="appendix" text="Příloha %n. %t"/>
<l:template name="article/appendix" text="%n. %t" lang="en"/>
<l:template name="bridgehead" text="%n. %t"/>
<l:template name="chapter" text="Kapitola %n. %t"/>
<l:template name="part" text="Část %n. %t"/>
<l:template name="sect1" text="%n. %t"/>
<l:template name="sect2" text="%n. %t"/>
<l:template name="sect3" text="%n. %t"/>
<l:template name="sect4" text="%n. %t"/>
<l:template name="sect5" text="%n. %t"/>
<l:template name="section" text="%n. %t"/>
<l:template name="simplesect" text="%n. %t"/>
</l:context>
<l:context name="subtitle"><l:template name="appendix" text="%s"/>
<l:template name="acknowledgements" text="%s" lang="en"/>
<l:template name="article" text="%s"/>
<l:template name="bibliodiv" text="%s"/>
<l:template name="biblioentry" text="%s"/>
<l:template name="bibliography" text="%s"/>
<l:template name="bibliomixed" text="%s"/>
<l:template name="bibliomset" text="%s"/>
<l:template name="biblioset" text="%s"/>
<l:template name="book" text="%s"/>
<l:template name="chapter" text="%s"/>
<l:template name="colophon" text="%s"/>
<l:template name="dedication" text="%s"/>
<l:template name="glossary" text="%s"/>
<l:template name="glossdiv" text="%s"/>
<l:template name="index" text="%s"/>
<l:template name="indexdiv" text="%s"/>
<l:template name="lot" text="%s"/>
<l:template name="part" text="%s"/>
<l:template name="partintro" text="%s"/>
<l:template name="preface" text="%s"/>
<l:template name="refentry" text="%s"/>
<l:template name="reference" text="%s"/>
<l:template name="refsection" text="%s"/>
<l:template name="refsect1" text="%s"/>
<l:template name="refsect2" text="%s"/>
<l:template name="refsect3" text="%s"/>
<l:template name="refsynopsisdiv" text="%s"/>
<l:template name="sect1" text="%s"/>
<l:template name="sect2" text="%s"/>
<l:template name="sect3" text="%s"/>
<l:template name="sect4" text="%s"/>
<l:template name="sect5" text="%s"/>
<l:template name="section" text="%s"/>
<l:template name="set" text="%s"/>
<l:template name="setindex" text="%s"/>
<l:template name="sidebar" text="%s"/>
<l:template name="simplesect" text="%s"/>
<l:template name="toc" text="%s"/>
</l:context>
<l:context name="xref"><l:template name="abstract" text="%t"/>
<l:template name="acknowledgements" text="%t" lang="en"/>
<l:template name="answer" text="%n"/>
<l:template name="appendix" text="%t"/>
<l:template name="article" text="%t"/>
<l:template name="authorblurb" text="%t"/>
<l:template name="bibliodiv" text="%t"/>
<l:template name="bibliography" text="%t"/>
<l:template name="bibliomset" text="%t"/>
<l:template name="biblioset" text="%t"/>
<l:template name="blockquote" text="%t"/>
<l:template name="book" text="%t"/>
<l:template name="calloutlist" text="%t"/>
<l:template name="caution" text="%t"/>
<l:template name="chapter" text="%t"/>
<l:template name="colophon" text="%t"/>
<l:template name="constraintdef" text="%t"/>
<l:template name="dedication" text="%t"/>
<l:template name="equation" text="%t"/>
<l:template name="example" text="%t"/>
<l:template name="figure" text="%t"/>
<l:template name="foil" text="%t" lang="en"/>
<l:template name="foilgroup" text="%t" lang="en"/>
<l:template name="formalpara" text="%t"/>
<l:template name="glossary" text="%t"/>
<l:template name="glossdiv" text="%t"/>
<l:template name="important" text="%t"/>
<l:template name="index" text="%t"/>
<l:template name="indexdiv" text="%t"/>
<l:template name="itemizedlist" text="%t"/>
<l:template name="legalnotice" text="%t"/>
<l:template name="listitem" text="%n"/>
<l:template name="lot" text="%t"/>
<l:template name="msg" text="%t"/>
<l:template name="msgexplan" text="%t"/>
<l:template name="msgmain" text="%t"/>
<l:template name="msgrel" text="%t"/>
<l:template name="msgset" text="%t"/>
<l:template name="msgsub" text="%t"/>
<l:template name="note" text="%t"/>
<l:template name="orderedlist" text="%t"/>
<l:template name="part" text="%t"/>
<l:template name="partintro" text="%t"/>
<l:template name="preface" text="%t"/>
<l:template name="procedure" text="%t"/>
<l:template name="productionset" text="%t"/>
<l:template name="qandadiv" text="%t"/>
<l:template name="qandaentry" text="%n"/>
<l:template name="qandaset" text="%t"/>
<l:template name="question" text="%n"/>
<l:template name="reference" text="%t"/>
<l:template name="refsynopsisdiv" text="%t"/>
<l:template name="segmentedlist" text="%t"/>
<l:template name="set" text="%t"/>
<l:template name="setindex" text="%t"/>
<l:template name="sidebar" text="%t"/>
<l:template name="table" text="%t"/>
<l:template name="task" text="%t" lang="en"/>
<l:template name="tip" text="%t"/>
<l:template name="toc" text="%t"/>
<l:template name="variablelist" text="%t"/>
<l:template name="varlistentry" text="%n"/>
<l:template name="warning" text="%t"/>
<l:template name="olink.document.citation" text="v %o"/>
<l:template name="olink.page.citation" text=" (strana %p)"/>
<l:template name="page.citation" text=" [%p]"/>
<l:template name="page" text="(strana %p)"/>
<l:template name="docname" text=" v %o"/>
<l:template name="docnamelong" text=" v dokumentu nazvaném %o"/>
<l:template name="pageabbrev" text="(str. %p)"/>
<l:template name="Page" text="Strana %p"/>
<l:template name="bridgehead" text="„%t“"/>
<l:template name="refsection" text="„%t“"/>
<l:template name="refsect1" text="„%t“"/>
<l:template name="refsect2" text="„%t“"/>
<l:template name="refsect3" text="„%t“"/>
<l:template name="sect1" text="„%t“"/>
<l:template name="sect2" text="„%t“"/>
<l:template name="sect3" text="„%t“"/>
<l:template name="sect4" text="„%t“"/>
<l:template name="sect5" text="„%t“"/>
<l:template name="section" text="„%t“"/>
<l:template name="simplesect" text="„%t“"/>
</l:context>
<l:context name="xref-number"><l:template name="answer" text="%n"/>
<l:template name="appendix" text="%n"/>
<l:template name="chapter" text="%n"/>
<l:template name="equation" text="%n"/>
<l:template name="example" text="%n"/>
<l:template name="figure" text="%n"/>
<l:template name="part" text="%n"/>
<l:template name="procedure" text="%n"/>
<l:template name="productionset" text="%n"/>
<l:template name="qandadiv" text="%n"/>
<l:template name="qandaentry" text="%n"/>
<l:template name="question" text="%n"/>
<l:template name="sect1" text="%n"/>
<l:template name="sect2" text="%n"/>
<l:template name="sect3" text="%n"/>
<l:template name="sect4" text="%n"/>
<l:template name="sect5" text="%n"/>
<l:template name="section" text="%n"/>
<l:template name="table" text="%n"/>
</l:context>
<l:context name="xref-number-and-title"><l:template name="appendix" text="%n – „%t“"/>
<l:template name="chapter" text="%n – „%t“"/>
<l:template name="equation" text="%n – „%t“"/>
<l:template name="example" text="%n – „%t“"/>
<l:template name="figure" text="%n – „%t“"/>
<l:template name="part" text="%n – „%t“"/>
<l:template name="procedure" text="%n – „%t“"/>
<l:template name="productionset" text="%n – „%t“"/>
<l:template name="qandadiv" text="%n – „%t“"/>
<l:template name="refsect1" text="„%t“"/>
<l:template name="refsect2" text="„%t“"/>
<l:template name="refsect3" text="„%t“"/>
<l:template name="refsection" text="„%t“"/>
<l:template name="sect1" text="%n – „%t“"/>
<l:template name="sect2" text="%n – „%t“"/>
<l:template name="sect3" text="%n – „%t“"/>
<l:template name="sect4" text="%n – „%t“"/>
<l:template name="sect5" text="%n – „%t“"/>
<l:template name="section" text="%n – „%t“"/>
<l:template name="simplesect" text="%n – „%t“"/>
<l:template name="table" text="%n – „%t“"/>
</l:context>
<l:context name="authorgroup"><l:template name="sep" text=", "/>
<l:template name="sep2" text=" a "/>
<l:template name="seplast" text=" a "/>
</l:context>
<l:context name="glossary"><l:template name="see" text="Viz %t."/>
<l:template name="seealso" text="Viz též %t."/>
<l:template name="seealso-separator" text=", "/>
</l:context>
<l:context name="msgset"><l:template name="MsgAud" text="Publikum: "/>
<l:template name="MsgLevel" text="Úroveň: "/>
<l:template name="MsgOrig" text="Původ: "/>
</l:context>
<l:context name="datetime"><l:template name="format" text="d. B Y"/>
</l:context>
<l:context name="date"><l:template name="format" text="[D01] [MNn,*-3] [Y0001]" lang="en"/>
</l:context>
<l:context name="termdef"><l:template name="prefix" text="[Definition: " lang="en"/>
<l:template name="suffix" text="]" lang="en"/>
</l:context>
<l:context name="datetime-full"><l:template name="January" text="ledna"/>
<l:template name="February" text="února"/>
<l:template name="March" text="března"/>
<l:template name="April" text="dubna"/>
<l:template name="May" text="května"/>
<l:template name="June" text="června"/>
<l:template name="July" text="července"/>
<l:template name="August" text="srpna"/>
<l:template name="September" text="září"/>
<l:template name="October" text="října"/>
<l:template name="November" text="listopadu"/>
<l:template name="December" text="prosince"/>
<l:template name="Monday" text="pondělí"/>
<l:template name="Tuesday" text="úterý"/>
<l:template name="Wednesday" text="středa"/>
<l:template name="Thursday" text="čtvrtek"/>
<l:template name="Friday" text="pátek"/>
<l:template name="Saturday" text="sobota"/>
<l:template name="Sunday" text="neděle"/>
</l:context>
<l:context name="datetime-abbrev"><l:template name="Jan" text="led"/>
<l:template name="Feb" text="úno"/>
<l:template name="Mar" text="bře"/>
<l:template name="Apr" text="dub"/>
<l:template name="May" text="kvě"/>
<l:template name="Jun" text="čer"/>
<l:template name="Jul" text="čnc"/>
<l:template name="Aug" text="srp"/>
<l:template name="Sep" text="zář"/>
<l:template name="Oct" text="řij"/>
<l:template name="Nov" text="lis"/>
<l:template name="Dec" text="pro"/>
<l:template name="Mon" text="po"/>
<l:template name="Tue" text="út"/>
<l:template name="Wed" text="st"/>
<l:template name="Thu" text="čt"/>
<l:template name="Fri" text="pá"/>
<l:template name="Sat" text="so"/>
<l:template name="Sun" text="ne"/>
</l:context>
<l:context name="htmlhelp"><l:template name="langcode" text="0x0405 Czech"/>
</l:context>
<l:context name="keycap"><l:template name="alt" text="Alt" lang="en"/>
<l:template name="backspace" text="⤆" lang="en"/>
<l:template name="command" text="⌘" lang="en"/>
<l:template name="control" text="Ctrl" lang="en"/>
<l:template name="delete" text="Delete" lang="en"/>
<l:template name="down" text="↓" lang="en"/>
<l:template name="end" text="End" lang="en"/>
<l:template name="enter" text="Enter" lang="en"/>
<l:template name="escape" text="Esc" lang="en"/>
<l:template name="home" text="Home" lang="en"/>
<l:template name="insert" text="Insert" lang="en"/>
<l:template name="left" text="←" lang="en"/>
<l:template name="meta" text="Meta" lang="en"/>
<l:template name="option" text="Option" lang="en"/>
<l:template name="pagedown" text="Page Down" lang="en"/>
<l:template name="pageup" text="Page Up" lang="en"/>
<l:template name="right" text="→" lang="en"/>
<l:template name="shift" text="Shift" lang="en"/>
<l:template name="space" text="Spacebar" lang="en"/>
<l:template name="tab" text="Tab" lang="en"/>
<l:template name="up" text="↑" lang="en"/>
</l:context>
<l:context name="index"><l:template name="term-separator" text=", " lang="en"/>
<l:template name="number-separator" text=", " lang="en"/>
<l:template name="range-separator" text="-" lang="en"/>
</l:context>
<l:context name="iso690"><l:template name="lastfirst.sep" text=", "/>
<l:template name="alt.person.two.sep" text=" – "/>
<l:template name="alt.person.last.sep" text=" – "/>
<l:template name="alt.person.more.sep" text=" – "/>
<l:template name="primary.editor" text=" (ed.)"/>
<l:template name="primary.many" text=", et al."/>
<l:template name="primary.sep" text=". "/>
<l:template name="submaintitle.sep" text=": "/>
<l:template name="title.sep" text=". "/>
<l:template name="othertitle.sep" text=", "/>
<l:template name="medium1" text=" ["/>
<l:template name="medium2" text="]"/>
<l:template name="secondary.person.sep" text="; "/>
<l:template name="secondary.sep" text=". "/>
<l:template name="respons.sep" text=". "/>
<l:template name="edition.sep" text=". "/>
<l:template name="edition.serial.sep" text=", "/>
<l:template name="issuing.range" text="-"/>
<l:template name="issuing.div" text=", "/>
<l:template name="issuing.sep" text=". "/>
<l:template name="partnr.sep" text=". "/>
<l:template name="placepubl.sep" text=": "/>
<l:template name="publyear.sep" text=", "/>
<l:template name="pubinfo.sep" text=". "/>
<l:template name="spec.pubinfo.sep" text=", "/>
<l:template name="upd.sep" text=", "/>
<l:template name="datecit1" text=" [cit. "/>
<l:template name="datecit2" text="]"/>
<l:template name="extent.sep" text=". "/>
<l:template name="locs.sep" text=", "/>
<l:template name="location.sep" text=". "/>
<l:template name="serie.sep" text=". "/>
<l:template name="notice.sep" text=". "/>
<l:template name="access" text="Dostupné "/>
<l:template name="acctoo" text="Dostupné také "/>
<l:template name="onwww" text="na World Wide Web"/>
<l:template name="oninet" text="na Internetu"/>
<l:template name="access.end" text=": "/>
<l:template name="link1" text="&lt;"/>
<l:template name="link2" text="&gt;"/>
<l:template name="access.sep" text=". "/>
<l:template name="isbn" text="ISBN "/>
<l:template name="issn" text="ISSN "/>
<l:template name="stdnum.sep" text=". "/>
<l:template name="patcountry.sep" text=". "/>
<l:template name="pattype.sep" text=", "/>
<l:template name="patnum.sep" text=". "/>
<l:template name="patdate.sep" text=". "/>
</l:context><l:letters><l:l i="-1"/>
<l:l i="0">Symboly</l:l>
<l:l i="1">A</l:l>
<l:l i="1">a</l:l>
<l:l i="1">Á</l:l>
<l:l i="1">á</l:l>
<l:l i="2">B</l:l>
<l:l i="2">b</l:l>
<l:l i="3">C</l:l>
<l:l i="3">c</l:l>
<l:l i="4">Č</l:l>
<l:l i="4">č</l:l>
<l:l i="5">D</l:l>
<l:l i="5">d</l:l>
<l:l i="5">Ď</l:l>
<l:l i="5">ď</l:l>
<l:l i="7">E</l:l>
<l:l i="7">e</l:l>
<l:l i="7">É</l:l>
<l:l i="7">é</l:l>
<l:l i="7">Ě</l:l>
<l:l i="7">ě</l:l>
<l:l i="7">Ë</l:l>
<l:l i="7">ë</l:l>
<l:l i="8">F</l:l>
<l:l i="8">f</l:l>
<l:l i="9">G</l:l>
<l:l i="9">g</l:l>
<l:l i="10">H</l:l>
<l:l i="10">h</l:l>
<l:l i="11">Ch</l:l>
<l:l i="11">ch</l:l>
<l:l i="11">cH</l:l>
<l:l i="11">CH</l:l>
<l:l i="12">I</l:l>
<l:l i="12">i</l:l>
<l:l i="12">Í</l:l>
<l:l i="12">í</l:l>
<l:l i="13">J</l:l>
<l:l i="13">j</l:l>
<l:l i="14">K</l:l>
<l:l i="14">k</l:l>
<l:l i="15">L</l:l>
<l:l i="15">l</l:l>
<l:l i="16">M</l:l>
<l:l i="16">m</l:l>
<l:l i="17">N</l:l>
<l:l i="17">n</l:l>
<l:l i="17">Ň</l:l>
<l:l i="17">ň</l:l>
<l:l i="19">O</l:l>
<l:l i="19">o</l:l>
<l:l i="19">Ó</l:l>
<l:l i="19">ó</l:l>
<l:l i="19">Ö</l:l>
<l:l i="19">ö</l:l>
<l:l i="20">P</l:l>
<l:l i="20">p</l:l>
<l:l i="21">Q</l:l>
<l:l i="21">q</l:l>
<l:l i="22">R</l:l>
<l:l i="22">r</l:l>
<l:l i="23">Ř</l:l>
<l:l i="23">ř</l:l>
<l:l i="24">S</l:l>
<l:l i="24">s</l:l>
<l:l i="25">Š</l:l>
<l:l i="25">š</l:l>
<l:l i="26">T</l:l>
<l:l i="26">t</l:l>
<l:l i="26">Ť</l:l>
<l:l i="26">ť</l:l>
<l:l i="28">U</l:l>
<l:l i="28">u</l:l>
<l:l i="28">Ú</l:l>
<l:l i="28">ú</l:l>
<l:l i="28">Ů</l:l>
<l:l i="28">ů</l:l>
<l:l i="28">Ü</l:l>
<l:l i="28">ü</l:l>
<l:l i="29">V</l:l>
<l:l i="29">v</l:l>
<l:l i="30">W</l:l>
<l:l i="30">w</l:l>
<l:l i="31">X</l:l>
<l:l i="31">x</l:l>
<l:l i="32">Y</l:l>
<l:l i="32">y</l:l>
<l:l i="32">Ý</l:l>
<l:l i="32">ý</l:l>
<l:l i="33">Z</l:l>
<l:l i="33">z</l:l>
<l:l i="34">Ž</l:l>
<l:l i="34">ž</l:l>
</l:letters>
</l:l10n>
}
return
  $l10n/l:l10n
};

(:~ ----------------Main, for registration---------------- :)

( xdmp:log("Register docbook/cs.xqy"),
 plugin:register(dbl10n:capabilities(),"cs.xqy"))
