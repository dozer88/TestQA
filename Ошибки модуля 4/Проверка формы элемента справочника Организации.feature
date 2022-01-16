﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: Проверка формы элемента справочника Организация

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ВыполнитьПозже
Сценарий: Проверка доступности вкладок Валюта и налоги
* Открытие элемента	
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
* Установка флага
	И я устанавливаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" присутствует на форме
	И элемент формы "Вид налога" присутствует на форме
* Снятие флага
	И я снимаю флаг с именем "OurCompany"
	И элемент формы "Валюты" существует и невидим на форме
	И элемент формы "Вид налога" существует и невидим на форме
		
@ВыполнитьСейчас	
Сценарий: Проверка функциональной опции Использовать организации
	И Я устанавливаю в константу "UseCompanies" значение "False"
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	И элемент формы "Организация" отсутствует на форме	
	И я закрываю все окна клиентского приложения
	И Я устанавливаю в константу "UseCompanies" значение "True"
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	И элемент формы "Организация" присутствует на форме	
	Когда Проверяю шаги на Исключение:
		|'И элемент формы "Организация" отсутствует на форме'|	
	И я закрываю все окна клиентского приложения

@ВыполнитьПозже
Сценарий: Проверка заполнения справочника Организации
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'Description_ru' я ввожу текст 'Тестовый контрагент'
	И из выпадающего списка с именем "Type" я выбираю точное значение 'Организация'
	И я нажимаю на кнопку с именем 'FormWrite'
	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовый контрагент'
	Тогда элемент формы с именем "Type" стал равен 'Организация'
	И я нажимаю на кнопку с именем 'FormWriteAndClose'
	И я закрываю все окна клиентского приложения		
		
