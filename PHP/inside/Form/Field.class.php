<?php
class Field {
	 private static $objCache = array();//Кэш-массив для однажды созданных объектов
	 //Закрытый конструктор класса Field
	 private function __construct($field_Properties) {
		 foreach($field_Properties as $property=>$value) {
			 $this->$property = $value;
			}
		}
	 //Публичный метод для создания новых объектов или доступа к уже имеющимся в кэш-массиве
	 public function field_get($field_ID, $field_Properties) {
		 if(isset(self::$objCache[$field_ID]))
			 return self::$objCache[$field_ID];
		 return self::$objCache[$field_ID] = new self($field_Properties);
		}
	 public function property_get($field_ID, $field_Property) {
		 if(isset(self::$objCache[$field_ID]))
			return self::$objCache[$field_ID]->$field_Property;
		 exit("Объект, для которого запрошено значение свойства, не существует!");
		}
	}
?>