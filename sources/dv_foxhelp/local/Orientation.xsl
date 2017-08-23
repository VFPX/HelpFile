<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
				xmlns:MSHelp="http://msdn.microsoft.com/mshelp"
				xmlns:ddue="http://ddue.schemas.microsoft.com/authoring/2003/5"
				xmlns:xlink="http://www.w3.org/1999/xlink">

    <xsl:include href="XmlDataIsland.xsl" />
    <xsl:include href="SeeAlsoNoToggleSection.xsl"/>
	<xsl:include href="ImportScripts.xsl"/>
	<xsl:include href="NewSyntaxSection.xsl" />
 
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:variable name="relatedTopicsSection" select="boolean(string-length(/topic/topic/ddue:developerOrientationDocument/ddue:relatedTopics[normalize-space(.)]) > 0)"/>

	<xsl:template match="/topic">
		<html xmlns:MSHelp="http://msdn.microsoft.com/mshelp" DIR="LTR">
			<head>
				<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=utf-8"/>
				<META NAME="save" CONTENT="history"/>
				<title><xsl:value-of select="headerInfo/title"/></title>
				<xml>
                    <xsl:call-template name="mshelpTitles" />
                    <xsl:call-template name="mshelpKeywords" />
                    <xsl:call-template name="mshelpGeneralAttributes" />
                    <xsl:choose>
                        <xsl:when test="string-length(topic/ddue:developerOrientationDocument/ddue:summary[normalize-space(.)]) > 0">
                            <xsl:call-template name="AbstractTitles">
								<xsl:with-param name="text1" select="topic/ddue:developerOrientationDocument/ddue:summary[string(.)]"/>
							</xsl:call-template>
                        </xsl:when>
						<xsl:when test="string-length(topic/ddue:developerOrientationDocument/ddue:introduction/p[normalize-space(.)]) > 0">
							<xsl:call-template name="AbstractTitles">
								<xsl:with-param name="text1" select="topic/ddue:developerOrientationDocument/ddue:introduction/p[string(.)]"/>
							</xsl:call-template>
						</xsl:when>
					</xsl:choose>					
				</xml>
				<link rel="stylesheet" type="text/css"><includeSSCAttribute name="href" item="stylesheetPath"/></link>
				<link rel="stylesheet" type="text/css" href="ms-help://Hx/HxRuntime/HxLink.css"> </link>
				<xsl:call-template name="importScripts" />
			</head>
			<body>
				<input type="hidden" id="userDataCache" class="userDataStyle"> </input>
				<input type="hidden" id="hiddenScrollOffset"> </input>
				
				<!-- IMAGES -->
				<img id="dropDownImage" style="display:none; height:0; width:0;" alt="DropDown image">
					<includeSSCAttribute name="src" item="artPath"><param>drpdown.gif</param></includeSSCAttribute>
				</img>
				<img id="dropDownHoverImage" style="display:none; height:0; width:0;" alt="DropDownHover image">
					<includeSSCAttribute name="src" item="artPath"><param>drpdown_orange.gif</param></includeSSCAttribute>
				</img>
				<img id="copyImage" style="display:none; height:0; width:0;" alt="Copy image">
					<includeSSCAttribute name="src" item="artPath"><param>copycode.gif</param></includeSSCAttribute>
				</img>
				<img id="copyHoverImage" style="display:none; height:0; width:0;" alt="CopyHover image">
					<includeSSCAttribute name="src" item="artPath"><param>copycodeHighlight.gif</param></includeSSCAttribute>
				</img>
				<!-- IMAGES -->
			
				<div id="header">
					<table width="100%" id="topTable">
						<tr id="headerTableRow1">
							<td align="left">
								<span id="runningHeaderText">
									<xsl:choose>
										<xsl:when test="headerInfo/runningHeaderTextId">
											<xsl:variable name="rhtID"><xsl:value-of select="headerInfo/runningHeaderTextId"/></xsl:variable>
											<includeSC item="{$rhtID}"/>
										</xsl:when>
										<xsl:when test="headerInfo/runningHeaderText">
											<xsl:value-of select="headerInfo/runningHeaderText"/>
										</xsl:when>
									</xsl:choose>
								</span>
							</td>
						</tr>
						<tr id="headerTableRow2">
							<td align="left">
								<span id="nsrTitle"><xsl:value-of select="headerInfo/title"/></span>
							</td>
						</tr>
						<tr id="headerTableRow3">
							<td>
								<xsl:choose>
									<xsl:when test="$relatedTopicsSection">
										<a href="#seeAlsoNoToggle" onclick="OpenSection(seeAlsoNoToggle)"><includeSSC item="SeeAlso"/></a>
									</xsl:when>
								</xsl:choose>
							</td>
						</tr>
					</table>
					
				

				</div>
				<div id="mainSection">
					<div id="mainBody">
						<div id="allHistory" class="saveHistory" onsave="saveAll()" onload="loadAll()"></div>
						<includeSSC item="header"/>
						<xsl:apply-templates select="topic/*"/>
					</div>
					<div id="footer">
						<div class="footerLine"><img alt="Footer image" width="100%" height="3px"><includeSSCAttribute name="src" item="artPath"><param>footer.gif</param></includeSSCAttribute></img></div>
						<includeSSC item="footer">
							<param>
								<xsl:value-of select="(attributes/attribute)[@name='AssetID']/@value"/>
							</param>
							<param>
								<xsl:value-of select="headerInfo/title"/>
							</param>
						</includeSSC>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="ddue:developerOrientationDocument">
		<xsl:for-each select="*">
			<xsl:choose>
				<!-- Fix to delete extra title (bug DDUELocTools:6810) -->
				<xsl:when test="name() = 'title'"></xsl:when>


				<xsl:otherwise><xsl:apply-templates select="." /></xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:template>

	<xsl:template match="ddue:summary">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ddue:introduction">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ddue:inThisSection">
		<h1 class="heading">
			<includeSSC item="inThisSection"/>
		</h1>
		<div id="inThisSectionSection" class="seeAlsoNoToggleSection">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="ddue:reference">
		<h1 class="heading">
			<includeSSC item="reference"/>
		</h1>
		<div id="referenceSection" class="seeAlsoNoToggleSection">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="ddue:relatedSections">
		<h1 class="heading">
			<includeSSC item="relatedSections"/>
		</h1>
		<div id="relatedSectionsSection" class="seeAlsoNoToggleSection">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="ddue:externalResources">
		<h1 class="heading">
			<includeSSC item="externalResources"/>
		</h1>
		<div id="externalResourcesSection" class="section">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

<!--
	<xsl:template match="ddue:relatedTopics">
		<xsl:if test="$relatedTopicsSection">
			<h1 class="heading">
				<span id="seeAlsoNoToggle">
					<includeSSC item="SeeAlso"/>
				</span>
			</h1>
			<div id="seeAlsoSection" class="section">
				<xsl:apply-templates select="./*"/><br/>
			</div>
		</xsl:if>
	</xsl:template>
-->
	
	<xsl:template match="tasks">
	    <h4 class="subHeading">
	    <includeSSC item="SeeAlsoTasks" />
	    </h4>
		<xsl:for-each select="./*">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="reference">
	    <h4 class="subHeading">
	    <includeSSC item="SeeAlsoReference" />
	    </h4>
		<xsl:for-each select="./*">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="concepts">
	    <h4 class="subHeading">
	    <includeSSC item="SeeAlsoConcepts" />
	    </h4>
		<xsl:for-each select="./*">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="otherResources">
	    <h4 class="subHeading">
	    <includeSSC item="SeeAlsoOtherResources" />
	    </h4>
		<xsl:for-each select="./*">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="ddue:title">
		<xsl:apply-templates/>
	</xsl:template>


	<!-- Just copy whatever we do not recognize -->
	<xsl:template match="@* | node()">
		<xsl:copy><xsl:apply-templates select="@* | node()"/></xsl:copy>
	</xsl:template>
	


	<!-- *** NDPPickML STUFF *** -->
	<xsl:template match="link">	
		<MSHelp:link keywords="{@url}" tabindex="0"><xsl:apply-templates/></MSHelp:link>
	</xsl:template>

	<xsl:template match="codeSection">
		<span class="{@style}"><xsl:value-of select="."/></span>
	</xsl:template>

	<!-- *** TEXT NODE *** -->
	<xsl:template match="text()">
		<xsl:value-of select="."/>
	</xsl:template>


	<!-- *** HANDY XSL ROUTINES -->
	
	<!-- indent by 2*n spaces -->
	<xsl:template name="indent">
		<xsl:param name="n" />
		
		<xsl:if test="$n &gt; 1">
			<xsl:text>&#160;&#160;</xsl:text>
			<xsl:call-template name="indent">
				<xsl:with-param name="n" select="$n - 1" />
			</xsl:call-template>
		</xsl:if>
	
	</xsl:template>
	
</xsl:stylesheet>


