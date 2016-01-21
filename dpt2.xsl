<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" version="2.0">

    <!-- ALL_DPT.xsl == pour la transformation XSL pour les graphiques
     GENEVIEVE BIENVENUE, ALEXANDRE CAVALCANTE, VIRGINIE POADEY
     -->

    <!-- Sortie CSV pour les graphiques -->
    <xsl:output name="csv-out" indent="no" method="text" encoding="UTF-8" media-type="text/csv"/>

    <!-- Debut de transformation -->
    <xsl:template match="/">
        <xsl:value-of select="document-uri(.)"/>
        <xsl:apply-templates/>
        <xsl:result-document href="accidents-delits.csv" format="csv-out">
            <xsl:apply-templates mode="csv"/>
        </xsl:result-document>
    </xsl:template>

    <!-- Compte le nombre d'accidents par mois sur l'année 2014 -->
    <xsl:template match="periode[@annee = '2014']" mode="csv">
        <xsl:variable name="dec" select="count(//accident[matches(date,'\d+/12/14')])"/>
        <xsl:value-of select="$dec"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="nov" select="count(//accident[matches(date,'\d+/11/14')])"/>
        <xsl:value-of select="$nov"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="oct" select="count(//accident[matches(date,'\d+/10/14')])"/>
        <xsl:value-of select="$oct"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="sept" select="count(//accident[matches(date,'\d+/9/14')])"/>
        <xsl:value-of select="$sept"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="aout" select="count(//accident[matches(date,'\d+/8/14')])"/>
        <xsl:value-of select="$aout"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jul" select="count(//accident[matches(date,'\d+/7/14')])"/>
        <xsl:value-of select="$jul"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jun" select="count(//accident[matches(date,'\d+/6/14')])"/>
        <xsl:value-of select="$jun"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mai" select="count(//accident[matches(date,'\d+/5/14')])"/>
        <xsl:value-of select="$mai"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="avr" select="count(//accident[matches(date,'\d+/4/14')])"/>
        <xsl:value-of select="$avr"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mars" select="count(//accident[matches(date,'\d+/3/14')])"/>
        <xsl:value-of select="$mars"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="fev" select="count(//accident[matches(date,'\d+/2/14')])"/>
        <xsl:value-of select="$fev"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jan" select="count(//accident[matches(date, '\d+/1/14' )])"/>
        <xsl:value-of select="$jan"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Compte le nombre d'accidents par mois sur l'année 2013 -->
    <xsl:template match="periode[@annee = '2013']" mode="csv">
        <xsl:variable name="dec" select="count(//accident[matches(date,'\d+/12/13')])"/>
        <xsl:value-of select="$dec"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="nov" select="count(//accident[matches(date,'\d+/11/13')])"/>
        <xsl:value-of select="$nov"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="oct" select="count(//accident[matches(date,'\d+/10/13')])"/>
        <xsl:value-of select="$oct"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="sept" select="count(//accident[matches(date,'\d+/9/13')])"/>
        <xsl:value-of select="$sept"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="aout" select="count(//accident[matches(date,'\d+/8/13')])"/>
        <xsl:value-of select="$aout"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jul" select="count(//accident[matches(date,'\d+/7/13')])"/>
        <xsl:value-of select="$jul"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jun" select="count(//accident[matches(date,'\d+/6/13')])"/>
        <xsl:value-of select="$jun"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mai" select="count(//accident[matches(date,'\d+/5/13')])"/>
        <xsl:value-of select="$mai"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="avr" select="count(//accident[matches(date,'\d+/4/13')])"/>
        <xsl:value-of select="$avr"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mars" select="count(//accident[matches(date,'\d+/3/13')])"/>
        <xsl:value-of select="$mars"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="fev" select="count(//accident[matches(date,'\d+/2/13')])"/>
        <xsl:value-of select="$fev"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jan" select="count(//accident[matches(date, '\d+/1/13' )])"/>
        <xsl:value-of select="$jan"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Compte le nombre d'accidents par mois sur l'année 2012 -->
    <xsl:template match="periode[@annee = '2012']" mode="csv">
        <xsl:variable name="dec" select="count(//accident[matches(date,'\d+/12/12')])"/>
        <xsl:value-of select="$dec"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="nov" select="count(//accident[matches(date,'\d+/11/12')])"/>
        <xsl:value-of select="$nov"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="oct" select="count(//accident[matches(date,'\d+/10/12')])"/>
        <xsl:value-of select="$oct"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="sept" select="count(//accident[matches(date,'\d+/9/12')])"/>
        <xsl:value-of select="$sept"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="aout" select="count(//accident[matches(date,'\d+/8/12')])"/>
        <xsl:value-of select="$aout"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jul" select="count(//accident[matches(date,'\d+/7/12')])"/>
        <xsl:value-of select="$jul"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jun" select="count(//accident[matches(date,'\d+/6/12')])"/>
        <xsl:value-of select="$jun"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mai" select="count(//accident[matches(date,'\d+/5/12')])"/>
        <xsl:value-of select="$mai"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="avr" select="count(//accident[matches(date,'\d+/4/12')])"/>
        <xsl:value-of select="$avr"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mars" select="count(//accident[matches(date,'\d+/3/12')])"/>
        <xsl:value-of select="$mars"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="fev" select="count(//accident[matches(date,'\d+/2/12')])"/>
        <xsl:value-of select="$fev"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jan" select="count(//accident[matches(date, '\d+/1/12' )])"/>
        <xsl:value-of select="$jan"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Compte le nombre d'accidents par mois sur l'année 2011 -->
    <xsl:template match="periode[@annee = '2011']" mode="csv">
        <xsl:variable name="dec" select="count(//accident[matches(date,'\d+/12/11')])"/>
        <xsl:value-of select="$dec"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="nov" select="count(//accident[matches(date,'\d+/11/11')])"/>
        <xsl:value-of select="$nov"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="oct" select="count(//accident[matches(date,'\d+/10/11')])"/>
        <xsl:value-of select="$oct"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="sept" select="count(//accident[matches(date,'\d+/9/11')])"/>
        <xsl:value-of select="$sept"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="aout" select="count(//accident[matches(date,'\d+/8/11')])"/>
        <xsl:value-of select="$aout"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jul" select="count(//accident[matches(date,'\d+/7/11')])"/>
        <xsl:value-of select="$jul"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jun" select="count(//accident[matches(date,'\d+/6/11')])"/>
        <xsl:value-of select="$jun"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mai" select="count(//accident[matches(date,'\d+/5/11')])"/>
        <xsl:value-of select="$mai"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="avr" select="count(//accident[matches(date,'\d+/4/11')])"/>
        <xsl:value-of select="$avr"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mars" select="count(//accident[matches(date,'\d+/3/11')])"/>
        <xsl:value-of select="$mars"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="fev" select="count(//accident[matches(date,'\d+/2/11')])"/>
        <xsl:value-of select="$fev"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jan" select="count(//accident[matches(date, '\d+/1/11' )])"/>
        <xsl:value-of select="$jan"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Compte le nombre d'accidents par mois sur l'année 2010 -->
    <xsl:template match="periode[@annee = '2010']" mode="csv">
        <xsl:variable name="dec" select="count(//accident[matches(date,'\d+/12/10')])"/>
        <xsl:value-of select="$dec"/>
        <xsl:text/>
        <xsl:variable name="nov" select="count(//accident[matches(date,'\d+/11/10')])"/>
        <xsl:value-of select="$nov"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="oct" select="count(//accident[matches(date,'\d+/10/10')])"/>
        <xsl:value-of select="$oct"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="sept" select="count(//accident[matches(date,'\d+/9/10')])"/>
        <xsl:value-of select="$sept"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="aout" select="count(//accident[matches(date,'\d+/8/10')])"/>
        <xsl:value-of select="$aout"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jul" select="count(//accident[matches(date,'\d+/7/10')])"/>
        <xsl:value-of select="$jul"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jun" select="count(//accident[matches(date,'\d+/6/10')])"/>
        <xsl:value-of select="$jun"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mai" select="count(//accident[matches(date,'\d+/5/10')])"/>
        <xsl:value-of select="$mai"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="avr" select="count(//accident[matches(date,'\d+/4/10')])"/>
        <xsl:value-of select="$avr"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="mars" select="count(//accident[matches(date,'\d+/3/10')])"/>
        <xsl:value-of select="$mars"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="fev" select="count(//accident[matches(date,'\d+/2/10')])"/>
        <xsl:value-of select="$fev"/>
        <xsl:text>;</xsl:text>
        <xsl:variable name="jan" select="count(//accident[matches(date, '\d+/1/10' )])"/>
        <xsl:value-of select="$jan"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Pour afficher les délits du code 35 (vols de voiture) par mois et par année-->
    <xsl:template match="data" mode="csv">
        <xsl:variable name="delits"
            select="//periode[@annee]/delits/delit[@code = '35']/mois/child::node()"/>
        <xsl:value-of select="$delits"/>
        <xsl:text/>
        <xsl:apply-templates mode="csv"/>
    </xsl:template>

    <!-- Court-circuit pour les noeuds texte du doc xml -->
    <xsl:template match="text()" mode="csv"/>

</xsl:stylesheet>
