CREATE DATABASE test_db;

USE test_db;

SHOW DATABASES;

CREATE TABLE people (
	person_id int,
	last_name varchar(255),
	first_name varchar(255),
	address varchar(255),
	city varchar(255) 
);

INSERT INTO `test_db`.`people` (`person_id`, `last_name`, `first_name`, `address`, `city`) 
VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1', 'México'),
	   ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'),
	   ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');

/* Create customers table */

CREATE TABLE customers (
	customer_id int,
	customer_name varchar(255),
	contact_name varchar(255),
	country varchar(255)
);

INSERT INTO `test_db`.`customers` (`customer_id`, `customer_name`, `contact_name`, `country`) 
VALUES (1, 'Customer A', 'Contact A', 'Brasil'),
	   (2, 'Customer B', 'Contact B', 'Argentina'),
	   (3, 'Customer C', 'Contact C', 'Brasil');

/* Create view customers */

CREATE VIEW v_brasil_customers AS
	SELECT customer_name, contact_name
	FROM customers
	WHERE country = 'Brasil';

/* Create view people */
CREATE VIEW v2_people AS
	SELECT person_id, last_name, city
	FROM people;
