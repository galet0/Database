CREATE DATABASE online_store;
USE online_store;

CREATE TABLE cities(
city_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50)
);


CREATE TABLE customers(
customer_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50),
birthday DATE,
city_id INT,
CONSTRAINT FK_customers_cities FOREIGN KEY (city_id)
REFERENCES cities(city_id)
);


CREATE TABLE orders(
order_id INT PRIMARY KEY NOT NULL,
customer_id INT,
CONSTRAINT FK_orders_customers FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);

CREATE TABLE item_types(
item_type_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50)
);

CREATE TABLE items(
item_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50),
item_type_id INT,
CONSTRAINT FK_items_item_types FOREIGN KEY (item_type_id)
REFERENCES item_types(item_type_id)
);

CREATE TABLE order_items(
order_id INT,
item_id INT,
CONSTRAINT PRIMARY KEY(order_id, item_id)
);





