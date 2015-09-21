<?php

     function setOutputFormat($domxsl, $outputformat)
	 {
	            $xpath = new domxpath($domxsl);
		 $xpathStr = '/xsl:stylesheet/xsl:output/@method';
		 $nodeList = $xpath->query($xpathStr);
		 $methodNode = $nodeList->item(0);
		 if ($methodNode)
		 $methodNode->value = $outputformat;
	  }

?>