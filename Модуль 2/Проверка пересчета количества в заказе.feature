﻿#language: ru

@tree

Функционал: Проверка пересчета количества в заказе

Как Менеджер по продажам я хочу
изменить количество товаров в заказе 
чтобы привести объем заказа не превышал складских остатков

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка пересчета количества в заказе
* Открытие формы создания заказа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
* Заполнение шапки заказа
	И Заполнение шапки заказа
* Добавление первой позиции в заказ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверка на расчет количества в документе после добавления первой строки
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
* Указание цены и изменение количества в первой строке 
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка на расчет количества после изменения количества в первой строке
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '5'	
* Добавление второй позиции в заказ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000032' | 'Торт '        |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверка на расчет количества в документе после добавления второй строки
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '6'
* Указание цены и изменение количества во второй строке 
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '250,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка на расчет количества после изменения количества во второй строке
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '7'

