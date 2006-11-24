<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!--xsl:output method="html" encoding="iso-8859-1" /-->

<xsl:template match="ERROR">
	<html>
	<head>
		<meta http-equiv="Pragma" content="no-cache"/>
		<meta http-equiv="Expires" content="Mon, 06 Jan 1990 00:00:01 GMT" />
		<style type="text/css">
			a {  text-decoration: none}
		</style>
		<title>SciELO Error</title>	
	</head>
	<body>
		<table cellspacing="0" border="0" cellpadding="7" width="600" align="center">
		<tr>
		<td valign="top" width="20%">
			<a>
				<xsl:attribute name="href">http://<xsl:value-of select="CONTROLINFO/SCIELO_INFO/SERVER"/><xsl:value-of 
					select="CONTROLINFO/SCIELO_INFO/PATH_DATA"/>scielo.php?lng=<xsl:value-of 
					select="CONTROLINFO/LANGUAGE" /></xsl:attribute>
					 
					<img> 
						<xsl:attribute name="src"><xsl:value-of 
							select="CONTROLINFO/SCIELO_INFO/PATH_GENIMG" /><xsl:value-of 
							select="CONTROLINFO/LANGUAGE" />/fbpelogp.gif</xsl:attribute>							
						<xsl:attribute name="border">0</xsl:attribute>
						<xsl:attribute name="alt">Scientific Electronic Library Online</xsl:attribute>							
					</img><br/>
					
				<font size="1">Browse SciELO</font>
			</a>
		</td>
		<td width="80%">

		<xsl:choose>
			<xsl:when test="CONTROLINFO/LANGUAGE='en'">
				<font face="VERDANA" size="3" color="blue">
					<b>SciELO Library Error Detector</b>
				</font><br/><br/>
				<font face="verdana" size="2" color="black">
					<b>Error:&#160;<xsl:value-of select="CODE" /></b><br/>
					pid:&#160;<xsl:value-of select="PID" />
				</font><br/><br/>
				<font face="verdana" size="2" color="#800000">
					Sorry, the requested�title was not found.<br/><br/>Click on the SciELO logo to browse the SciELO Library or use the browser "BACK" button to return to the previous page.<br/><br/>Please feel free to email us your questions, comments or concerns using the link below.
				</font>
			</xsl:when>

			<xsl:when test="CONTROLINFO/LANGUAGE='pt'">
				<font face="VERDANA" size="3" color="blue">
					<b>Detetor de Erros da Biblioteca Scielo</b>
				</font><br/><br/>
				<font face="verdana" size="2" color="black">
					<b>Erro:&#160;<xsl:value-of select="CODE" /></b><br/>
					pid:&#160;<xsl:value-of select="PID" />
				</font><br/><br/>
				<font face="verdana" size="2" color="#800000">
					A revista solicitada n�o foi encontrada.<br/><br/>Clique no logo da SciELO para visualizar a Biblioteca SciELO ou use o bot�o "BACK" do browser para voltar � p�gina anterior.<br/><br/>Por favor envie-nos um email com suas perguntas, coment�rios ou sugest�es usando o link abaixo.				</font>
			</xsl:when>
			
			<xsl:when test="CONTROLINFO/LANGUAGE='es'">
				<font face="VERDANA" size="3" color="blue">
					<b>Detector de Errores de la Biblioteca Scielo</b>
				</font><br/><br/>
				<font face="verdana" size="2" color="black">
					<b>Error:&#160;<xsl:value-of select="CODE" /></b><br/>
					pid:&#160;<xsl:value-of select="PID" />
				</font><br/><br/>
				<font face="verdana" size="2" color="#800000">
					La revista solicitada no fue encontrada.<br/><br/>Clique en el logo de SciELO para revisar la Biblioteca SciELO o use el bot�n "BACK" del visualizador para volver a la p�gina anterior.<br/><br/>Agradecer�amos que nos enviaran emails con cualquier pregunta, comentario o sugerencia usando el link que aparece a continuaci�n.
				</font>
			</xsl:when>
		</xsl:choose>
		
		</td>
		</tr>
		</table><br/>
		<center>
		<a>
			<xsl:attribute name="href">mailto:<xsl:value-of select="EMAIL" /></xsl:attribute>
			<img>
				<xsl:attribute name="src"><xsl:value-of 
					select="CONTROLINFO/SCIELO_INFO/PATH_GENIMG" /><xsl:value-of 
					select="CONTROLINFO/LANGUAGE" />/e-mailt.gif</xsl:attribute>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="alt"><xsl:value-of select="EMAIL" /></xsl:attribute>
			</img>
		</a>
		</center>
</body>
</html>

</xsl:template>

</xsl:stylesheet>