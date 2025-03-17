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