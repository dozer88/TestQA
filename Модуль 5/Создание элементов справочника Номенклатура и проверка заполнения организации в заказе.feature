#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание элементов справочника Номенклатура

	И Я запоминаю значение выражения '0' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура " + $Шаг$' в переменную "НаименованиеНоменклатуры"	
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                                                  | 'Description_en'             | 'Description_ru'             |
		| '{"e1cib/data/Catalog.Items?ref=" + СтрЗаменить(Новый УникальныйИдентификатор(), "-", "")}' | '$НаименованиеНоменклатуры$' | '$НаименованиеНоменклатуры$' |

Сценарий: Проверка заполнения организации в заказе
Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
И я нажимаю на кнопку с именем 'FormCreate'
И я нажимаю кнопку выбора у поля с именем "Partner"
И в таблице "List" я активизирую поле с именем "Description"
И в таблице "List" я выбираю текущую строку
И я нажимаю кнопку выбора у поля с именем "Agreement"
И в таблице "List" я активизирую поле с именем "Description"
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Табличная часть товаров будет обновлена'
И я нажимаю на кнопку с именем 'FormOK'
Если поле с именем "Company" заполнено Тогда
Иначе
	И я нажимаю кнопку выбора у поля с именем "Company"
	И в таблице "List" я выбираю текущую строку

	