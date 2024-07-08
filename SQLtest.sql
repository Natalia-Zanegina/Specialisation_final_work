DROP DATABASE IF EXISTS human_friends;
CREATE DATABASE human_friends;
USE human_friends;

DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO dogs (name, type, birth_date, commands)
VALUES
	 ('Люси', 'dog', '1996-02-01', 'Апорт Лапу Можно Рядом'),
     ('Герда', 'dog', '2018-12-01', 'Лежать Домой Фу Ползи Голос'),
	 ('Джерри', 'dog', '2014-09-01', 'Место Рядом');


DROP TABLE IF EXISTS cats;
CREATE TABLE cats
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO cats (name, type, birth_date, commands)
VALUES
	 ('Барсик', 'cat', '2022-10-01', 'Голос КоМне'),
     ('Васька', 'cat', '2021-09-10', 'КоМне'),
	 ('Лева', 'cat', '2023-01-01', 'Голос КоМне Рядом');


DROP TABLE IF EXISTS hamsters;
CREATE TABLE hamsters
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO hamsters (name, type, birth_date, commands)
VALUES
	 ('Белый', 'hamster', '2023-02-10', 'Замри'),
	 ('Маня', 'hamster', '2023-01-21', 'Тихо Спать Волчок');


DROP TABLE IF EXISTS horses;
CREATE TABLE horses
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO horses (name, type, birth_date, commands)
VALUES
	 ('Бублик', 'horse', '2019-10-01', 'Тпру Галоп Стоять'),
     ('Проня', 'horse', '2020-09-10', 'Тпру Галоп Стоять'),
	 ('Ласточка', 'horse', '2023-01-01', 'Тпру Галоп Стоять Шагом Гарцуй');


DROP TABLE IF EXISTS camels;
CREATE TABLE camels
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO camels (name, type, birth_date, commands)
VALUES
     ('Старик', 'camel', '1990-09-10', 'Идти Стоп'),
	 ('Бочка', 'camel', '2019-01-01', 'Идти Стоп Гонка Лечь');


DROP TABLE IF EXISTS donkeys;
CREATE TABLE donkeys
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    type varchar(15),
    birth_date DATE,
    commands varchar(250)
);

INSERT INTO donkeys (name, type, birth_date, commands)
VALUES
     ('Белоух', 'donkey', '1990-09-10', 'Идти Стоп Вьюк'),
	 ('Сарочка', 'donkey', '2019-01-01', 'Идти Стоп Вьюк Лечь');


DROP TABLE IF EXISTS camels;
CREATE TABLE packanimals (
SELECT * FROM horses
union
SELECT * FROM donkeys
);
DROP TABLE IF EXISTS horses;
DROP TABLE IF EXISTS donkeys;


DROP TABLE IF EXISTS young_animals;
CREATE TABLE young_animals
(SELECT * FROM
(
	SELECT * , TIMESTAMPDIFF(MONTH, birth_date, curdate()) AS age_months
	FROM
		(SELECT * FROM dogs
		UNION
		SELECT * FROM cats
		UNION
		SELECT * FROM hamsters
		UNION
		SELECT * FROM packanimals) AS s1) AS s2
 WHERE age_months BETWEEN 12 AND 36);

DROP TABLE IF EXISTS animals;
CREATE TABLE animals(
SELECT * FROM dogs
		UNION
		SELECT * FROM cats
		UNION
		SELECT * FROM hamsters
		UNION
		SELECT * FROM packanimals);