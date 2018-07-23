DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE  bamazon_DB;
CREATE TABLE product(
    id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (50)  NULL ,
    department_name VARCHAR (50)  NULL,
    price DECIMAL(10, 2)  NULL,
    quantity INTEGER NULL,
    PRIMARY KEY (id)
);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("transformers", "toys", 10.20, 50);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("hot wheels", "toys", 2.25, 20);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("iphone", "electronics", 750.75, 10);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("samsung phone", "electronics", 650.25, 15);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("samsung tv", "electronics", 450.10, 75);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("nike shoes", "apparel", 70.10, 30);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("adidas shoes","apparel", 65.25, 40);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("Under Armour shoes", "apparel", 75.30, 25);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("the davinci code", "books", 10.25, 100);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("bible", "books", 20.25, 200);
INSERT INTO product (product_name, department_name,price, quantity)
VALUEs ("angels and demons", "books", 10.75, 150);




 

