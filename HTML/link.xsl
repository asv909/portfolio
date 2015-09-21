<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="utf-8" indent="yes"/>
	<xsl:template name="link">
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen"/>
		<xsl:comment>
			[if lt IE 8]&gt;&lt;link rel="stylesheet" type="text/css" href="styles/ie.css"/&gt;&lt;![endif]
		</xsl:comment>
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
	</xsl:template>
</xsl:stylesheet>