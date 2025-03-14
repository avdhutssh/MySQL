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