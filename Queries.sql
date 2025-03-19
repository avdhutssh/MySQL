### To Create Use any of the below
CREATE DATABASE IF NOT EXISTS Sales;
#OR
CREATE SCHEMA IF NOT EXISTS Sales;

### Start Using Database
USE sales;

### Create Table
CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

###Exercise-Table
CREATE TABLE customers
(
 customer_id INT, 
 first_name VARCHAR(255), 
 last_name VARCHAR(255), 
 email_address VARCHAR(255),
 number_of_complaints INT
 
);

###Creating a Table - Exercise #1
CREATE TABLE test
(
    test DECIMAL(5,3)
);

###Creating a Table - Exercise #2
CREATE TABLE warehouse
(
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_location VARCHAR(20)
);

###Creating a Table - Exercise #3
CREATE TABLE orders
(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    order_info INT,
    order_value INT,
    order_currency VARCHAR(10)
);

###Creating a Table - Exercise #4
CREATE TABLE products
(
 product_id INT PRIMARY KEY AUTO_INCREMENT,
 product_name VARCHAR(20),
 product_price INT,
 warehouse_id INT
);

###Using DB and tables
##1. By Selecting Database first
USE sales;
SELECT * FROM customers;

##2. Explicitly calling DB
SELECT * FROM sales.customers;

###Delete Table
DROP TABLE sales;

###Create Tables
DROP TABLE customers;
CREATE TABLE customers                                                    
( 
    customer_id INT,  
    first_name varchar(255),  
    last_name varchar(255),  
    email_address varchar(255),   
    number_of_complaints int,   
	primary key (customer_id)
);

CREATE TABLE items                                                                                                                              
(
    item_code varchar(255),
    item varchar(255),   
    unit_price numeric(10,2),
    company_id varchar(255),
	primary key (item_code)
);

CREATE TABLE companies   
(
    company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number int(12),
	primary key (company_id)
);

###Foreign Key
DROP TABLE sales;
DROP TABLE companies;
DROP TABLE customers;
DROP TABLE items;

#FOREIGN KEY constraint - Exercise #1
CREATE TABLE order_info
(
    order_info_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id  INT,
    product_id INT,
    product_quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

#FOREIGN KEY constraint - Exercise #2
CREATE TABLE orders
(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    order_info_id INT,
    order_value INT,
    order_currency VARCHAR(10),
    fOREIGN KEY (order_info_id) REFERENCES order_info(order_info_id)
);

###Unique Key
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
	PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

INSERT INTO customers (first_name, last_name, gender, number_of_complaints)
VALUES ('Av', 'demo', 'M', 0);

SELECT * FROM customers;

###UNIQUE constraint - Exercise #1
CREATE TABLE products
(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    product_price INT,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    UNIQUE KEY (product_name)
);

### Default Key
CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
	PRIMARY KEY (company_id),
	UNIQUE KEY (headquarters_phone_number)
);

INSERT INTO companies(company_id,headquarters_phone_number)
VALUES('1','India');

SELECT * FROM companies;

DROP TABLE companies;

###DEFAULT constraint - Exercise #1
CREATE TABLE products
(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20) DEFAULT 'no-name',
    product_price INT,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    UNIQUE KEY (product_name)
);

###NOT NULL Constraint
CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number VARCHAR(255),
	PRIMARY KEY (company_id)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

#Not Supported in MySql
/** ALTER TABLE companies
ALTER COLUMN company_name DROP NOT NULL; */

###NOT NULL constraint - Exercise #1
CREATE TABLE products
(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20) NOT NULL,
    product_price INT NOT NULL,
    warehouse_id INT NOT NULL
);

###Execute employees.sql file to create employees database
###SELECT - FROM

USE employees;
SHOW TABLES;
SELECT dept_no FROM departments;
SELECT * FROM departments;

###SELECT - FROM - Exercises
USE employees_10;
SELECT * FROM employees;
SELECT emp_no, birth_date, first_name, last_name, gender, hire_date FROM employees;
SELECT * FROM departments;
SELECT dept_no FROM departments;

###WHERE
SELECT * FROM employees
WHERE first_name = 'Elvis';