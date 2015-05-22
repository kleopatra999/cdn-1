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
    let $_   := map:put($map, "http://docbook.org/localization/sr_Latn", xdmp:function(xs:QName("dbl10n:sr_Latn")))
    return $map
};

declare function dbl10n:sr_Latn()
as element(l:l10n)
{
  let $l10n := document {
<l:l10n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0" language="sr_latn" english-language-name="Serbian in Latin script">

<!--  * This file is generated automatically. -->
<!--  * To submit changes to this file upstream (to the DocBook Project) -->
<!--  * do not submit an edited version of this file. Instead, submit an -->
<!--  * edited version of the source file at the following location: -->
<!--  * -->
<!--  *  https://docbook.svn.sourceforge.net/svnroot/docbook/trunk/gentext/locale/sr_Latn.xml -->
<!--  * -->
<!--  * E-mail the edited sr_Latn.xml source file to: -->
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


<l:gentext key="Abstract" text="Sažetak"/>
<l:gentext key="abstract" text="sažetak"/>
<l:gentext key="Acknowledgements" text="Acknowledgements" lang="en"/>
<l:gentext key="acknowledgements" text="Acknowledgements" lang="en"/>
<l:gentext key="Answer" text="O:"/>
<l:gentext key="answer" text="o:"/>
<l:gentext key="Appendix" text="Dodatak"/>
<l:gentext key="appendix" text="dodatak"/>
<l:gentext key="Article" text="Članak"/>
<l:gentext key="article" text="članak"/>
<l:gentext key="Author" text="Autor"/>
<l:gentext key="Bibliography" text="Literatura"/>
<l:gentext key="bibliography" text="literatura"/>
<l:gentext key="Book" text="Knjiga"/>
<l:gentext key="book" text="knjiga"/>
<l:gentext key="CAUTION" text="UPOZORENJE"/>
<l:gentext key="Caution" text="Upozorenje"/>
<l:gentext key="caution" text="upozorenje"/>
<l:gentext key="Chapter" text="Poglavlje"/>
<l:gentext key="chapter" text="poglavlje"/>
<l:gentext key="Colophon" text="Kolofon"/>
<l:gentext key="colophon" text="kolofon"/>
<l:gentext key="Copyright" text="Autorska prava"/>
<l:gentext key="copyright" text="autorska prava"/>
<l:gentext key="Dedication" text="Posveta"/>
<l:gentext key="dedication" text="posveta"/>
<l:gentext key="Edition" text="Izdanje"/>
<l:gentext key="edition" text="izdanje"/>
<l:gentext key="Editor" text="Urednik"/>
<l:gentext key="Equation" text="Jednačina"/>
<l:gentext key="equation" text="jednačina"/>
<l:gentext key="Example" text="Primer"/>
<l:gentext key="example" text="primer"/>
<l:gentext key="Figure" text="Slika"/>
<l:gentext key="figure" text="slika"/>
<l:gentext key="Glossary" text="Rečnik"/>
<l:gentext key="glossary" text="rečnik"/>
<l:gentext key="GlossSee" text="Vidi"/>
<l:gentext key="glosssee" text="vidi"/>
<l:gentext key="GlossSeeAlso" text="Vidi takođe"/>
<l:gentext key="glossseealso" text="vidi takođe"/>
<l:gentext key="IMPORTANT" text="VAŽNO"/>
<l:gentext key="important" text="važno"/>
<l:gentext key="Important" text="Važno"/>
<l:gentext key="Index" text="Indeks"/>
<l:gentext key="index" text="indeks"/>
<l:gentext key="ISBN" text="ISBN"/>
<l:gentext key="isbn" text="ISBN"/>
<l:gentext key="LegalNotice" text="Pravna napomena"/>
<l:gentext key="legalnotice" text="pravna napomena"/>
<l:gentext key="MsgAud" text="Publika"/>
<l:gentext key="msgaud" text="publika"/>
<l:gentext key="MsgLevel" text="Nivo"/>
<l:gentext key="msglevel" text="nivo"/>
<l:gentext key="MsgOrig" text="Izvor"/>
<l:gentext key="msgorig" text="izvor"/>
<l:gentext key="NOTE" text="PRIMEDBA"/>
<l:gentext key="Note" text="Primedba"/>
<l:gentext key="note" text="primedba"/>
<l:gentext key="Part" text="Deo"/>
<l:gentext key="part" text="deo"/>
<l:gentext key="Preface" text="Predgovor"/>
<l:gentext key="preface" text="predgovor"/>
<l:gentext key="Procedure" text="Postupak"/>
<l:gentext key="procedure" text="postupak"/>
<l:gentext key="ProductionSet" text="Produkcija"/>
<l:gentext key="PubDate" text="Datum izdavanja"/>
<l:gentext key="pubdate" text="datum izdavanja"/>
<l:gentext key="Published" text="Izdano"/>
<l:gentext key="published" text="izdano"/>
<l:gentext key="Publisher" text="Izdavač"/>
<l:gentext key="Qandadiv" text="P i O"/>
<l:gentext key="qandadiv" text="p i o"/>
<l:gentext key="QandASet" text="Često postavljana pitanja"/>
<l:gentext key="Question" text="P:"/>
<l:gentext key="question" text="p:"/>
<l:gentext key="RefEntry" text=""/>
<l:gentext key="refentry" text=""/>
<l:gentext key="Reference" text="Referenca"/>
<l:gentext key="reference" text="referenca"/>
<l:gentext key="References" text="Reference"/>
<l:gentext key="RefName" text="Ime"/>
<l:gentext key="refname" text="ime"/>
<l:gentext key="RefSection" text=""/>
<l:gentext key="refsection" text=""/>
<l:gentext key="RefSynopsisDiv" text="Pregled"/>
<l:gentext key="refsynopsisdiv" text="pregled"/>
<l:gentext key="RevHistory" text="Istorija revizija"/>
<l:gentext key="revhistory" text="istorija revizija"/>
<l:gentext key="revision" text="revizija"/>
<l:gentext key="Revision" text="Revizija"/>
<l:gentext key="sect1" text="Odeljak"/>
<l:gentext key="sect2" text="Odeljak"/>
<l:gentext key="sect3" text="Odeljak"/>
<l:gentext key="sect4" text="Odeljak"/>
<l:gentext key="sect5" text="Odeljak"/>
<l:gentext key="section" text="odeljak"/>
<l:gentext key="Section" text="Odeljak"/>
<l:gentext key="see" text="vidi"/>
<l:gentext key="See" text="Vidi"/>
<l:gentext key="seealso" text="vidi takođe"/>
<l:gentext key="Seealso" text="Vidi takođe"/>
<l:gentext key="SeeAlso" text="Vidi takođe"/>
<l:gentext key="set" text="skup"/>
<l:gentext key="Set" text="Skup"/>
<l:gentext key="setindex" text="indeks skupa"/>
<l:gentext key="SetIndex" text="Indeks skupa"/>
<l:gentext key="Sidebar" text="Bočna traka"/>
<l:gentext key="sidebar" text="bočna traka"/>
<l:gentext key="step" text="korak"/>
<l:gentext key="Step" text="Korak"/>
<l:gentext key="table" text="tabela"/>
<l:gentext key="Table" text="Tabela"/>
<l:gentext key="task" text="zadatak"/>
<l:gentext key="Task" text="Zadatak"/>
<l:gentext key="tip" text="savet"/>
<l:gentext key="TIP" text="SAVET"/>
<l:gentext key="Tip" text="Savet"/>
<l:gentext key="Warning" text="Upozorenje"/>
<l:gentext key="warning" text="upozorenje"/>
<l:gentext key="WARNING" text="UPOZORENJE"/>
<l:gentext key="and" text="i"/>
<l:gentext key="by" text="od"/>
<l:gentext key="Edited" text="Uređeno"/>
<l:gentext key="edited" text="uređeno"/>
<l:gentext key="Editedby" text="Uredio(la)"/>
<l:gentext key="editedby" text="Uredio(la)"/>
<l:gentext key="in" text="u"/>
<l:gentext key="lastlistcomma" text=","/>
<l:gentext key="listcomma" text=","/>
<l:gentext key="notes" text="primedbe"/>
<l:gentext key="Notes" text="Primedbe"/>
<l:gentext key="Pgs" text="Str."/>
<l:gentext key="pgs" text="str."/>
<l:gentext key="Revisedby" text="Pregledao(la): "/>
<l:gentext key="revisedby" text="pregledao(la): "/>
<l:gentext key="TableNotes" text="Primedbe"/>
<l:gentext key="tablenotes" text="primedbe"/>
<l:gentext key="TableofContents" text="Sadržaj"/>
<l:gentext key="tableofcontents" text="sadržaj"/>
<l:gentext key="unexpectedelementname" text="neočekivano ime elementa"/>
<l:gentext key="unsupported" text="nije podržano"/>
<l:gentext key="xrefto" text="unakrsna referenca na"/>
<l:gentext key="Authors" text="Autori"/>
<l:gentext key="copyeditor" text="Izdavački urednik"/>
<l:gentext key="graphicdesigner" text="Grafički dizajner"/>
<l:gentext key="productioneditor" text="Izvršni urednik"/>
<l:gentext key="technicaleditor" text="Tehnički urednik"/>
<l:gentext key="translator" text="Prevodilac"/>
<l:gentext key="listofequations" text="spisak jednačina"/>
<l:gentext key="ListofEquations" text="Spisak jednačina"/>
<l:gentext key="ListofExamples" text="Spisak primera"/>
<l:gentext key="listofexamples" text="spisak primera"/>
<l:gentext key="ListofFigures" text="Spisak slika"/>
<l:gentext key="listoffigures" text="spisak slika"/>
<l:gentext key="ListofProcedures" text="Spisak postupaka"/>
<l:gentext key="listofprocedures" text="spisak postupaka"/>
<l:gentext key="listoftables" text="spisak tabela"/>
<l:gentext key="ListofTables" text="Spisak tabela"/>
<l:gentext key="ListofUnknown" text="spisak nepoznatih"/>
<l:gentext key="listofunknown" text="Spisak nepoznatih"/>
<l:gentext key="nav-home" text="Početak"/>
<l:gentext key="nav-next" text="Sledeći"/>
<l:gentext key="nav-next-sibling" text="Brzo napred"/>
<l:gentext key="nav-prev" text="Prethodni"/>
<l:gentext key="nav-prev-sibling" text="Brzo nazad"/>
<l:gentext key="nav-up" text="Vrh"/>
<l:gentext key="nav-toc" text="Sadr."/>
<l:gentext key="Draft" text="Nacrt"/>
<l:gentext key="above" text="iznad"/>
<l:gentext key="below" text="ispod"/>
<l:gentext key="sectioncalled" text="odeljak pod imenom"/>
<l:gentext key="index symbols" text="Simboli"/>
<l:gentext key="writing-mode" text="lr-tb"/>
<l:gentext key="lowercase.alpha" text="abcčćdđefghijklmnopqrsštuvwxyzž"/>
<l:gentext key="uppercase.alpha" text="ABCČĆDĐEFGHIJKLMNOPQRSŠTUVWXYZŽ"/>
<l:gentext key="normalize.sort.input" text="AaÀàÁáÂâÃãÄäÅåĀāĂăĄąǍǎǞǟǠǡǺǻȀȁȂȃȦȧḀḁẚẠạẢảẤấẦầẨẩẪẫẬậẮắẰằẲẳẴẵẶặBbƀƁɓƂƃḂḃḄḅḆḇCcÇçĆćĈĉĊċČčƇƈɕḈḉDdĎďĐđƊɗƋƌǅǲȡɖḊḋḌḍḎḏḐḑḒḓEeÈèÉéÊêËëĒēĔĕĖėĘęĚěȄȅȆȇȨȩḔḕḖḗḘḙḚḛḜḝẸẹẺẻẼẽẾếỀềỂểỄễỆệFfƑƒḞḟGgĜĝĞğĠġĢģƓɠǤǥǦǧǴǵḠḡHhĤĥĦħȞȟɦḢḣḤḥḦḧḨḩḪḫẖIiÌìÍíÎîÏïĨĩĪīĬĭĮįİƗɨǏǐȈȉȊȋḬḭḮḯỈỉỊịJjĴĵǰʝKkĶķƘƙǨǩḰḱḲḳḴḵLlĹĺĻļĽľĿŀŁłƚǈȴɫɬɭḶḷḸḹḺḻḼḽMmɱḾḿṀṁṂṃNnÑñŃńŅņŇňƝɲƞȠǋǸǹȵɳṄṅṆṇṈṉṊṋOoÒòÓóÔôÕõÖöØøŌōŎŏŐőƟƠơǑǒǪǫǬǭǾǿȌȍȎȏȪȫȬȭȮȯȰȱṌṍṎṏṐṑṒṓỌọỎỏỐốỒồỔổỖỗỘộỚớỜờỞởỠỡỢợPpƤƥṔṕṖṗQqʠRrŔŕŖŗŘřȐȑȒȓɼɽɾṘṙṚṛṜṝṞṟSsŚśŜŝŞşŠšȘșʂṠṡṢṣṤṥṦṧṨṩTtŢţŤťŦŧƫƬƭƮʈȚțȶṪṫṬṭṮṯṰṱẗUuÙùÚúÛûÜüŨũŪūŬŭŮůŰűŲųƯưǓǔǕǖǗǘǙǚǛǜȔȕȖȗṲṳṴṵṶṷṸṹṺṻỤụỦủỨứỪừỬửỮữỰựVvƲʋṼṽṾṿWwŴŵẀẁẂẃẄẅẆẇẈẉẘXxẊẋẌẍYyÝýÿŸŶŷƳƴȲȳẎẏẙỲỳỴỵỶỷỸỹZzŹźŻżŽžƵƶȤȥʐʑẐẑẒẓẔẕẕ" lang="en"/>
<l:gentext key="normalize.sort.output" text="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEFFFFFFGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJJJJJJKKKKKKKKKKKKKKLLLLLLLLLLLLLLLLLLLLLLLLLLMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOPPPPPPPPQQQRRRRRRRRRRRRRRRRRRRRRRRSSSSSSSSSSSSSSSSSSSSSSSTTTTTTTTTTTTTTTTTTTTTTTTTUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUVVVVVVVVWWWWWWWWWWWWWWWXXXXXXYYYYYYYYYYYYYYYYYYYYYYYZZZZZZZZZZZZZZZZZZZZZ" lang="en"/>
<l:dingbat key="startquote" text="„"/>
<l:dingbat key="endquote" text="“"/>
<l:dingbat key="nestedstartquote" text="‘"/>
<l:dingbat key="nestedendquote" text="’"/>
<l:dingbat key="singlestartquote" text="‘"/>
<l:dingbat key="singleendquote" text="’"/>
<l:dingbat key="bullet" text="•"/>
<l:gentext key="hyphenation-character" text="-"/>
<l:gentext key="hyphenation-push-character-count" text="2"/>
<l:gentext key="hyphenation-remain-character-count" text="2"/>
<l:context name="styles"><l:template name="person-name" text="ime-prezime"/>
</l:context>
<l:context name="title"><l:template name="abstract" text="%t"/>
<l:template name="acknowledgements" text="%t" lang="en"/>
<l:template name="answer" text="%t"/>
<l:template name="appendix" text="Dodatak %n. %t"/>
<l:template name="article" text="%t"/>
<l:template name="annotation" text="%t" lang="en"/>
<l:template name="authorblurb" text="%t"/>
<l:template name="bibliodiv" text="%t"/>
<l:template name="biblioentry" text="%t"/>
<l:template name="bibliography" text="%t"/>
<l:template name="bibliolist" text="%t"/>
<l:template name="bibliomixed" text="%t"/>
<l:template name="bibliomset" text="%t"/>
<l:template name="biblioset" text="%t"/>
<l:template name="blockquote" text="%t"/>
<l:template name="book" text="%t"/>
<l:template name="calloutlist" text="%t"/>
<l:template name="caution" text="%t"/>
<l:template name="chapter" text="Poglavlje %n. %t"/>
<l:template name="colophon" text="%t"/>
<l:template name="dedication" text="%t"/>
<l:template name="equation" text="Jednačina %n. %t"/>
<l:template name="example" text="Primer %n. %t"/>
<l:template name="figure" text="Slika %n. %t"/>
<l:template name="foil" text="%t"/>
<l:template name="foilgroup" text="%t"/>
<l:template name="formalpara" text="%t"/>
<l:template name="glossary" text="%t"/>
<l:template name="glossdiv" text="%t"/>
<l:template name="glosslist" text="%t"/>
<l:template name="glossentry" text="%t"/>
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
<l:template name="part" text="Deo %n. %t"/>
<l:template name="partintro" text="%t"/>
<l:template name="preface" text="%t"/>
<l:template name="procedure" text="%t"/>
<l:template name="procedure.formal" text="Postupak %n. %t"/>
<l:template name="productionset" text="%t"/>
<l:template name="productionset.formal" text="Produkcija %n"/>
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
<l:template name="table" text="Tabela %n. %t"/>
<l:template name="task" text="%t"/>
<l:template name="tasksummary" text="%t"/>
<l:template name="taskprerequisites" text="%t"/>
<l:template name="taskrelated" text="%t"/>
<l:template name="tip" text="%t"/>
<l:template name="toc" text="%t"/>
<l:template name="variablelist" text="%t"/>
<l:template name="varlistentry" text=""/>
<l:template name="warning" text="%t"/>
</l:context>
<l:context name="title-unnumbered"><l:template name="appendix" text="%t"/>
<l:template name="article/appendix" text="%t"/>
<l:template name="bridgehead" text="%t"/>
<l:template name="chapter" text="%t"/>
<l:template name="sect1" text="%t"/>
<l:template name="sect2" text="%t"/>
<l:template name="sect3" text="%t"/>
<l:template name="sect4" text="%t"/>
<l:template name="sect5" text="%t"/>
<l:template name="section" text="%t"/>
<l:template name="simplesect" text="%t"/>
<l:template name="part" text="%t"/>
</l:context>
<l:context name="title-numbered"><l:template name="appendix" text="Dodatak %n. %t"/>
<l:template name="article/appendix" text="%n. %t"/>
<l:template name="bridgehead" text="%n. %t"/>
<l:template name="chapter" text="Poglavlje %n. %t"/>
<l:template name="part" text="Deo %n. %t"/>
<l:template name="sect1" text="%n. %t"/>
<l:template name="sect2" text="%n. %t"/>
<l:template name="sect3" text="%n. %t"/>
<l:template name="sect4" text="%n. %t"/>
<l:template name="sect5" text="%n. %t"/>
<l:template name="section" text="%n. %t"/>
<l:template name="simplesect" text="%t"/>
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
<l:template name="answer" text="O: %n"/>
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
<l:template name="foil" text="%t"/>
<l:template name="foilgroup" text="%t"/>
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
<l:template name="qandaentry" text="P: %n"/>
<l:template name="qandaset" text="%t"/>
<l:template name="question" text="P: %n"/>
<l:template name="reference" text="%t"/>
<l:template name="refsynopsisdiv" text="%t"/>
<l:template name="segmentedlist" text="%t"/>
<l:template name="set" text="%t"/>
<l:template name="setindex" text="%t"/>
<l:template name="sidebar" text="%t"/>
<l:template name="table" text="%t"/>
<l:template name="task" text="%t"/>
<l:template name="tip" text="%t"/>
<l:template name="toc" text="%t"/>
<l:template name="variablelist" text="%t"/>
<l:template name="varlistentry" text="%n"/>
<l:template name="warning" text="%t"/>
<l:template name="olink.document.citation" text=" u %o"/>
<l:template name="olink.page.citation" text=" (str. %p)"/>
<l:template name="page.citation" text=" [%p]"/>
<l:template name="page" text="(strana %p)"/>
<l:template name="docname" text=" u %o"/>
<l:template name="docnamelong" text=" u dokumentu sa naslovom %o"/>
<l:template name="pageabbrev" text="(str. %p)"/>
<l:template name="Page" text="Strana %p"/>
<l:template name="bridgehead" text="odeljak pod imenom „%t“"/>
<l:template name="refsection" text="odeljak pod imenom „%t“"/>
<l:template name="refsect1" text="odeljak pod imenom „%t“"/>
<l:template name="refsect2" text="odeljak pod imenom „%t“"/>
<l:template name="refsect3" text="odeljak pod imenom „%t“"/>
<l:template name="sect1" text="odeljak pod imenom „%t“"/>
<l:template name="sect2" text="odeljak pod imenom „%t“"/>
<l:template name="sect3" text="odeljak pod imenom „%t“"/>
<l:template name="sect4" text="odeljak pod imenom „%t“"/>
<l:template name="sect5" text="odeljak pod imenom „%t“"/>
<l:template name="section" text="odeljak pod imenom „%t“"/>
<l:template name="simplesect" text="odeljak pod imenom „%t“"/>
</l:context>
<l:context name="xref-number"><l:template name="answer" text="O: %n"/>
<l:template name="appendix" text="Dodatak %n"/>
<l:template name="chapter" text="Poglavlje %n"/>
<l:template name="equation" text="Jednačina %n"/>
<l:template name="example" text="Primer %n"/>
<l:template name="figure" text="Slika %n"/>
<l:template name="part" text="Deo %n"/>
<l:template name="procedure" text="Postupak %n"/>
<l:template name="productionset" text="Produkcija %n"/>
<l:template name="qandadiv" text="P i O %n"/>
<l:template name="qandaentry" text="P: %n"/>
<l:template name="question" text="P: %n"/>
<l:template name="sect1" text="Odeljak %n"/>
<l:template name="sect2" text="Odeljak %n"/>
<l:template name="sect3" text="Odeljak %n"/>
<l:template name="sect4" text="Odeljak %n"/>
<l:template name="sect5" text="Odeljak %n"/>
<l:template name="section" text="Odeljak %n"/>
<l:template name="table" text="Tabela %n"/>
</l:context>
<l:context name="xref-number-and-title"><l:template name="appendix" text="Dodatak %n, %t"/>
<l:template name="chapter" text="Poglavlje %n, %t"/>
<l:template name="equation" text="Jednačina %n, „%t“"/>
<l:template name="example" text="Primer %n, „%t“"/>
<l:template name="figure" text="Slika %n, „%t“"/>
<l:template name="part" text="Deo %n, „%t“"/>
<l:template name="procedure" text="Postupak %n, „%t“"/>
<l:template name="productionset" text="Produkcija %n, „%t“"/>
<l:template name="qandadiv" text="P i O %n, „%t“"/>
<l:template name="refsect1" text="odeljak pod imenom „%t“"/>
<l:template name="refsect2" text="odeljak pod imenom „%t“"/>
<l:template name="refsect3" text="odeljak pod imenom „%t“"/>
<l:template name="refsection" text="odeljak pod imenom „%t“"/>
<l:template name="sect1" text="Odeljak %n, „%t“"/>
<l:template name="sect2" text="Odeljak %n, „%t“"/>
<l:template name="sect3" text="Odeljak %n, „%t“"/>
<l:template name="sect4" text="Odeljak %n, „%t“"/>
<l:template name="sect5" text="Odeljak %n, „%t“"/>
<l:template name="section" text="Odeljak %n, „%t“"/>
<l:template name="simplesect" text="odeljak pod imenom „%t“"/>
<l:template name="table" text="Tabela %n, „%t“"/>
</l:context>
<l:context name="authorgroup"><l:template name="sep" text=", "/>
<l:template name="sep2" text=" i "/>
<l:template name="seplast" text=", i "/>
</l:context>
<l:context name="glossary"><l:template name="see" text="Vidi %t."/>
<l:template name="seealso" text="Vidi takođe %t."/>
<l:template name="seealso-separator" text=", "/>
</l:context>
<l:context name="msgset"><l:template name="MsgAud" text="Publika: "/>
<l:template name="MsgLevel" text="Nivo: "/>
<l:template name="MsgOrig" text="Izvor: "/>
</l:context>
<l:context name="datetime"><l:template name="format" text="d.m.Y."/>
</l:context>
<l:context name="date"><l:template name="format" text="[D01] [MNn,*-3] [Y0001]" lang="en"/>
</l:context>
<l:context name="termdef"><l:template name="prefix" text="[Definicija: "/>
<l:template name="suffix" text="]"/>
</l:context>
<l:context name="datetime-full"><l:template name="January" text="januar"/>
<l:template name="February" text="februar"/>
<l:template name="March" text="mart"/>
<l:template name="April" text="april"/>
<l:template name="May" text="maj"/>
<l:template name="June" text="jun"/>
<l:template name="July" text="jul"/>
<l:template name="August" text="avgust"/>
<l:template name="September" text="septembar"/>
<l:template name="October" text="oktobar"/>
<l:template name="November" text="novembar"/>
<l:template name="December" text="decembar"/>
<l:template name="Monday" text="ponedeljak"/>
<l:template name="Tuesday" text="utorak"/>
<l:template name="Wednesday" text="sreda"/>
<l:template name="Thursday" text="četvrtak"/>
<l:template name="Friday" text="petak"/>
<l:template name="Saturday" text="subota"/>
<l:template name="Sunday" text="nedelja"/>
</l:context>
<l:context name="datetime-abbrev"><l:template name="Jan" text="jan"/>
<l:template name="Feb" text="feb"/>
<l:template name="Mar" text="mar"/>
<l:template name="Apr" text="apr"/>
<l:template name="May" text="maj"/>
<l:template name="Jun" text="jun"/>
<l:template name="Jul" text="jul"/>
<l:template name="Aug" text="avg"/>
<l:template name="Sep" text="sep"/>
<l:template name="Oct" text="okt"/>
<l:template name="Nov" text="nov"/>
<l:template name="Dec" text="dec"/>
<l:template name="Mon" text="pon"/>
<l:template name="Tue" text="uto"/>
<l:template name="Wed" text="sre"/>
<l:template name="Thu" text="čet"/>
<l:template name="Fri" text="pet"/>
<l:template name="Sat" text="sub"/>
<l:template name="Sun" text="ned"/>
</l:context>
<l:context name="htmlhelp"><l:template name="langcode" text="0x081a Serbian (Latin)"/>
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
<l:context name="iso690"><l:template name="lastfirst.sep" text=", " lang="en"/>
<l:template name="alt.person.two.sep" text=" – " lang="en"/>
<l:template name="alt.person.last.sep" text=" – " lang="en"/>
<l:template name="alt.person.more.sep" text=" – " lang="en"/>
<l:template name="primary.editor" text=" (ed.)" lang="en"/>
<l:template name="primary.many" text=", et al." lang="en"/>
<l:template name="primary.sep" text=". " lang="en"/>
<l:template name="submaintitle.sep" text=": " lang="en"/>
<l:template name="title.sep" text=". " lang="en"/>
<l:template name="othertitle.sep" text=", " lang="en"/>
<l:template name="medium1" text=" [" lang="en"/>
<l:template name="medium2" text="]" lang="en"/>
<l:template name="secondary.person.sep" text="; " lang="en"/>
<l:template name="secondary.sep" text=". " lang="en"/>
<l:template name="respons.sep" text=". " lang="en"/>
<l:template name="edition.sep" text=". " lang="en"/>
<l:template name="edition.serial.sep" text=", " lang="en"/>
<l:template name="issuing.range" text="-" lang="en"/>
<l:template name="issuing.div" text=", " lang="en"/>
<l:template name="issuing.sep" text=". " lang="en"/>
<l:template name="partnr.sep" text=". " lang="en"/>
<l:template name="placepubl.sep" text=": " lang="en"/>
<l:template name="publyear.sep" text=", " lang="en"/>
<l:template name="pubinfo.sep" text=". " lang="en"/>
<l:template name="spec.pubinfo.sep" text=", " lang="en"/>
<l:template name="upd.sep" text=", " lang="en"/>
<l:template name="datecit1" text=" [cited " lang="en"/>
<l:template name="datecit2" text="]" lang="en"/>
<l:template name="extent.sep" text=". " lang="en"/>
<l:template name="locs.sep" text=", " lang="en"/>
<l:template name="location.sep" text=". " lang="en"/>
<l:template name="serie.sep" text=". " lang="en"/>
<l:template name="notice.sep" text=". " lang="en"/>
<l:template name="access" text="Available " lang="en"/>
<l:template name="acctoo" text="Also available " lang="en"/>
<l:template name="onwww" text="from World Wide Web" lang="en"/>
<l:template name="oninet" text="from Internet" lang="en"/>
<l:template name="access.end" text=": " lang="en"/>
<l:template name="link1" text="&lt;" lang="en"/>
<l:template name="link2" text="&gt;" lang="en"/>
<l:template name="access.sep" text=". " lang="en"/>
<l:template name="isbn" text="ISBN " lang="en"/>
<l:template name="issn" text="ISSN " lang="en"/>
<l:template name="stdnum.sep" text=". " lang="en"/>
<l:template name="patcountry.sep" text=". " lang="en"/>
<l:template name="pattype.sep" text=", " lang="en"/>
<l:template name="patnum.sep" text=". " lang="en"/>
<l:template name="patdate.sep" text=". " lang="en"/>
</l:context><l:letters><l:l i="-1"/>
<l:l i="0">Simboli</l:l>
<l:l i="1">A</l:l>
<l:l i="1">a</l:l>
<l:l i="2">B</l:l>
<l:l i="2">b</l:l>
<l:l i="3">C</l:l>
<l:l i="3">c</l:l>
<l:l i="4">Č</l:l>
<l:l i="4">č</l:l>
<l:l i="5">Ć</l:l>
<l:l i="5">ć</l:l>
<l:l i="6">D</l:l>
<l:l i="6">d</l:l>
<l:l i="7">DŽ</l:l>
<l:l i="7">Dž</l:l>
<l:l i="7">dž</l:l>
<l:l i="8">Đ</l:l>
<l:l i="8">đ</l:l>
<l:l i="9">E</l:l>
<l:l i="9">e</l:l>
<l:l i="10">F</l:l>
<l:l i="10">f</l:l>
<l:l i="11">G</l:l>
<l:l i="11">g</l:l>
<l:l i="12">H</l:l>
<l:l i="12">h</l:l>
<l:l i="13">I</l:l>
<l:l i="13">i</l:l>
<l:l i="14">J</l:l>
<l:l i="14">j</l:l>
<l:l i="15">K</l:l>
<l:l i="15">k</l:l>
<l:l i="16">L</l:l>
<l:l i="16">l</l:l>
<l:l i="17">LJ</l:l>
<l:l i="17">Lj</l:l>
<l:l i="17">lj</l:l>
<l:l i="18">M</l:l>
<l:l i="18">m</l:l>
<l:l i="19">N</l:l>
<l:l i="19">n</l:l>
<l:l i="20">NJ</l:l>
<l:l i="20">Nj</l:l>
<l:l i="20">nj</l:l>
<l:l i="21">O</l:l>
<l:l i="21">o</l:l>
<l:l i="22">P</l:l>
<l:l i="22">p</l:l>
<l:l i="23">Q</l:l>
<l:l i="23">Q</l:l>
<l:l i="24">R</l:l>
<l:l i="24">r</l:l>
<l:l i="25">S</l:l>
<l:l i="25">s</l:l>
<l:l i="26">Š</l:l>
<l:l i="26">š</l:l>
<l:l i="27">T</l:l>
<l:l i="27">t</l:l>
<l:l i="28">U</l:l>
<l:l i="28">u</l:l>
<l:l i="29">V</l:l>
<l:l i="29">v</l:l>
<l:l i="30">W</l:l>
<l:l i="30">w</l:l>
<l:l i="31">X</l:l>
<l:l i="31">x</l:l>
<l:l i="32">Y</l:l>
<l:l i="32">y</l:l>
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

( xdmp:log("Register docbook/sr_Latn.xqy"),
 plugin:register(dbl10n:capabilities(),"sr_Latn.xqy"))
