<?php

     function nstoxhtml($outdom) 
     { 
		 $xhtmlNS = 'xmlns="http://www.w3.org/TR/xhtml1/strict"';
		 $publicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
		 $systemId = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
		 $domimpl = new domImplementation();
		 $dtype = $domimpl->createDocumentType('html', $publicId, $systemId);
		 $xhtmldom = $domimpl->createDocument($xhtmlNS, 'html', $dtype);
		 $xhtmldom->encoding = $outdom->encoding;
		 $xhtmldom->removeChild($xhtmldom->documentElement);
		 $xhtmlhtml = $xhtmldom->importNode($outdom->documentElement,true);
		 $xhtmldom->appendChild( $xhtmldom->importNode($outdom->documentElement,true));
		 return $xhtmldom;
	  }  

?>