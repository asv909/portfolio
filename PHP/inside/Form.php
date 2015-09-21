<?php
	 require_once "Form/Form.config.php";
	 require_once "Form/Field.class.php";
	
	 class Form {
		 private static $formConfig = array(), $sourceData = array(), $time = 0, $errCount = 0, $errMessage = "";
		 
		 public static function main() {
			 Error_Reporting(E_ALL & ~E_NOTICE);
			 session_start();
			 /*сверяем антиспам код полученный из формы с кодом, записанным в сессии клиента*/
			 self::asp_check();
			 /*обрабатываем данные, полученные от клиента (с формы на сайте)*/
			 if(self::$errCount===0) {
				 self::form_data_validation();
				}
			 else {
			/*формируем ajax-ответ и отправляем его клиенту*/
			 self::response_send(); // передаем клиенту код ошибки и инициируем обновление ASP 
			/*очищаем контекст текущего сеанса*/
			 self::obj_and_sess_destroy();
				}
			 //если критических ошибок нет, то
			 if(self::$errCount===0) {
				//пишем данные в архивный файл на сервере
				 self::form_data_save_to_file();
				//создаем сообщение и отправляем его на заданный в конфигурации адрес эл.почты
				 self::mail_create_and_send();
				/*формируем ajax-ответ и отправляем его клиенту*/
				 self::response_send(); // передаем клиенту сообщение об удачной отправке данных, частично обнуляем форму и инициируем обновление ASP
				 /*Уничтожаем все объекты и текущую сессию*/
				 self::obj_and_sess_destroy();
				}
			 else {
				/*формируем ajax-ответ и отправляем его клиенту*/
				 self::response_send(); // передаем клиенту код ошибки и инициируем обновление ASP 
				 self::obj_and_sess_destroy();
				}
			}

		 private static function asp_check() {
		 /*если не существует или не совпадает, то генерируем ошибку и отправляем её клиенту*/
			 if(!isset($_SESSION["asp"])) {
				 self::error_reg(1);
				 self::obj_and_sess_destroy();
				}
			 elseif($_SESSION["asp"]!==$_POST["asp"]) {
				 self::error_reg(2, "[Введите специальный код:]");
				}
			}
		 
		 private static function error_reg($err_Code=0, $field_Name="") {
			 self::$errCount++;
			 $temp = Form_config::err_text_get($err_Code, $field_Name);
			 self::$errMessage.= Form_config::err_text_get($err_Code, $field_Name);
			}
		 
		 private static function form_data_validation() {
			 self::$formConfig = Form_config::form_config_get();
			 //Создаем объект "поле формы" с именем $id и набором свойств $properties = array(), в соответствии с конфигурацией формы $formconfig
			 foreach (self::$formConfig as $id=>$properties) {
				 $field = Field::field_get($id, $properties);
				 //Начинаем обрабатывать поле
				 //Контролируем поля "areaCode", "phoneNum", "email", для которых свойство "required" может нуждаться в изменении из-за переключателя 'feedback' в форме
				 if($id==="areaCode" || $id==="phoneNum" || $id==="email" || $id==="feedback") {
					 if(!isset($_POST['feedback'])) {
						 self::$errMessage.= Form_config::err_text_get(3, $field->fieldLabel);
						}
					 else {
						 if($_POST['feedback']==="phone") {
							 $field->required = 1;
							 if($id==="email") {
								 $field->required = 0;
								}
							 if($id==="feedback") {
								 $field->value = "Телефон";
								}
							}
						 else {
							 if($id==="feedback") {
								 $field->value = "E-mail";
								}
							}
						}
					}
				//Теперь всё готово к началу верификации данных, полученных из формы на сайте
				//Проверяем, существуют ли для текущего объекта соответствующие данные в полученной из формы информации
				 if(!isset($_POST[$id])): /*Если поле не существует во входных данных*/
					 self::error_reg(4, Form_config::prop_value_get($id, "fieldLabel"));
				 elseif(utf8_strlen($_POST[$id])===0 && $field->required===1):  //Если не заполнено обязательное поле
					 self::error_reg(5, Form_config::prop_value_get($id, "fieldLabel"));
				//проверяем на  предмет выхода за min или max длину
				 elseif(utf8_strlen($_POST[$id])<$field->minLength && $field->required===1): // Если обязательное поле короче "minLength"
					 self::error_reg(6, Form_config::prop_value_get($id, "fieldLabel"));
				 else: {
					 if(utf8_strlen($_POST[$id])>$field->maxLength) //Если длинее "maxLength", то обрезаем
						 $value = substr(trim($_POST[$id]),0,$field->maxLength);
					 else {
						 $value = trim($_POST[$id]);
						}
					 //Пишем информацию в массив для последующей записи в архивный файл
					 self::$sourceData[$id] = $value;
					 //Проверяем данные с помощью регулярных выражений
					 $match = preg_match($field->regexp, $value, $matches);
					 if($match=0 && $field->required===1): //если совпадений не найдено и текущее поле - обязательное, то регистрируем ошибку
						 self::error_reg(7, Form_config::prop_value_get($id, "fieldLabel"));
					 elseif($match=0 && $field->required===0): //если совпадений не найдено и текущее поле НЕ обязательное,
						 $field->value = ""; // то присваиваем свойству пустую строку
					 else:
						 if($id==="subj") {
							 $field->subjcode = $matches[0];
							 $field->value = $field->$matches[0];
							}
						 elseif($id!=="feedback") {
							 $field->value = htmlspecialchars(stripslashes(trim($matches[0])), ENT_QUOTES,'UTF-8',true);
							}
					 endif;
					}
				 endif; //Конец верификации данных для текущего поля
				}//end foreach
			}

		 private static function form_data_save_to_file() {
			 //пишем данные в архивный файл на сервере
			 //генерируем имя архивного файла
			 self::$time = time();
			 $filename = strftime('%y%m%d%H%M%S', self::$time);
			 $archiv = Form_config::$dirArchiv.$filename.".dat";
			 //создаем файл,  открываем его на запись, блокируем к нему доступ, устанавливаем указатель в конец файла
			 fclose(fopen($archiv, "a+b"));
			 $af = fopen($archiv, "r+t");
			 flock($af, LOCK_EX);
			 fseek($af, -1, SEEK_END);
			 //пишем данные в архивный файл
			 foreach(self::$sourceData as $name=>$value) {
				 $data = $name.' = '.$value."\r\n";
				 fwrite($af, $data);
				}
			 fclose($af);//закрыли файл
			}

		 private static function mail_create_and_send() {
			 /*формируем HTML-код сообщения */
			 //формируем набор данных для сообщения
			 $data[url] = $data[site] = "http://".$_SERVER['HTTP_HOST'];
			 $data[sendtime] = strftime("%d %B %Y (%a) %H:%M:%S", self::$time);
			 foreach(self::$formConfig as $key=>$value) {
				 $data[$key] = Field::property_get($key, "value");
				}
			 $data[person] = $data[surname]." ".$data[name]." ".$data[pname];
			 //создаем HTML-код сообщения
			 foreach($data as $key=>$value) {
				 $key = "{".$key."}";
				 $substitution[$key] = $value;
				}
			 $template = file_get_contents(Form_config::$mailTemplate);
			 $mailbody = strtr($template, $substitution);
			 /*отправляем сообщение на заданный в конфигурации адрес эл.почты, копию письма сохраняем на сервере */
			 //Настройки для отправки писем
			 $receiver = Form_config::$address[Field::property_get("subj", "subjcode")];
			 $headers.="Content-Type: text/html; charset=utf-8\r\n";
			 $headers.="From: ".$data[person]." <".$data[email].">\r\n";
			 $headers.="X-Mailer: PHP/".phpversion()."\r\n";
			 mail($receiver, "Сообщение c сайта $data[site] от $data[person]", $mailbody, $headers);
			}

		 private static function response_send() {
			 /*формируем ответ и отправляем его клиенту, выполнение скрипта закончено*/
			 if(self::$errCount!==0) {
				 $response[send] = 0;
				 $response[errCount] = self::$errCount;
				 $response[errMessage] = self::$errMessage;
				}
			 else {
				 $response[send] = 1;
				}
			 echo json_encode($response);
			}

		 private static function obj_and_sess_destroy() {
			 $_POST = array();
			 $_GET = array();
			 $_SESSION = array();
			 unset($_COOKIE[session_name()]);
			 session_destroy();
			 self::$time = 0;
			 self::$errCount = 0;
			 self::$errMessage = "";
			 self::$formConfig = array();
			 self::$sourceData = array();
			 exit();
			}
		}
Form::main();
?>
