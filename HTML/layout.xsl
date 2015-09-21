<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="meta.xsl"/>
	<xsl:import href="link.xsl"/>
	<xsl:import href="script.xsl"/>
	<xsl:import href="mainmenu.xsl"/>
	<xsl:import href="leftmenu.xsl"/>
	<xsl:import href="rightmenu.xsl"/>
	<xsl:import href="downav.xsl"/>
	<xsl:import href="base.xsl"/>
	<xsl:output version="1.0" method="xml" encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:value-of select='/html/head/title'/>
				</title>
				<xsl:call-template name="meta"/>
				<xsl:copy-of select='/html/head/meta'/>
				<xsl:call-template name="link"/>
				<xsl:copy-of select='/html/head/link'/>
				<xsl:comment>
					 <xsl:value-of select='/html/head/cond_comment'/>
				</xsl:comment>
				<xsl:call-template name="script"/>
				<xsl:copy-of select='/html/head/script'/>
			</head>
			<body>
				<div id="wrap"><a name="top"></a>
					<div id="logo"></div>
					<xsl:call-template name="mainmenu"/>
					<div id="neck">
						<div id="icq_mail"  class="floatLeft">
							<span style="display: none"><![CDATA[<noindex>]]></span>
								<!--a 
class="icq-IE6" href="http://www.icq.com/whitepages/cmd.php?uin=682748848&#38;action=message" rel="nofollow" target="_blank" 
title="При нажатии будет запущен установленный на Вашем компьютере ICQ-мессенджер"> ICQ: 682-748-848</a><br/-->
								<a 
class="icq-IE6" href="http://www.icq.com/whitepages/cmd.php?uin=682748848" rel="nofollow" target="_blank" 
title=""> ICQ: 682-748-848</a><br/>
								<a 
class="mail-IE6" href="mailto:sale@eurotrade-et.ru" rel="nofollow" 
title="При нажатии будет запущен установленный на Вашем компьютере почтовый клиент">sale@eurotrade-et.ru</a>
							<span style="display: none"><![CDATA[</noindex>]]></span>
						</div><!--ICQ + MAIL-->
						<h1 id="header" class="floatLeft">
							<xsl:value-of select='/html/pagename'/>
						</h1>
						<div id="phone" class="floatRight">
							<span style="display: none"><![CDATA[<noindex>]]></span>
								<a 
class="phone-IE6" href="callto: 8,W8129562596" rel="nofollow" target="_blank" 
title="">+7 (812) 956-25-96</a><br/>
								<a 
class="phone-IE6" href="callto: 8,W8137891324" rel="nofollow" target="_blank" 
title="">+7 (81378) 91-324</a>
							<span style="display: none"><![CDATA[</noindex>]]></span>
						</div><!--TEL + FAX-->
					</div>
					<div id="container">
						<div id="c-column" class="ie6_ital">
							<xsl:copy-of select='/html/body/*'/>
							<div id="deviz" class="clear">КОМПЛЕКСНОЕ СНАБЖЕНИЕ ПРОМЫШЛЕННОСТИ И ПРОИЗВОДСТВА</div>
						</div>
					</div>
					<div id="l-column">
						<xsl:call-template name="leftmenu"/>
                        <br/>
                        <a href="http://twitter.com/#!/eurotrade_ltd" target="_blank">
							<img title="Следите за нашими новостями в Твиттере!" alt="Компания ЕвроТрейд в Твиттере" src="/styles/icons/twitter.png" width="50" height="50"/>
						</a>
                        <a href="http://vkontakte.ru/euro_trade" target="_blank">
							<img title="Будьте с нами ВКонтакте!" alt="Компания ЕвроТрейд ВКонтакте" src="/styles/icons/vkontakte.png" width="58" height="50"/>
						</a>
                        <a href="http://www.facebook.com/pages/Евро-Трейд/113110962101351" target="_blank">
							<img title="Общайтесь с нами на Facebook!" alt="Компания ЕвроТрейд на Facebook" src="/styles/icons/facebook.png" width="50" height="50"/>
						</a><br/>
					</div>
					<div id="r-column">
						<xsl:call-template name="rightmenu"/>
						<div>
							<a  href="http://www2.clustrmaps.com/counter/maps.php?url=http://eurotrade-et.ru" target="_blank" id="clustrMapsLink">
								<img src="http://www2.clustrmaps.com/counter/index2.php?url=http://eurotrade-et.ru" alt="Locations of visitors to this page" title="Locations of visitors to this page" id="clustrMapsImg"/>
							</a>
                            <!--script type="text/javascript" src="/orphus/orphus.js"></script>
                            <a id="orphus" href="http://orphus.ru" target="_blank">
                                <img alt="Система Orphus" src="/orphus/orphus.gif" width="160" height="105"/>
                            </a-->
                        </div>
						<script type="text/javascript">
function cantload() {
img = document.getElementById("clustrMapsImg");
img.onerror = null;
img.src = "http://clustrmaps.com/images/clustrmaps-back-soon.jpg";
document.getElementById("clustrMapsLink").href = "http://clustrmaps.com";
}
img = document.getElementById("clustrMapsImg");
img.onerror = cantload;</script>
					</div>
					<div id="base">
						<div id="up" class="floatRight"><a href="#top">ВВЕРХ&#8593;</a></div>
						<h2 id="b-header" class="floatLeft">
							<xsl:value-of select='/html/pagename'/>
						</h2>
					</div>
					<xsl:call-template name="downav"/>
					<div id="copyright">
						<div id="counters" class="floatLeft"><xsl:call-template name="base"/></div>
						<address class="floatRight">© 2009-2013 EuroTrade Ltd.</address>
					</div>
				</div>
				<script type="text/javascript">var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));</script>
				<script type="text/javascript">try {var pageTracker = _gat._getTracker("UA-9901690-1");pageTracker._trackPageview();} catch(err) {}</script>
<!-- Yandex.Metrika -->
				<script src="//mc.yandex.ru/resource/watch.js" type="text/javascript"/>
				<script type="text/javascript">try { var yaCounter208812 = new Ya.Metrika(208812); } catch(e){}</script>
				<noscript>
					<div style="position: absolute;"><img src="//mc.yandex.ru/watch/208812" alt=""/>
					</div>
				</noscript>
<!-- /Yandex.Metrika -->
<!-- NETROXSC CODE. Theme No. 1 --><script type="text/javascript" src="http://code.netroxsc.ru/F86FB573-3F03-A47A-7EB9-318DFAE54F92/c.js?tmpl=2"></script>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>