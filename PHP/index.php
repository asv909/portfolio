<?php
     error_reporting (E_ALL);
# Подключаем конфигурацию          
     require_once 'inside/config.php';
# Подключаем библиотеку специальных функций (для работы с utf-8 и др.)	 
	 require_once 'inside/inc/functions.inc';
	 
# Получаем URI запроса из массива гдобальных переменных.     
	 $reqURI = $_SERVER['REQUEST_URI'];

# Проверяем, была ли отправка данных через форму запроса		 
	 if (isset($_REQUEST['event']))
        {
		 require_once 'inside/Form.php';
	     Form::main();
		 exit();
		}

# Разбор URI-запроса: вычленение имени запрошенного документа.	 
	 if ((strlen($reqURI) === 0) || ($reqURI === "/")) 
	     $fname = "main";
	 elseif (!strpos($reqURI, ".")) 
	     $fname = substr($reqURI, 1);
	 else 
	    {
         $dotpos = strpos($reqURI, ".");
	     $fname = substr($reqURI, 1, ($dotpos-1));
		}
         
# Поиск соответствия в списке существующих имён документов: 
# Eсли совпадение есть, то получаем требуемый путь к XML-файлу для формирования запрошенного документа, 
# Eсли совпадения нет, то устанавливаем путь по умолчанию:
# на 404 страницу==$filelist["/404"] /Главную страницу==$filelist["/main"] /Карту сайта=$filelist["/map"].
     
	 $xmlfile = "";
     foreach ($filelist as $pagename => $filepath) 
	    {
		 if ($fname === $pagename) 
		    {
		     $id = $pagename;
		     $xmlfile = $filepath; 
             break;
            }
		}
	 
#Если  запрошенный адрес не совпал ни с одним из предопределеных, то посылаем на 404 страницу     
	 if ($xmlfile === "") 
	    {
         $id = "404";
		 $xmlfile = "xml/404.xml";
//		 header("HTTP/1.0 404 Not Found");
//		 header("Location: http://www.eurotrade-et.ru/404");
//		 exit();
		}
        
#Вызываем модуль Визуализации и Кэширования
     require_once 'inside/pagemaker.php';
     PageMaker($xmlfile,$xslfile);
     exit();     
?>