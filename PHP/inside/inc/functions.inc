<?php

function TrimStr($str) 
    {   
     $ret_str ="";
	 $str = trim($str); 
     for($i=0;$i < strlen($str);$i++) 
        { 
         if(substr($str, $i, 1) != " ") 
            { 
             $ret_str .= trim(substr($str, $i, 1)); 
            } 
         else 
            { 
             while(substr($str,$i,1) == " ") 
                { 
                 $i++; 
                } 
             $ret_str.= " "; 
             $i--; // *** 
            }  
        } 
     return $ret_str;
    }
	
function replacer ($text) 
    { // ФУНКЦИЯ очистки кода
     $text=str_replace("&#032;",' ',$text);
     $text=str_replace("&",'&amp;',$text); // закоментируйте эту строку если вы используете языки: Украинский, Татарский, Башкирский и т.д.
     $text=str_replace(">",'&gt;',$text);
     $text=str_replace("<",'&lt;',$text);
     $text=str_replace("\"",'&quot;',$text);
     $text=preg_replace("/\n\n/",'<p>',$text);
     $text=preg_replace("/\n/",'<br>',$text);
     $text=preg_replace("/\\\$/",'&#036;',$text);
     $text=preg_replace("/\r/",'',$text);
	 #$text=stripslashes($text);
     $text=preg_replace("/\\\/",'&#092;',$text);
     $text=str_replace("\r\n","<br> ",$text);
     $text=str_replace("\n\n",'<p>',$text);
     $text=str_replace("\n",'<br> ',$text);
     $text=str_replace("\t",'',$text);
     $text=str_replace("\r",'',$text);
     $text=str_replace('   ',' ',$text);
     return $text; 
	}

function substru($str,$from,$len)
    {
     return preg_replace('#^(?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'. $from .'}'.'((?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'. $len .'}).*#s','$1', $str);
    }

function utf8_strlen($s) 
    {
     $c = strlen($s); $l = 0;
     for ($i = 0; $i < $c; ++$i) if ((ord($s[$i]) & 0xC0) != 0x80) ++$l;
     return $l;
    }
?>