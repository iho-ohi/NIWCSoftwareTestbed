<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:S412="http://www.iho.int/S412/1.1"
  xmlns:S100="http://www.iho.int/s100gml/5.0"
  xmlns:gml="http://www.opengis.net/gml/3.2">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="WindWarning[@primitive='Surface' and windWarningThreshold=1]" priority="2">
  <!-- <xsl:template match="WindWarning*[local-name()='geometry']/*[local-name()='surfaceProperty'] and *[local-name()='windWarningThreshold'][@code='1']]" priority="2"> -->
    <xsl:variable name="id" select="@gml:id|@id"/>
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>21010</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <xsl:call-template name="simpleLineStyle">
        <xsl:with-param name="style">solid</xsl:with-param>
        <xsl:with-param name="width">0.64</xsl:with-param>
        <xsl:with-param name="colour">WXGRN</xsl:with-param>
      </xsl:call-template>
    </lineInstruction>
    <areaInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>12210</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <colorFill>
        <color transparency="0.5">WXGRN</color>
      </colorFill>
    </areaInstruction>
  </xsl:template>

  <xsl:template match="WindWarning[@primitive='Surface' and windWarningThreshold=2]" priority="2">
  <!-- <xsl:template match="*[local-name()='WindWarning'][*[local-name()='geometry']/*[local-name()='surfaceProperty'] and *[local-name()='windWarningThreshold'][@code='2']]" priority="2"> -->
    <xsl:variable name="id" select="@gml:id|@id"/>
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>21010</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <xsl:call-template name="simpleLineStyle">
        <xsl:with-param name="style">solid</xsl:with-param>
        <xsl:with-param name="width">0.64</xsl:with-param>
        <xsl:with-param name="colour">WXYLW</xsl:with-param>
      </xsl:call-template>
    </lineInstruction>
    <areaInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>12210</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <colorFill>
        <color transparency="0.5">WXYLW</color>
      </colorFill>
    </areaInstruction>
  </xsl:template>

  <xsl:template match="WindWarning[@primitive='Surface' and windWarningThreshold=3]" priority="2">
  <!-- <xsl:template match="*[local-name()='WindWarning'][*[local-name()='geometry']/*[local-name()='surfaceProperty'] and *[local-name()='windWarningThreshold'][@code='3']]" priority="2"> -->
    <xsl:variable name="id" select="@gml:id|@id"/>
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>21010</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <xsl:call-template name="simpleLineStyle">
        <xsl:with-param name="style">solid</xsl:with-param>
        <xsl:with-param name="width">0.64</xsl:with-param>
        <xsl:with-param name="colour">WXORG</xsl:with-param>
      </xsl:call-template>
    </lineInstruction>
    <areaInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>12210</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <colorFill>
        <color transparency="0.5">WXORG</color>
      </colorFill>
    </areaInstruction>
  </xsl:template>

  <xsl:template match="WindWarning[@primitive='Surface' and windWarningThreshold=4]" priority="2">
  <!-- <xsl:template match="*[local-name()='WindWarning'][*[local-name()='geometry']/*[local-name()='surfaceProperty'] and *[local-name()='windWarningThreshold'][@code='4']]" priority="2"> -->
    <xsl:variable name="id" select="@gml:id|@id"/>
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>21010</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <xsl:call-template name="simpleLineStyle">
        <xsl:with-param name="style">solid</xsl:with-param>
        <xsl:with-param name="width">0.64</xsl:with-param>
        <xsl:with-param name="colour">WXRED</xsl:with-param>
      </xsl:call-template>
    </lineInstruction>
    <areaInstruction>
      <featureReference>
        <xsl:value-of select="$id"/>
      </featureReference>
      <viewingGroup>12210</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <colorFill>
        <color transparency="0.5">WXRED</color>
      </colorFill>
    </areaInstruction>
  </xsl:template>

</xsl:transform>
