<?php
class Form_config {
	 public static $dirArchiv = "mail_archiv/", 
				 $mailTemplate = "inside/Form/mail.html",
				 $address = array(
					 10	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>",
					 11	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>",
					 12	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>",
					 13	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>",
					 14	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>",
					 21	=> "Бухгалтерия ЕвроТрейд: <nev@eurotrade-et.ru>",
					 22	=> "Бухгалтерия ЕвроТрейд: <nev@eurotrade-et.ru>",
					 31	=> "Администратору сайта ЕвроТрейд: <web@eurotrade-et.ru>",
					 32	=> "Администратору сайта ЕвроТрейд: <web@eurotrade-et.ru>",
					 99	=> "Отдел продаж ЕвроТрейд: <sale@eurotrade-et.ru>"
					);
	 private static $formConfig = array(
		 "surname"	=> array(
			 "fieldLabel"	=> "[Ваша Фамилия:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 2,
			 "maxLength"	=> 25,
			 "regexp"		=> '/^[a-zA-Z][a-zA-Z\-]*[a-zA-Z]$|^[а-яА-ЯёЁ][а-яА-ЯёЁ\-]*[а-яА-ЯёЁ]/u'
			),
		 "name"		=> array(
			 "fieldLabel"	=> "[Ваше Имя:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 2,
			 "maxLength"	=> 20,
			 "regexp"		=> '/^[a-zA-Z][a-zA-Z]*[a-zA-Z]$|^[а-яА-ЯёЁ][а-яА-ЯёЁ]*[а-яА-ЯёЁ]/u'
			),
		 "pname"	 => array(
			 "fieldLabel"	=> "[Ваше Отчество:]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 2,
			 "maxLength"	=> 15,
			 "regexp"		=> '/^[a-zA-Z][a-zA-Z]*[a-zA-Z]$|^[а-яА-ЯёЁ][а-яА-ЯёЁ]*[а-яА-ЯёЁ]/u'
			),
		 "firm"		=> array(
			 "fieldLabel"	=> "[Название Вашего предприятия:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 2,
			 "maxLength"	=> 50,
			 "regexp"		=> '/.*/'
			),
		 "email"	=> array(
			 "fieldLabel"	=> "[Ваш адрес эл.почты:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 2,
			 "maxLength"	=> 50,
			 "regexp"		=> '/^[a-zA-Zа-яА-Я][0-9a-zA-Zа-яА-ЯёЁ.\-_]*@[0-9a-zA-Zа-яА-ЯёЁ.\-_]+[.][a-zA-Zа-яА-Я]{2,6}/u'
			),
		 "areaCode"	=> array(
			 "fieldLabel"	=> "[Ваш телефонный номер: Код]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 3,
			 "maxLength"	=> 8,
			 "regexp"		=> '/[(]?[\d]{3}[-]?[\d]{0,2}[)]?/'
			),
		 "phoneNum"	=> array(
			 "fieldLabel"	=> "[Ваш телефонный номер: Номер]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 5,
			 "maxLength"	=> 9,
			 "regexp"		=> '/^[\d][\d-]{3,7}[\d]$/'
			),
		 "addNum"	=> array(
			 "fieldLabel"	=> "[Ваш телефонный номер: Доб.№]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 0,
			 "maxLength"	=> 3,
			 "regexp"		=> '/[\d]{0,3}/'
			),
		 "feedback"	=> array(
			 "fieldLabel"	=> "[Предпочитаемый вид связи:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 5,
			 "maxLength"	=> 6,
			 "regexp"		=> '/(e-mail|phone)/'
			),
		 "fromTime"	=> array(
			 "fieldLabel"	=> "[Желаемое время звонка: c]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 2,
			 "maxLength"	=> 2,
			 "regexp"		=> '/[1][0-9]/'
			),
		 "toTime"	=> array(
			 "fieldLabel"	=> "[Желаемое время звонка: до]",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 2,
			 "maxLength"	=> 2,
			 "regexp"		=> '/[1][0-9]/'
			),
		 "subj"		=> array(
			 "fieldLabel"	=> "[Тема сообщения:]",
			 "subjcode"		=> "",
			 "value"		=> "",
			 "required"		=> 0,
			 "minLength"	=> 2,
			 "maxLength"	=> 2,
			 "regexp"		=> '/10|11|12|13|14|21|22|31|32|99/',
			 10 => "Тема не выбрана",
			 11	=> "Технический вопрос",
			 12	=> "Коммерческий вопрос",
			 13	=> "Юридический вопрос",
			 14	=> "Транспортный вопрос",
			 21	=> "Взаиморасчеты",
			 22	=> "Документооборот",
			 31	=> "Ошибки на сайте",
			 32	=> "Отзывы и предложения",
			 99	=> "Тема отсутствует в списке выбора",
			),
		 "msg"		=> array(
			 "fieldLabel"	=> "[Текст сообщения:]",
			 "value"		=> "",
			 "required"		=> 1,
			 "minLength"	=> 30,
			 "maxLength"	=> 3000,
			 "regexp"		=> '/^[0-9a-zA-Zа-яА-Я][\s\S]+/'
			)
		);

	 public static function err_text_get($err_Code=0, $field_Name="") {
		 $errorText = array(
			 0	=> "Получен не зарегистрированный код ошибки! Источник: <span style='color:blue'>$field_Name</span> <br/>",
			 1	=> "Текущий SID не имеет необходимых данных! Данный скрипт должен быть вызван из формы на сайте!",
			 2	=> "Введенная Вами в поле <span style='color:blue'>$field_Name</span> комбинация цифр не совпадает с кодом, изображенным на картинке!<br/>",
			 3	=> "Предупреждение для поля <span style='color:blue'>$field_Name</span> Вы не указали предпочитаемый вид связи: эл.почта или телефон!<br/>",
			 4	=> "Данные для поля <span style='color:blue'>$field_Name</span> не существуют во входном массиве данных!<br/>",
			 5	=> "Не заполнено обязательное поле <span style='color:blue'>$field_Name</span>!<br/>",
			 6	=> "Данные в обязательном поле <span style='color:blue'>$field_Name</span> имеют длинну менее допустимого предела!<br/>",
			 7	=> "Данные в обязательном поле <span style='color:blue'>$field_Name</span> не соответствуют заданному шаблону!<br/>"
			);
		 $errnum = count($errorText);
		 if ($err_Code<0 || $err_Code>$errnum-1) {
			 $err_Code = 0;
			 $field_Name = "err_text_get";
			}
		 return $errorText[$err_Code];
		}
	 public static function form_config_get() {
		 return self::$formConfig;
		}

	 public static function prop_value_get($field_ID, $prop_ID) {
		 return self::$formConfig[$field_ID][$prop_ID];
		}
	}
?>