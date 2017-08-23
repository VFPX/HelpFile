<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
				xmlns:MSHelp="http://msdn.microsoft.com/mshelp"
				xmlns:ddue="http://ddue.schemas.microsoft.com/authoring/2003/5"
				xmlns:xlink="http://www.w3.org/1999/xlink">

    <xsl:include href="XmlDataIsland.xsl" />
    <xsl:include href="InputOutputSections.xsl" />
    <xsl:include href="SeeAlsoToggleSection.xsl"/> 
	<xsl:include href="ImportScripts.xsl"/>
	<xsl:include href="NewSyntaxSection.xsl" />

	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:variable name="relatedTopicsSection" select="boolean(string-length(/topic/topic/ddue:developerXmlReference/ddue:relatedTopics[normalize-space(.)]) > 0)"/>
	<xsl:variable name="examplesSection" select="boolean(string-length(/topic/topic/ddue:developerXmlReference/ddue:codeExample[normalize-space(.)]) > 0)"/>

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
                        <xsl:when test="string-length(topic/ddue:developerXmlReference/ddue:summary[normalize-space(.)]) > 0">
                            <xsl:call-template name="AbstractTitles">
								<xsl:with-param name="text1" select="topic/ddue:developerXmlReference/ddue:summary[string(.)]"/>
							</xsl:call-template>
						</xsl:when>
						<xsl:when test="string-length(topic/ddue:developerXmlReference/ddue:introduction/p[normalize-space(.)]) > 0">
							<xsl:call-template name="AbstractTitles">
								<xsl:with-param name="text1" select="topic/ddue:developerXmlReference/ddue:introduction/p[string(.)]"/>
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
				<img id="collapseImage" style="display:none; height:0; width:0;" alt="Collapse image">
					<includeSSCAttribute name="src" item="artPath"><param>collapse_all.gif</param></includeSSCAttribute>
				</img>
				<img id="expandImage" style="display:none; height:0; width:0;" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<img id="collapseAllImage" style="display:none; height:0; width:0;" alt="CollapseAll image">
					<includeSSCAttribute name="src" item="artPath"><param>collall.gif</param></includeSSCAttribute>
				</img>
				<img id="expandAllImage" style="display:none; height:0; width:0;" alt="ExpandAll image">
					<includeSSCAttribute name="src" item="artPath"><param>expall.gif</param></includeSSCAttribute>
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
										<a href="#seeAlsoToggle" onclick="OpenSection(seeAlsoToggle)"><xsl:text/><includeSSC item="SeeAlso"/><xsl:text/></a>&#160;
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="$examplesSection">
										<a href="#codeExampleToggle" onclick="OpenSection(codeExampleToggle)"><xsl:text/><includeSSC item="Example"/><xsl:text/></a>&#160;
									</xsl:when>
								</xsl:choose>
							</td>
						</tr>
					</table>
					<table width="100%" id="bottomTable" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<span onclick="ExpandCollapseAll(toggleAllImage)" style="cursor:default;" onkeypress="ExpandCollapseAll_CheckKey(toggleAllImage)" tabindex="0">
									<img ID="toggleAllImage" class="toggleAll" alt="CollapseAll image"><includeSSCAttribute name="src" item="artPath"><param>collall.gif</param></includeSSCAttribute></img>
									<label id="collapseAllLabel" for="toggleAllImage" style="display: none;"><includeSSC item="collapseAll"/></label>
									<label id="expandAllLabel" for="toggleAllImage" style="display: none;"><includeSSC item="expandAll"/></label><xsl:text>&#160;</xsl:text>							
								</span>
								
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
	
	<xsl:template match="ddue:developerXmlReference">
		<xsl:for-each select="*">
			<xsl:choose>
				<xsl:when test="name() = 'codeExample'">
					<xsl:if test="current() = ../ddue:codeExample[1]">
						<xsl:apply-templates select="." />
					</xsl:if>
				</xsl:when>

				<!-- Fix to delete extra title (bug DDUELocTools:6810) -->
				<xsl:when test="name() = 'title'"></xsl:when>

				<xsl:otherwise><xsl:apply-templates select="." /></xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:template>

	<xsl:template match="ddue:summary">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="ddue:content">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="ddue:description">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ddue:introduction">
		<xsl:apply-templates/>
	</xsl:template>
	<!--
	<xsl:template match="ddue:schemaHierarchy">		
		<xsl:for-each select="MSHelp:link">
			<xsl:call-template name="indent">
				<xsl:with-param name="n" select="position()"/>
			</xsl:call-template>
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	-->
	<xsl:template match="ddue:schemaHierarchy">		
		<xsl:for-each select="*"><p>
			<xsl:call-template name="indent">
				<xsl:with-param name="n" select="position()"/>
			</xsl:call-template>
			<xsl:apply-templates/></p>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="ddue:syntaxSection">
		<div id="syntaxSection" class="section">
			<div id="syntaxCodeBlocks" class="code">
				<xsl:for-each select="ddue:legacySyntax">
				
					<xsl:variable name="codeLang">
						<xsl:choose>
							<xsl:when test="@language = 'vbs'">
								<xsl:text>VBScript</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'vb' or @language = 'vb#'  or @language = 'VB'" >
								<xsl:text>VisualBasic</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'c#' or @language = 'cs' or @language = 'C#'" >
								<xsl:text>CSharp</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'cpp' or @language = 'cpp#' or @language = 'c' or @language = 'c++' or @language = 'C++'" >
								<xsl:text>ManagedCPlusPlus</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'j#' or @language = 'jsharp'">
								<xsl:text>JSharp</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'js' or @language = 'jscript#' or @language = 'jscript' or @language = 'JScript'">
								<xsl:text>JScript</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'xml'">
								<xsl:text>xml</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'html'">
								<xsl:text>html</xsl:text>
							</xsl:when>
							<xsl:when test="@language = 'vb-c#'">
								<xsl:text>visualbasicANDcsharp</xsl:text>
							</xsl:when>
							<xsl:otherwise><xsl:text>other</xsl:text></xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					
					<span codeLanguage="{$codeLang}">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<th align="left">
									<includeSSC item="{$codeLang}"/>
								</th>
							</tr>
							<tr>
								<td>
									<pre><xsl:apply-templates xml:space="preserve"/></pre>
								</td>
							</tr>
						</table>
					</span>
				
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="ddue:type">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ddue:attributesandElements">
		<h1 class="heading">
			<span onclick="ExpandCollapse(attributesandElementsToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(attributesandElementsToggle)" tabindex="0">
				<img id="attributesandElementsToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<includeSSC item="AttributesandElements"/>
			</span>
		</h1>
		<div id="attributesandElementsSection" class="section" style="display: none;">
			<!-- TODO: verify this element type -->
			<xsl:apply-templates/>
			<!--<xsl:apply-templates select="ddue:attributes"/>
			<xsl:apply-templates select="ddue:attribute"/>
			<xsl:apply-templates select="ddue:childElement"/>
			<xsl:apply-templates select="ddue:parentElement"/>-->
		</div>
	</xsl:template>
	
	<xsl:template match="ddue:attributes">
		<h4 class="subHeading"><includeSSC item="xmlRef_attributes"/></h4>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="ddue:attribute">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="ddue:attribute/ddue:title">
		<h4 class="subHeading"><xsl:apply-templates/></h4>
	</xsl:template>
		
	<xsl:template match="ddue:childElement">
		<h4 class="subHeading"><includeSSC item="xmlRef_childElement"/></h4>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="ddue:parentElement">
		<h4 class="subHeading"><includeSSC item="xmlRef_parentElement"/></h4>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ddue:textValue">
		<h1 class="heading">
			<span onclick="ExpandCollapse(textValueToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(textValueToggle)" tabindex="0">
				<img id="textValueToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<includeSSC item="TextValue"/>
			</span>
		</h1>
		<div id="textValueSection" class="section" name="collapseableSection" style="display: none;">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="ddue:remarks">
		<h1 class="heading">
			<span onclick="ExpandCollapse(remarksToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(remarksToggle)" tabindex="0">
				<img id="remarksToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<includeSSC item="Remarks"/>
			</span>
		</h1>
		<div id="remarksSection" class="section" style="display: none;">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="ddue:codeExample">
		<h1 class="heading">
			<span onclick="ExpandCollapse(codeExampleToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(codeExampleToggle)" tabindex="0">
				<img id="codeExampleToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<includeSSC item="Example"/>
			</span>
		</h1>
		<div id="codeExampleSection" class="section" name="collapseableSection" style="display: none;">
			<xsl:for-each select="../ddue:codeExample">
				<xsl:apply-templates/>
			</xsl:for-each>
		</div>
	</xsl:template>
	
		<xsl:template match="ddue:elementInformation">
		<h1 class="heading">
			<span onclick="ExpandCollapse(elementInformationToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(elementInformationToggle)" tabindex="0">
				<img id="elementInformationToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
					<includeSSCAttribute name="src" item="artPath"><param>expand_all.gif</param></includeSSCAttribute>
				</img>
				<includeSSC item="ElementInformation"/>
			</span>
		</h1>
		<div id="elementInformationSection" class="section" style="display: none;">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

  <xsl:template match="ddue:section">
    <xsl:apply-templates select="@address"/>
    <!-- Count all the possible ancestor root nodes -->
    <xsl:variable name="a1" select="count(ancestor::ddue:attributesandElements)" />
    <xsl:variable name="a2" select="count(ancestor::ddue:codeExample)" />
    <xsl:variable name="a3" select="count(ancestor::ddue:dotNetFrameworkEquivalent)" />
    <xsl:variable name="a4" select="count(ancestor::ddue:elementInformation)" />
    <xsl:variable name="a5" select="count(ancestor::ddue:exceptions)" />
    <xsl:variable name="a6" select="count(ancestor::ddue:introduction)" />
    <xsl:variable name="a7" select="count(ancestor::ddue:languageReferenceRemarks)" />
    <xsl:variable name="a8" select="count(ancestor::ddue:nextSteps)" />
    <xsl:variable name="a9" select="count(ancestor::ddue:parameters)" />
    <xsl:variable name="a10" select="count(ancestor::ddue:prerequisites)" />
    <xsl:variable name="a11" select="count(ancestor::ddue:procedure)" />
    <xsl:variable name="a12" select="count(ancestor::ddue:relatedTopics)" />
    <xsl:variable name="a13" select="count(ancestor::ddue:remarks)" />
    <xsl:variable name="a14" select="count(ancestor::ddue:requirements)" />
    <xsl:variable name="a15" select="count(ancestor::ddue:schemaHierarchy)" />
    <xsl:variable name="a16" select="count(ancestor::ddue:syntaxSection)" />
    <xsl:variable name="a17" select="count(ancestor::ddue:textValue)" />
    <xsl:variable name="a18" select="count(ancestor::ddue:type)" />
    <xsl:variable name="a19" select="count(ancestor::ddue:section)" />
    <xsl:variable name="total" select="$a1+$a2+$a3+$a4+$a5+$a6+$a7+$a8+$a9+$a10+$a11+$a12+$a13+$a14+$a15+$a16+$a17+$a18+$a19" />
    <xsl:choose>
      <xsl:when test="$total = 0">
        <xsl:call-template name="rootSection">
          <xsl:with-param name="node" select="."/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$total = 1">
        <xsl:call-template name="subSection1">
          <xsl:with-param name="node" select="."/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="subSection2">
          <xsl:with-param name="node" select="."/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

	<xsl:template match="@address">
		<a><xsl:attribute name="name"><xsl:value-of select="."/></xsl:attribute></a>
		<xsl:apply-templates/>
	</xsl:template>

    <xsl:template name="rootSection">
        <xsl:param name="node"/>
        <xsl:variable name="sectionCount">
            <xsl:value-of select="count(preceding-sibling::ddue:section)"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$node/ddue:title/.">
                <h1 class="heading">
                    <span onclick="ExpandCollapse(sectionToggle{$sectionCount})" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(sectionToggle{$sectionCount})" tabindex="0">
                        <img id="sectionToggle{$sectionCount}" onload="OnLoadImage()" class="toggle" name="toggleSwitch" alt="Expand image">
                            <includeSSCAttribute name="src" item="artPath">
                                <param>expand_all.gif</param>
                            </includeSSCAttribute>
                        </img>
                        <xsl:apply-templates select="$node/ddue:title"/>
                    </span>
                </h1>
                <div id="sectionSection{$sectionCount}" class="section" name="collapseableSection" style="display: none;">
                    <xsl:apply-templates select="$node/ddue:content/."/>
                    <xsl:apply-templates select="$node/ddue:sections/."/>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <div id="sectionSection{$sectionCount}" class="seeAlsoNoToggleSection">
                    <xsl:apply-templates select="$node/ddue:content/."/>
                    <xsl:apply-templates select="$node/ddue:sections/."/>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="subSection1">
		<xsl:param name="node"/>
		<xsl:variable name="tName" select="$node/ddue:title/." />
		
		<xsl:if test="(($tName != 'Description') and ($tName !='Code') and ($tName != 'Comments'))">
			<h3 class="subHeading"><xsl:apply-templates select="$node/ddue:title"/></h3>
		</xsl:if>
		<div class="subSection">
			<xsl:apply-templates select="$node/ddue:content/."/>
			<xsl:apply-templates select="$node/ddue:sections/."/>
		</div>
	</xsl:template>
	
	<xsl:template name="subSection2">
		<xsl:param name="node"/>
		
		<xsl:variable name="tName" select="$node/ddue:title/." />
		
		<xsl:if test="(($tName != 'Description') and ($tName !='Code') and ($tName != 'Comments'))">
			<h4 class="subHeading"><xsl:apply-templates select="$node/ddue:title"/></h4>
		</xsl:if>
		<div class="subSection">
			<xsl:apply-templates select="$node/ddue:content/."/>
			<xsl:apply-templates select="$node/ddue:sections/."/>
		</div>
	</xsl:template>
<!--
	<xsl:template match="ddue:relatedTopics">
		<xsl:if test="$relatedTopicsSection">
			<h1 class="heading">
				<span onclick="ExpandCollapse(seeAlsoToggle)" style="cursor:default;" onkeypress="ExpandCollapse_CheckKey(seeAlsoToggle)" tabindex="0">
					<img id="seeAlsoToggle" onload="OnLoadImage()" class="toggle" name="toggleSwitch">
						<includeSSCAttribute name="src" item="artPath"><param>exp.gif</param></includeSSCAttribute>
					</img>
					<includeSSC item="SeeAlso"/>
				</span>
			</h1>
			<div id="seeAlsoSection" class="section" name="collapseableSection" style="display: none;">
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

