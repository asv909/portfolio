<?php
function PageMaker ($xmlfile,$xslfile)
    {
	 global $options, $id, $df, $cacheLifeTime;
# Инициализация системы кэширования
     // Подключаем класс вывода PEAR::Cache_Lite
     require_once 'cache/output.php';
     // Создаем объект класса Cache_Lite_Output 
     $cache = new Cache_Lite_Output($options);
     // Устанавливаем время жизни кэша для данной части 
     $cache->setLifeTime($cacheLifeTime[$id]); 
     if (!($cache->start($id))) 
         { 
# Передаем путь к запрошенному документу на вход модуля анализа и преобразования XML+XSLT, 
# формирующего на выходе запрошенный документ в XHTML-формате.
          
	         require_once "inc/nstoxhtml.inc";
	         require_once "inc/setformat.inc";
	         require_once "inc/nocache.inc";
	         
             $outputformat = 'xml';
	         //if ($xslfile !== "xsl/rbcrss.xsl") $xslfile = "xsl/layout.xsl";
	         
             $domxml = new DOMDocument();
             $domxml->substituteEntities = true;
	         
			 $domxml->load($xmlfile);

			 @fclose($df);# Снимаем блокировку с файла *             
             
			 $domxsl = new DOMDocument();
             $domxsl->load($xslfile);
             
	         setOutputFormat($domxsl, $outputformat);
	         $xsl = new xsltProcessor();
             $xsl->importStylesheet($domxsl);
             $outdom = $xsl->transformtoDOC($domxml);
             
             $outdom = nstoxhtml($outdom);
	         $outdom->formatoutput = true;
             
	         nocache();
	         $page = $outdom->saveXML();
	         echo TrimStr($page);
             $cache->end();
	     }
    }
?>