<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output name="csv-out" method="text" encoding="UTF-8" media-type="text/csv"/>
    
    <xsl:output indent="yes" method="html" encoding="UTF-8"
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    
    <xsl:output name="css-out" indent="no" method="text" encoding="UTF-8" media-type="text/css"/>
    
    <xsl:template match="/">
        <xsl:message>Début de la transformation</xsl:message>
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="semantic.min.css" />
                <link rel="stylesheet" href="style.css" media="all" type="text/css"/>
                <link rel="shortcut icon" href="images/favicon.ico" />
                <link href="http://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet" type="text/css"/>
                <!-- créer le lien vers le css. html est créé à côté du fichier exécutable. css aussi -->
                <title>XML</title>
            </head>
            <body>
                <div class="leaderboard" data-text="Leaderboard">
                    <h1>XML</h1>
                    <h4>Genevieve Bienvenue  &amp;  Alexandre Cavalcante  &amp;  Virginie Poadey</h4>
                </div>
                <div class="ui raised very padded text container segment">
                </div>
                <!--<xsl:apply-templates/>-->
            </body>
        </html>
        
        <xsl:message>Écriture de la CSS</xsl:message>
        <xsl:result-document href="style.css" format="css-out">
            <!--se trouvera pas ds sortie principale. href : enregistrer. chemin relatif/absolu -->
            <!-- format fait référence à name de xsl:output -->			
            <xsl:text>html, body {
	height: 100%;
	width: 100%;
}

.leaderboard {
	width: 100%;
	min-height: 20%;
	background-color: #232323;
}

.leaderboard h1 {
	padding-top: 40px;
	font-family: Cinzel;
	color: #00b5ad;
	text-align: center;
	font-size: 86px;
}

.leaderboard h4 {
	font-family: Cinzel;
	color: #00b5ad;
	text-align: center;
	padding-bottom: 40px;
}

.item .content {
	text-align: justify;
	padding-top: 20px !important;
	padding-bottom: 20px !important;
 	padding-right: 20px !important;
 	padding-left: 20px !important;
}

body {
	background: #333 url(images/footer_lodyas.png) center center;
	background-attachment: fixed;
}

.ui.items > .item > .content > span.header {
	font-family: Cinzel;
	color: #00b5ad;
}

p {
	color: #8a8888;
}

.ui.items > .item .meta {
	color: #5c5a5b;
}

.ui.divided.items>.item {
	border-top: 2px solid #00b5ad;
}

.ui.items>.item a {
	color: #00b5ad;
}

.ui.segment {
	background: rgba(132, 132, 132, 0.3);
}

.ui.segment h2 {
	text-align: center;
	font-family: Cinzel;
	color: #00b5ad;
}

.ui.segment p {
	text-align: justify;
}
			</xsl:text>
        </xsl:result-document>
        
        <xsl:message>Écriture de la CSV</xsl:message>
        <xsl:result-document href="map.csv" format="csv-out">
            <xsl:apply-templates select="/data/periode/accidents/accident/localisation" mode="out_csv"/>
        </xsl:result-document>
    </xsl:template>
    
    <!-- affiche latitude,longitude pour une sortie csv qui marche pour google maps -->
    <xsl:template match="localisation" mode="out_csv">
        <xsl:if test="number(latitude) &gt; 0">
            <xsl:value-of select="adresse"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="replace(latitude, '(\d\d)(\d+)', '$1.$2')"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="replace(longitude, '(\d)(\d+)', '$1.$2')"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>