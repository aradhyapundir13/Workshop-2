-- Create tables
CREATE TABLE customers ( customer_id INT PRIMARY KEY,name VARCHAR(50), email VARCHAR(50));
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, total_amount INT, FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
CREATE TABLE products ( product_id INT PRIMARY KEY, product_name VARCHAR(50), price INT);
CREATE TABLE order_items ( order_item_id INT PRIMARY KEY,order_id INT, product_id INT,quantity INT,FOREIGN KEY (order_id) REFERENCES orders(order_id), FOREIGN KEY (product_id) REFERENCES products(product_id));
CREATE TABLE categories ( category_id INT PRIMARY KEY, category_name VARCHAR(50));

-- Insert sample data
INSERT INTO customers (customer_id, name, email) VALUES
    (1, 'Aradhya Pundir', 'aradhya.pundir@gmail.com'),
	(2, 'Satyam Rawat', 'satyam.rawat@gmail.com'),
	(3, 'Ayushi Pundir', 'ayushi.pundir@gmail.com');

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1000),
(2, 'Smartphone', 500),
(3, 'Tablet', 300);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-08-01', 1300),
(2, 2, '2024-08-05', 500),
(3, 3, '2024-08-10', 300);

-- Delete data from all tables
DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM customers;
DELETE FROM categories;

-- Update product prices by a specified percentage
UPDATE products
SET price = price * 1.10; 

select * from products
