<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="SCIELO_REGIONAL_DOMAIN" select="//SCIELO_REGIONAL_DOMAIN"/>
	<xsl:variable name="show_toolbox" select="//toolbox"/>
	<xsl:variable name="show_login" select="//show_login"/>
	<xsl:variable name="login_url" select="//loginURL"/>
	<xsl:variable name="logout_url" select="//logoutURL"/>

	<xsl:output method="html" indent="no"/>
	<xsl:include href="file:///home/scielo/www/htdocs/xsl/sci_common.xsl"/>

<xsl:template match="HOMEPAGE">
	<html>
		<head>
			<title>SciELO - Scientific electronic library online</title>
			<meta http-equiv="Pragma" content="no-cache" />
			<meta http-equiv="Expires" content="Mon, 06 Jan 1990 00:00:01 GMT" />
			<link rel="STYLESHEET" type="text/css" href="/css/scielo.css" />
		</head>
		
		<body link="#000080" vlink="#800080" bgcolor="#ffffff">
			<xsl:apply-templates select="CONTROLINFO" />
			<xsl:apply-templates select="SCIELOINFOGROUP" />
		</body>
	</html>
</xsl:template>

<xsl:template match="CONTROLINFO[LANGUAGE='en']">
	<p align="center">
		<a href="http://www.scielo.org">
			<img>
				<xsl:attribute name="alt">Scientific Electronic Library Online</xsl:attribute>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of
					select="SCIELO_INFO/PATH_GENIMG" /><xsl:value-of 
				select="LANGUAGE" />/scielobre.gif</xsl:attribute>
			</img>
		</a><br/>
		<img>
			<xsl:attribute name="src"><xsl:value-of 
				select="SCIELO_INFO/PATH_GENIMG" /><!--xsl:value-of 
				select="LANGUAGE" /-->assinat.gif</xsl:attribute>
			<xsl:attribute name="border">0</xsl:attribute>
		</img>
	</p>
	
	<table border="0">
	<tr>
		<td width="205" valign="top" rowspan="2">


<!--
			Usuarios no SciELO - Botao de Login
		-->
					<xsl:if test="$show_login = 1">
						<xsl:apply-templates select="//USERINFO" mode="box">
							<xsl:with-param name="lang" select="'en'"/>
						</xsl:apply-templates>
					</xsl:if>
					<!--
			Fim: Usuarios no SciELO - Botao de Login
		-->

		
		<a href="http://www.scielo.org">
			<font class="linkado" size="-1">SciELO.org</font>
		</a><br/>

		<!--a> 20050317
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>criteria/scielo_brasil_en.html</xsl:attribute>
				
			<font class="linkado" size="-1">criteria SciELO Brazil</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>comite/comite_en.htm</xsl:attribute>
				
			<font class="linkado" size="-1">SciELO Brazil committee</font>
		</a><br/-->

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>avaliacao/avaliacao_en.htm</xsl:attribute>
				
			<font class="linkado" size="-1">journals evaluation</font>
		</a><br/>&#160;<br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_pt/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">portugu�s</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_es/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">espa�ol</font>
		</a><br/>&#160;<br/>

		<a href="#help">
			<font class="linkado" size="1">help</font>
		</a><br/>

		<a href="#about">
			<font class="linkado" size="-1">about this site</font>
		</a><br/>

		<a href="http://listas.bireme.br/mailman/listinfo/scieloi-l">
			<font class="linkado" size="1">SciELO news</font>
		</a><br/>

		<!-- Removido do Scielo Metodologia -->
		<!--a> 
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>equipe/equipe_i.htm</xsl:attribute>

			<font class="linkado" size="-1">SciELO team</font>
		</a><br/-->

	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">serial browsing</font><br/><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_alphabetic/lng_en/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">alphabetic list</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_subject/lng_en/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">subject list</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=title&amp;fmt=iso.pft&amp;lang=i</xsl:attribute>

			<font class="linkado" size="-1">search form</font>
		</a><br/>
	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">article browsing</font><br/><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=AU&amp;fmt=iso.pft&amp;lang=i</xsl:attribute>

			<font class="linkado" size="-1">author index</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=KW&amp;fmt=iso.pft&amp;lang=i</xsl:attribute>

			<font class="linkado" size="-1">subject index</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;fmt=iso.pft&amp;lang=i</xsl:attribute>

			<font class="linkado" size="-1">search form</font>
		</a><br/>
	</td>    

	<td valign="top" width="205">
		<xsl:if test="ENABLE_STAT_LINK = 1 or ENABLE_CIT_REP_LINK = 1 ">
		<font class="nomodel" color="#800000" size="-1">reports</font><br/><br/>
		</xsl:if>
		<xsl:if test="ENABLE_STAT_LINK = 1">
		<a>
			<xsl:call-template name="AddScieloLink">
				<xsl:with-param name="script">sci_stat</xsl:with-param>   
			</xsl:call-template>
			<font class="linkado" size="-1">site usage</font>
		</a><br/>
		</xsl:if>
		<xsl:if test="ENABLE_CIT_REP_LINK = 1">
		<!--a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER" /><xsl:value-of
				 select="SCIELO_INFO/PATH_DATA" />bib2jcr.htm</xsl:attribute>
			<font class="linkado" size="-1">journal citation</font>
		</a-->
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?lang={LANGUAGE}">
			<font class="linkado" size="-1">journal citation</font>
		</a>
		<br/>
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?xml=http://statbiblio.scielo.br/stat_biblio/xml/16.xml&amp;lang={LANGUAGE}&amp;state=16">
			<font class="linkado" size="-1">co-authors</font>
		</a>
		</xsl:if>
	</td>	
	</tr>
	</table>

<BR/>

	<table width="100%">
		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">

	        
			<a name="explain">&#160;</a>
			<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/>
			<font class="nomodel" size="-1">
				The Scientific Electronic Library Online - SciELO is an electronic library covering a selected collection of Brazilian scientific journals.<br/><br/>The library is an integral part of a project being developed by <a href="http://www.fapesp.br">FAPESP</a> - Funda��o de Amparo � Pesquisa do Estado de S�o Paulo, in partnership with <a href="http://www.bireme.br/bvs/I/ihome.htm">BIREME</a> - the Latin American and Caribbean Center on Health Sciences Information. Since 2002, the Project is also supported by <a href="http://www.cnpq.br">CNPq</a> - Conselho Nacional de Desenvolvimento Cient�fico e Tecnol�gico.<br/><br/>The Project envisages the development of a common methodology for the preparation, storage, dissemination and evaluation of scientific literature in electronic format.<br/><br/>As the project develops, new journal titles are being added in the library collection.
			</font>
		</td>

		<td width="10%">&#160;</td>
		</tr>
		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">
			<br/><br/><br/>
			<a name="about">&#160;</a>
			<font class="negrito" size="-1">about this site&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/><br/>
			<font class="nomodel" size="-1">
				This is the home page of SciELO Brasil Site.<br/><br/>The objective of the site is to implement an electronic virtual library, providing full access to a collection of serial titles, a collection of issues from individual serial titles, as well as to the full text of articles. The access to both serial titles and articles is available via indexes and search forms.<br/><br/>SciELO site is an integral part of the FAPESP/BIREME/CNPq Project and it is an application of the methodology being developed by the project, particularly the Internet Interface module.<br/><br/>The site will be constantly updated both in form and content, according to the project's advancements.<br/><br/>
			</font>
		</td>

		<td width="10%">&#160;</td>
		</tr>

		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">
			<br/><br/><br/>
			<a name="help">&#160;</a>

			<font class="negrito" size="-1">help&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/><br/>
			<font class="nomodel" size="-1">
				SciELO interface provides access to its serials collection via an <i>alphabetic list</i> of titles or a <i>subject list</i> or a <i>search form</i> by word of serial titles, publisher names, city of publication and subject.<br/><br/>The interface also provides access to the full text of articles via <i>author index</i> or <i>subject index</i>, or by a <i>search form</i> on article elements such as author names, words from title, subject, words from the full text and publication year.<br/><br/>Click an hypertext link at the <a href="#top">top</a> to call the corresponding access page.<br/><br/>			</font>

			<br/><br/><br/>
		</td>

		<td width="10%">&#160;</td>
		</tr>
		</table>
	<!-- table width="100%">
		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">
			<br/><br/>			
			<a name="explain">&#160;</a>
			<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/>
			<font class="nomodel" size="-1">
				The Scientific Electronic Library Online - SciELO is an electronic virtual library covering a selected collection of Brazilian scientific journals.<br/><br/>The library is an integral part of a project being developed by <a href="http://www.fapesp.br">FAPESP</a> - Funda��o de Amparo � Pesquisa do Estado de S�o Paulo, in partnership with <a href="http://www.bireme.br/bvs/I/ihome.htm">BIREME</a> - the Latin American and Caribbean Center on Health Sciences Information.<br/><br/>The FAPESP-BIREME Project envisages the development of a common methodology for the preparation, storage, dissemination and evaluation of scientific literature in electronic format.<br/><br/>As the project develops, new journal titles will be added in the library collection.
			</font>
		</td>

		<td width="10%">&#160;</td>
		</tr>
		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">
			<br/><br/><br/>
			<a name="about">&#160;</a>
			<font class="negrito" size="-1">about this site&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/><br/>
			<font class="nomodel" size="-1">
				This is the home page of SciELO Site.<br/><br/>The objective of the site is to implement an electronic virtual library, providing full access to a collection of serial titles, a collection of issues from individual serial titles, as well as to the full text of articles. The access to both serial titles and articles is available via indexes and search forms.<br/><br/>SciELO site is an integral part of the FAPESP-BIREME Project and it is an application of the methodology being developed by the project, particularly the Internet Interface module.<br/><br/>The site will be constantly updated both in form and content, according to the project's advancements.<br/><br/>
			</font>
		</td>

		<td width="10%">&#160;</td>
		</tr>

		<tr>
		<td valign="top" align="right" nowrap="nowrap"  width="20%">
			<br/><br/><br/>
			<a name="help">&#160;</a>

			<font class="negrito" size="-1">help&#160;&#160;&#160;</font>
		</td>

		<td width="70%">
			<br/><br/><br/>
			<font class="nomodel" size="-1">
				SciELO interface provides access to its serials collection via an alphabetic list of titles or a subject index or a search by word of serial titles, publisher names, city of publication and subject.<br/><br/>The interface also provides access to the full text of articles via author index or subject index or a search form on article elements such as author names, words from title, subject and words from the full text.<br/><br/>Click an hypertext link to call the corresponding access page.<br/><br/>
			</font>

			<br/><br/><br/>
		</td>

		<td width="10%">&#160;</td>
		</tr>
		</table -->
</xsl:template>

<xsl:template match="CONTROLINFO[LANGUAGE='pt']">
	<p align="center">
		<a href="http://www.scielo.org/index_p.html">
			<img>
				<xsl:attribute name="alt">Scientific Electronic Library Online</xsl:attribute>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of
					select="SCIELO_INFO/PATH_GENIMG" /><xsl:value-of 
				select="LANGUAGE" />/scielobre.gif</xsl:attribute>
			</img>
		</a><br/>

		<img>
			<xsl:attribute name="src"><xsl:value-of 
				select="SCIELO_INFO/PATH_GENIMG" /><!--xsl:value-of 
				select="LANGUAGE" /-->assinat.gif</xsl:attribute>
			<xsl:attribute name="border">0</xsl:attribute>
		</img>
	</p>

<!-- <p align="center"><font color="red"><b>Aten��o!</b>&#160;Por motivo de manuten��o na rede el�trica<br/>os servidores SciELO n�o estar�o dispon�veis no dia 30/06/2001,<br/>das 14h00 �s 22h00.</font></p> -->

	<table border="0">
	<tr>
	<td width="205" valign="top" rowspan="2">
		<!--font color="#800000" size="2">&#160;</font-->
					<!--
			Usuarios no SciELO - Botao de Login
		-->
					<xsl:if test="$show_toolbox = 1">
						<xsl:apply-templates select="//USERINFO" mode="box">
							<xsl:with-param name="lang" select="'pt'"/>
						</xsl:apply-templates>
					</xsl:if>
					<!--
			Fim: Usuarios no SciELO - Botao de Login
		-->
		<a href="http://www.scielo.org/index_p.html">
			<font class="linkado" size="-1">SciELO.org</font>
		</a><br/>

		<!--a>20050317
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>criteria/scielo_brasil_pt.html</xsl:attribute>

			<font class="linkado" size="-1">crit�rios SciELO Brasil</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>comite/comite_pt.htm</xsl:attribute>

			<font class="linkado" size="-1">comit� SciELO Brasil</font>
		</a><br/-->

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>avaliacao/avaliacao_pt.htm</xsl:attribute>

			<font class="linkado" size="-1">avalia��o de peri�dicos</font>
		</a><br/>&#160;<br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_en/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">english</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_es/nrm_iso</xsl:attribute>
				
			<font class="linkado" size="-1">espa�ol</font>
		</a><br/>&#160;<br/>

		<a href="#help">
			<font class="linkado" size="1">help</font>
		</a><br/>

		<a href="#about">
			<font class="linkado" size="-1">sobre este site</font>
		</a><br/>
		<a href="http://listas.bireme.br/mailman/listinfo/scielo-l">
			<font class="linkado" size="-1">SciELO news</font>
		</a><br/>
		<!-- Removido do Scielo Metodologia -->
		<!--a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>equipe/equipe_p.htm</xsl:attribute>

			<font class="linkado" size="-1">equipe SciELO</font>
		</a><br/-->

	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">peri�dicos</font><br/><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_alphabetic/lng_pt/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">lista alfab�tica</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_subject/lng_pt/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">lista por assunto</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=title&amp;fmt=iso.pft&amp;lang=p</xsl:attribute>
				
			<font class="linkado" size="-1">pesquisa de t�tulos</font>
		</a><br/>
	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">artigos</font><br/><br/>
		
		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=AU&amp;fmt=iso.pft&amp;lang=p</xsl:attribute>

			<font class="linkado" size="-1">�ndice de autores</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=KW&amp;fmt=iso.pft&amp;lang=p</xsl:attribute>

			<font class="linkado" size="-1">�ndice de assuntos</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;fmt=iso.pft&amp;lang=p</xsl:attribute>

			<font class="linkado" size="-1">pesquisa de artigos</font>
		</a><br/>
	</td>

	<td valign="top" width="205">
		<xsl:if test="ENABLE_STAT_LINK = 1 or ENABLE_CIT_REP_LINK = 1 ">
		<font class="nomodel" color="#800000" size="-1">relat�rios</font><br/><br/>
		</xsl:if>

		<xsl:if test="ENABLE_STAT_LINK = 1">
		<a>
			<xsl:call-template name="AddScieloLink">
				<xsl:with-param name="script">sci_stat</xsl:with-param>   
			</xsl:call-template>
			<font class="linkado" size="-1">uso do site</font>
		</a><br/>
		</xsl:if>

		<xsl:if test="ENABLE_CIT_REP_LINK = 1">
		<!--a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER" /><xsl:value-of
				 select="SCIELO_INFO/PATH_DATA" />bib2jcrp.htm</xsl:attribute>
			<font class="linkado" size="-1">cita��es de revistas</font>
		</a-->
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?lang={LANGUAGE}">
			<font class="linkado" size="-1">cita��es de revistas</font>
		</a>
		<br/>
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?xml=http://statbiblio.scielo.br/stat_biblio/xml/16.xml&amp;lang={LANGUAGE}&amp;state=16">
			<font class="linkado" size="-1">co-autoria</font>
		</a>
		</xsl:if>
	</td>
	</tr>
	</table>

<BR/>

	<table border="0" width="100%">
	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<a name="explain">&#160;</a>
			<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
	</td>

	<td width="70%"><br/><br/><font class="nomodel" size="-1">
		A Scientific Electronic Library Online - SciELO � uma biblioteca eletr�nica que abrange uma cole��o selecionada de peri�dicos cient�ficos brasileiros.<br/><br/>A SciELO � o resultado de um projeto de pesquisa da <a href="http://www.fapesp.br">FAPESP</a> - Funda��o de Amparo � Pesquisa do Estado de S�o Paulo, em parceria com a <a href="http://www.bireme.br">BIREME</a> - Centro Latino-Americano e do Caribe de Informa��o em Ci�ncias da Sa�de. A partir de 2002, o Projeto conta com o apoio do <a href="http://www.cnpq.br">CNPq</a> - Conselho Nacional de Desenvolvimento Cient�fico e Tecnol�gico.<br/><br/>O Projeto tem por objetivo o desenvolvimento de uma metodologia comum para a prepara��o, armazenamento, dissemina��o e avalia��o da produ��o cient�fica em formato eletr�nico.<br/><br/>Com o avan�o das atividades do projeto, novos t�tulos de peri�dicos est�o sendo incorporados � cole��o da biblioteca.<br/><br/></font></td><td width="10%">&#160; 
	</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="about">&#160;</a>
		<font class="negrito" size="-1">sobre este site&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			Esta � a home page do site SciELO Brasil.<br/><br/>O objetivo deste site � implementar uma biblioteca eletr�nica que possa proporcionar um amplo acesso a cole��es de peri�dicos como um todo, aos fasc�culos de cada t�tulo de peri�dico, assim como aos textos completos dos artigos. O acesso aos t�tulos dos peri�dicos e aos artigos pode ser feito atrav�s de �ndices e de formul�rios de busca.<br/><br/>O site da SciELO � parte do Projeto FAPESP/BIREME/CNPq e um dos produtos da aplica��o da metodologia para prepara��o de publica��es eletr�nicas em desenvolvimento, especialmente o m�dulo de interface Internet.<br/><br/>Este site � constantemente atualizado tanto no seu formato como no seu conte�do, de acordo com os avan�os e os resultados do projeto.<br/>
		</font><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>

	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="help">&#160;</a>
		<font class="negrito" size="-1">ajuda&#160;&#160;&#160;</font>
	</td>

	<td width="70%"><br/><br/><br/>
		<font class="nomodel" size="-1">
			A interface SciELO proporciona acesso � sua cole��o de peri�dicos atrav�s de uma <i>lista alfab�tica</i> de t�tulos, ou por meio de uma <i>lista de assuntos</i>, ou ainda atrav�s de um m�dulo de <i>pesquisa de t�tulos</i> dos peri�dicos, por assunto, pelos nomes das institui��es publicadoras e pelo local de publica��o.<br/><br/>A interface tamb�m propicia acesso aos textos completos dos artigos atrav�s de um <i>�ndice de autor</i> e um <i>�ndice de assuntos</i>, ou por meio de um formul�rio de <i>pesquisa de artigos</i>, que busca os elementos que o comp�em, tais como autor, palavras do t�tulo, assunto, palavras do texto e ano de publica��o.<br/><br/>Clique nas op��es marcadas com links no <a href="#top">topo</a> da p�gina para ter acesso �s p�ginas correspondentes.<br/></font><br/><br/><br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	</table>

	<!-- table border="0" width="100%">
	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/>
		<a name="explain">&#160;</a>
			<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
	</td>

	<td width="70%"><br/><br/><font class="nomodel" size="-1">
		A Scientific Electronic Library Online - SciELO � uma biblioteca virtual que abrange uma cole��o selecionada de peri�dicos cient�ficos brasileiros.<br/><br/>A SciELO � a aplica��o de um projeto de pesquisa da Funda��o de Amparo � Pesquisa do Estado de S�o Paulo - <a href="http://www.fapesp.br">FAPESP</a>, em parceria com o Centro Latino-Americano e do Caribe de Informa��o em Ci�ncias da Sa�de - <a href="http://www.bireme.br">BIREME</a>.<br/><br/>O Projeto FAPESP/BIREME tem por objetivo o desenvolvimento de uma metodologia comum para a prepara��o, armazenamento, dissemina��o e avalia��o da produ��o cient�fica em formato eletr�nico.<br/><br/>Com o avan�o das atividades do projeto, novos t�tulos de peri�dicos ser�o incorporados � cole��o da biblioteca.<br/><br/></font></td><td width="10%">&#160; 
	</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="about">&#160;</a>
		<font class="negrito" size="-1">sobre este site&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			Esta � a home page do site SciELO.<br/><br/>O objetivo deste site � implementar uma biblioteca eletr�nica que possa proporcionar um amplo acesso a cole��es de peri�dicos como um todo, aos fasc�culos de cada t�tulo de peri�dico, assim como aos textos completos dos artigos. O acesso aos t�tulos dos peri�dicos e aos artigos pode ser feito atrav�s de �ndices e de formul�rios de busca.<br/><br/>O site da SciELO � parte do Projeto FAPESP/BIREME e um dos produtos da aplica��o da metodologia para prepara��o de publica��es eletr�nicas em desenvolvimento, especialmente o m�dulo de interface Internet.<br/><br/>Este site � constantemente atualizado tanto no seu formato como no seu conte�do, de acordo com os avan�os e os resultados do projeto.<br/>
		</font><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>

	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="help">&#160;</a>
		<font class="negrito" size="-1">help&#160;&#160;&#160;</font>
	</td>

	<td width="70%"><br/><br/><br/>
		<font class="nomodel" size="-1">
			A interface SciELO proporciona acesso � sua cole��o de peri�dicos atrav�s de uma lista alfab�tica de t�tulos, ou por meio de um �ndice de assuntos, ou ainda atrav�s de um m�dulo de busca por palavras do t�tulo dos peri�dicos, pelos nomes das institui��es publicadoras, pelo local de publica��o e por assunto.<br/><br/>A interface tamb�m propicia acesso aos textos completos dos artigos atrav�s de �ndices de autor e de assunto, ou por meio de um formul�rio de busca dos elementos que comp�em um artigo, tais como autor, palavras do t�tulo, assunto e palavras do texto.<br/><br/>Clique nas op��es marcadas com links para ter acesso �s p�ginas correspondentes.<br/></font><br/><br/><br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	</table -->
</xsl:template>

<xsl:template match="CONTROLINFO[LANGUAGE='es']">
	<p align="center">
		<a href="http://www.scielo.org/index_e.html">
			<img>
				<xsl:attribute name="alt">Scientific Electronic Library Online</xsl:attribute>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of
					select="SCIELO_INFO/PATH_GENIMG" /><xsl:value-of 
				select="LANGUAGE" />/scielobre.gif</xsl:attribute>
			</img>
		</a><br/>

		<img>
			<xsl:attribute name="src"><xsl:value-of 
				select="SCIELO_INFO/PATH_GENIMG" /><!--xsl:value-of 
				select="LANGUAGE" /-->assinat.gif</xsl:attribute>
			<xsl:attribute name="border">0</xsl:attribute>
		</img>
	</p>

	<!-- <p align="center"><font color="red"><b>Aten��o!</b>&#160;Por motivo de mantenimiento en la red el�ctrica<br/>los servidores SciELO no estar�n disponibles a partir de<br/>las 14:00hs hasta las 22:00hs del 30/06/2001.</font></p> -->

	<table border="0">
	<tr>
	<td width="205" valign="top" rowspan="2">
		<!--font color="#800000" size="2">&#160;</font-->
					<!--
			Usuarios no SciELO - Botao de Login
		-->
					<xsl:if test="$show_toolbox = 1">
						<xsl:apply-templates select="//USERINFO" mode="box">
							<xsl:with-param name="lang" select="'es'"/>
						</xsl:apply-templates>
					</xsl:if>
					<!--
			Fim: Usuarios no SciELO - Botao de Login
		-->
		<a href="http://www.scielo.org/index_e.html">
			<font class="linkado" size="-1">SciELO.org</font>
		</a><br/>

		<!--a> 20050317
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>criteria/scielo_brasil_es.html</xsl:attribute>

			<font class="linkado" size="-1">criterios SciELO Brasil</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>comite/comite_es.htm</xsl:attribute>

			<font class="linkado" size="-1">comit� SciELO Brasil</font>
		</a><br/-->

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>avaliacao/avaliacao_es.htm</xsl:attribute>

			<font class="linkado" size="-1">evaluaci�n de periodicos</font>
		</a><br/>&#160;<br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_en/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">english</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_home/lng_pt/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">portugu�s</font>
		</a><br/>&#160;<br/>

		<a href="#help">
			<font class="linkado" size="1">ayuda</font>
		</a><br/>

		<a href="#about">
			<font class="linkado" size="-1">acerca deste sitio</font>
		</a><br/>

		<a href="http://listas.bireme.br/mailman/listinfo/scieloe-l">
			<font class="linkado" size="-1">SciELO news</font>
		</a><br/>
		<!-- Removido do Scielo Metodologia -->
		<!--a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>equipe/equipe_e.htm</xsl:attribute>

			<font class="linkado" size="-1">equipo SciELO</font>
		</a><br/-->
	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">seriadas</font><br/><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_alphabetic/lng_es/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">lista alfab�tica</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA"/>scielo.php/script_sci_subject/lng_es/nrm_iso</xsl:attribute>

			<font class="linkado" size="-1">lista por materia</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=title&amp;fmt=iso.pft&amp;lang=e</xsl:attribute>

			<font class="linkado" size="-1">b�squeda de t�tulos</font>
		</a><br/>
	</td>

	<td width="205" valign="top">
		<font class="nomodel" color="#800000" size="-1">art�culos</font><br/><br/>
		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=AU&amp;fmt=iso.pft&amp;lang=e</xsl:attribute>

			<font class="linkado" size="-1">�ndice de autores</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;index=KW&amp;fmt=iso.pft&amp;lang=e</xsl:attribute>

			<font class="linkado" size="-1">�ndice de materia</font>
		</a><br/>

		<a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER"/><xsl:value-of 
				select="SCIELO_INFO/PATH_WXIS"/><xsl:value-of 
				select="SCIELO_INFO/PATH_DATA_IAH"/>?IsisScript=<xsl:value-of 
				select="SCIELO_INFO/PATH_CGI_IAH"/>iah.xis&amp;base=article^dlibrary&amp;fmt=iso.pft&amp;lang=e</xsl:attribute>

			<font class="linkado" size="-1">b�squeda de art�culos</font>
		</a><br/>
	</td>

	<td valign="top" width="205">
		<xsl:if test="ENABLE_STAT_LINK = 1 or ENABLE_CIT_REP_LINK = 1 ">
		<font class="nomodel" color="#800000" size="-1">informes</font><br/><br/>
		</xsl:if>

		<xsl:if test="ENABLE_STAT_LINK = 1">
		<a>
			<xsl:call-template name="AddScieloLink">
				<xsl:with-param name="script">sci_stat</xsl:with-param>   
			</xsl:call-template>
			<font class="linkado" size="-1">uso del sitio</font>
		</a><br/>
		</xsl:if>

		<xsl:if test="ENABLE_CIT_REP_LINK = 1">
		<!--a>
			<xsl:attribute name="href">http://<xsl:value-of select="SCIELO_INFO/SERVER" /><xsl:value-of
				 select="SCIELO_INFO/PATH_DATA" />bib2jcre.htm</xsl:attribute>
			<font class="linkado" size="-1">citas de revistas</font>
		</a-->
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?lang={LANGUAGE}">
			<font class="linkado" size="-1">citas de revistas</font>
		</a>
		<br/>
		<a href="http://statbiblio.scielo.br/stat_biblio/index.php?xml=http://statbiblio.scielo.br/stat_biblio/xml/16.xml&amp;lang={LANGUAGE}&amp;state=16">
			<font class="linkado" size="-1">co-autoria</font>
		</a>
		</xsl:if>
	</td>
	</tr>
	</table>

<BR/>

	<table border="0" width="100%">
	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">

		<a name="explain">&#160;</a>
		<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/>
		<font class="nomodel" size="-1">
			La Scientific Electronic Library Online - SciELO es una biblioteca electr�nica que abarca una colecci�n seleccionada de revistas cient�ficas Brasile�as. <br/><br/>La biblioteca es resultado de un proyecto de investigaci�n de la <a href="http://www.fapesp.br">FAPESP</a> - Funda��o de Amparo � Pesquisa do Estado de S�o Paulo, en colaboraci�n con <a href="http://www.bireme.br/bvs/E/ehome.htm">BIREME</a> - Centro Latinoamericano y del Caribe de Informaci�n en Ciencias de la Salud. A partir de 2002, el Proyecto conta con el apoyo del <a href="http://www.cnpq.br">CNPq</a> - Conselho Nacional de Desenvolvimento Cient�fico e Tecnol�gico.<br/><br/>El proyecto contempla el desarrollo de una metodolog�a com�n para la preparaci�n, almacenamiento, diseminaci�n y evaluaci�n de literatura cient�fica en formato electr�nico.<br/><br/>Con el desarrollo del proyecto, nuevos t�tulos son a�adidos a la colecci�n de la biblioteca. <br/><br/>
		</font>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="about">&#160;</a>
		<font class="negrito" size="-1">acerca de este sitio&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			Esta es la home page del Sitio SciELO Brasil.<br/><br/>El objetivo del sitio es implementar una biblioteca electr�nica, que proporcione acceso completo a una colecci�n de revistas, una colecci�n de n�meros de revistas individuales, as� como al texto completo de los art�culos. El acceso tanto a las revistas como a los art�culos se puede realizar usando �ndices y formularios de b�squeda.<br/><br/>El sitio de SciELO es una parte del Proyecto FAPESP/BIREME/CNPq y es una aplicaci�n de la metodolog�a que el proyecto est� desarrollando, en particular, el m�dulo de Interfaz en Internet.<br/><br/>El sitio ser� constantemente actualizado tanto en forma como en contenido, en la medida en que el proyecto avance.
		</font>
		<br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>

		<a name="help">&#160;</a>
		<font class="negrito" size="-1">ayuda&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			La interfaz SciELO proporciona acceso a su colecci�n de revistas mediante una <i>lista alfab�tica</i> de t�tulos, una <i>lista por materia</i>, o una <i>b�squeda de t�tulos</i> de los peri�dicos, por palabra del t�tulo, materia, nombres de publicadores y ciudad de publicaci�n.<br/><br/>La interfaz tambi�n proporciona acceso al texto completo de los art�culos por medio de un <i>�ndice de autores</i>, un <i>�ndice de materia</i> o un formulario de <i>b�squeda de art�culos</i> por sus elementos, como nombres de autores, palabras del t�tulo, materias, palabras del texto completo y a�o de publicaci�n.<br/><br/>Clique un enlace hipertexto en el <a href="#top">topo</a> de la p�gina para llamar la correspondiente p�gina de acceso.<br/>
		</font><br/><br/><br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>
	</table>

	<!-- table border="0" width="100%">
	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/>
		<a name="explain">&#160;</a>

		<font class="negrito" size="-1">SciELO&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/>
		<font class="nomodel" size="-1">
			La Scientific Electronic Library Online - SciELO es una biblioteca virtual que abarca una colecci�n seleccionada de revistas cient�ficas Brasile�as. <br/><br/>La biblioteca es parte de un proyecto que est� siendo desarrollado por la <a href="http://www.fapesp.org">FAPESP</a> - Funda��o de Amparo � Pesquisa do Estado de S�o Paulo, en colaboraci�n con <a href="http://www.bireme.br/bvs/E/ehome.htm">BIREME</a> - Centro Latinoamericano y del Caribe de Informaci�n en Ciencias de la Salud.<br/><br/>El proyecto FAPESP/BIREME contempla el desarrollo de una metodolog�a com�n para la preparaci�n, almacenamiento, diseminaci�n y evaluaci�n de literatura cient�fica en formato electr�nico.<br/><br/>Con el desarrollo del proyecto, nuevos t�tulos ser�n a�adidos a la colecci�n de la biblioteca. <br/><br/>
		</font>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>
		<a name="about">&#160;</a>
		<font class="negrito" size="-1">acerca de este sitio&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			Esta es la home page del Sitio SciELO.<br/><br/>El objetivo del sitio es implementar una biblioteca electr�nica, que proporcione acceso completo a una colecci�n de revistas, una colecci�n de n�meros de revistas individuales, as� como al texto completo de los art�culos. El acceso tanto a las revistas como a los art�culos se puede realizar usando �ndices y formularios de b�squeda.<br/><br/>El sitio de SciELO es una parte del Proyecto FAPESP/BIREME y es una aplicaci�n de la metodolog�a que el proyecto est� desarrollando, en particular, el m�dulo de Interfase en Internet.<br/><br/>El sitio ser� constantemente actualizado tanto en forma como en contenido, en la medida en que el proyecto avance.
		</font>
		<br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>

	<tr>
	<td align="right" valign="top" width="20%" nowrap="nowrap">
		<br/><br/><br/>

		<a name="help">&#160;</a>
		<font class="negrito" size="-1">ayuda&#160;&#160;&#160;</font>
	</td>

	<td width="70%">
		<br/><br/><br/>
		<font class="nomodel" size="-1">
			La interfase SciELO proporciona acceso a su colecci�n de revistas mediante una lista alfab�tica de t�tulos, un �ndice de materias, o una b�squeda por palabra de las revistas, nombres de publicadores, ciudad de publicaci�n y materia.<br/><br/>La interfase tambi�n proporciona acceso al texto completo de los art�culos por medio de un �ndice de autores, un �ndice de materias o un formulario de b�squeda por los elementos del art�culo como nombres de autores, palabras del t�tulo, materias y palabras del texto completo.<br/><br/>Clique un enlace hipertexto para llamar la correspondiente p�gina de acceso.<br/>
		</font><br/><br/><br/><br/>
	</td>

	<td width="10%">&#160;</td>
	</tr>
	</table -->

</xsl:template>

<xsl:template match="SCIELOINFOGROUP">
	<hr/>
	<p align="center">
		<font class="nomodel" color="#0000A0" size="-1">
			<xsl:value-of select="normalize-space(SITE_NAME)" /><br/>
			<xsl:value-of select="normalize-space(ORGANIZATION)" /><br/>
			<xsl:value-of select="normalize-space(ADDRESS/ADDRESS_1)" /><br/>
			<xsl:value-of 
				select="normalize-space(ADDRESS/ADDRESS_2)" /> - <xsl:value-of 
				select="normalize-space(ADDRESS/COUNTRY)" /><br/>
			Tel.: <xsl:value-of select="normalize-space(PHONE)" /><br/>
			Fax: <xsl:value-of select="normalize-space(FAX)" />
		</font><br/>

		<a class="email">
			<xsl:attribute name="href">mailto:<xsl:value-of select="normalize-space(EMAIL)" /></xsl:attribute>
			<img> 
				<xsl:attribute name="src"><xsl:value-of select="//PATH_GENIMG" />e-mailt.gif</xsl:attribute>
				<xsl:attribute name="border">0</xsl:attribute>
			</img><br/>
			<font color="#0000A0" size="2"><xsl:value-of select="normalize-space(EMAIL)" /></font>
		</a>
	</p>
	<xsl:call-template name="UpdateLog" />
</xsl:template>
	<xsl:template match="USERINFO" mode="box">
		<xsl:param name="lang"/>
		<xsl:variable name="STATUS" select="@status"/>
		<xsl:if test="$STATUS = 'logout' and $show_login=1">
			<p>
				<a href="http://{$SCIELO_REGIONAL_DOMAIN}/{$login_url}">
					<xsl:choose>
						<xsl:when test="$lang = 'pt'">
							<span>Efetuar Login</span>
						</xsl:when>
						<xsl:when test="$lang = 'en'">
							<span>Login</span>
						</xsl:when>
						<xsl:when test="$lang = 'es'">
							<span>Login</span>
						</xsl:when>
					</xsl:choose>
				</a>
			</p>
		</xsl:if>
		<xsl:if test="$STATUS = 'login'">
			<p>
				<xsl:choose>
					<xsl:when test="$lang = 'pt'">
						Bem Vindo
					</xsl:when>
					<xsl:when test="$lang = 'en'">
						Welcome
					</xsl:when>
					<xsl:when test="$lang = 'es'">
						Bien Vindo
					</xsl:when>
				</xsl:choose>
					: <xsl:value-of select="."/>
			</p>
			<p>
				<a href="http://{$SCIELO_REGIONAL_DOMAIN}/{$logout_url}">
					<xsl:choose>
						<xsl:when test="$lang = 'pt'">
							<span>Sair</span>
						</xsl:when>
						<xsl:when test="$lang = 'en'">
							<span>Logout</span>
						</xsl:when>
						<xsl:when test="$lang = 'es'">
							<span>Salir</span>
						</xsl:when>
					</xsl:choose>
				</a>
			</p>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

