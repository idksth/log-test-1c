﻿
&НаСервереБезКонтекста
Процедура ВыполнитьЗапросНаСервере()



	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Номенклатура.Наименование,
		|	Номенклатура.ЦенаПродажи,
		|	Номенклатура.ОснЕдиницаИзмерения
		|ИЗ
		|	Справочник.Номенклатура КАК Номенклатура
		|ГДЕ
		|	Номенклатура.ЦенаПродажи В (5,10,50)";
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		// Вставить обработку выборки ВыборкаДетальныеЗаписи
	КонецЦикла;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА










	// Вставить содержимое обработчика.
КонецПроцедуры

&НаКлиенте
Процедура ВыполнитьЗапрос(Команда)
	Сообщение = Новый СообщениеПользователю;
	Сообщение.Текст = "изменение";
	Сообщение.Сообщить();
	ВыполнитьЗапросНаСервере();
КонецПроцедуры
