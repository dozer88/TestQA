#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBoard

Функционал: Заполнение шапки заказа

Как менеджер по продажам я хочу
заполнить шапку заказа 
чтобы иметь возможность созранить заказ и дозаполнить его состав позднее


Сценарий: Заполнение шапки заказа
	Когда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000012' | 'Мосхлеб ОАО'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'

