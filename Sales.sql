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

