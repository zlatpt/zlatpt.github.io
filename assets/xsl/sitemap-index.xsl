<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:html="http://www.w3.org/TR/REC-html40" 
	xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" 
	sitemap:news="http://www.google.com/schemas/sitemap-news/0.9" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>XML Sitemap Feed - Index</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style type="text/css">body{font-family:"Lucida Grande","Lucida Sans Unicode",Tahoma,Verdana,sans-serif;font-size:13px}#header,#footer{padding:2px;margin:10px;font-size:8pt;color:gray}a{color:black}td{font-size:11px}th{text-align:left;padding-right:30px;font-size:11px}tr.high{background-color:whitesmoke}#footer img{vertical-align:bottom}</style>
</head>
<body>
	<h1>XML Sitemap Feed - Index</h1>
	<div id="header">
		<p>This is an XML Sitemap to aid search engines like <a href="http://www.google.com">Google</a>, <a href="http://www.bing.com/">Bing</a>, <a href="http://www.yahoo.com">Yahoo!</a> and <a href="http://www.ask.com">Ask</a> indexing your site better. Read more about XML sitemaps on <a href="http://sitemaps.org">Sitemaps.org</a>.</p>
	</div>
	<div id="content">
		<table cellpadding="5">
			<tr class="high">
				<th>#</th>
				<th>XML Sitemap</th>
			</tr>
<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
			<tr><xsl:if test="position() mod 2 != 1"><xsl:attribute  name="class">high</xsl:attribute></xsl:if>
				<td><xsl:value-of select="position()"/></td>
				<td><xsl:variable name="itemURL"><xsl:value-of select="sitemap:loc"/></xsl:variable>
					<a href="{$itemURL}"><xsl:value-of select="sitemap:loc"/></a>
				</td>
			</tr>
</xsl:for-each>
		</table>
	</div>
	<div id="footer">
		<p>XML Sitemap</p>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
