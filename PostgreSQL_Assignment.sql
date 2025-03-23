
-- books table created
CREATE table Books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price DECIMAL(7,2) CHECK 
    (price >= 0) NOT NULL,
    -- price should be max 99999.99
    stock INTEGER CHECK (stock >= 0) NOT NULL,
    published_year INTEGER
);

-- insert data into book tables

insert into Books (title, author, price, stock, published_year)  
VALUES  
    ('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),  
    ('Clean Code', 'Robert C. Martin', 35.00, 5, 2008),  
    ('You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),  
    ('Refactoring', 'Martin Fowler', 50.00, 3, 1999),  
    ('Database Design Principles', 'Jane Smith', 20.00, 0, 2018);

-- SELECT * from books

-- Create customers table

create TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- insert into data this table

INSERT INTO customers (id, name, email, joined_date)
VALUES 
    (1, 'Alice', 'alice@email.com', '2023-01-10'),
    (2, 'Bob', 'bob@email.com', '2022-05-15'),
    (3, 'Charlie', 'charlie@email.com', '2023-06-20');

-- SELECT * from customers

-- create orders table

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id) ON DELETE SET NULL,
    book_id INTEGER REFERENCES books(id) ON DELETE SET NULL,
    quantity INTEGER CHECK (quantity > 0) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert the data into orders
INSERT INTO orders (id, customer_id, book_id, quantity, order_date)
VALUES 
    (1, 1, 2, 1, '2024-03-10 00:00:00'),
    (2, 2, 1, 1, '2024-02-20 00:00:00'),
    (3, 1, 3, 2, '2024-03-05 00:00:00');

    -- SELECT * FROM orders

-- sampaled data

SELECT * from books 

SELECT * from customers 

SELECT * from orders


--1 Find books that are out of stock

SELECT title FROM Books where stock = 0;

--2 Retrieve the most expensive book in the store.

select * from books where price = (SELECT max(price) from books)

-- first retrive which is expensive then show all data

-- 3 Find the total number of orders placed by each customer.

SELECT customers.name,count(*) from orders join customers on customers.id = orders.customer_id GROUP BY customers.name

-- 4 Calculate the total revenue generated from book sales.

SELECT sum(orders.quantity * books.price) as total_revenue
FROM orders
JOIN books  on orders.book_id = books.id;

-- order quantity * price is total cost of selling price which is sum by functions

-- 5 List all customers who have placed more than one order.

select customers.name,count(orders.customer_id) from orders join customers on orders.customer_id = customers.id GROUP BY customers.name having count(orders.customer_id) > 1

-- first off all join the both table and group by all table by unique name and find the count of all unique table which occurs how much time

-- 6  Find the average price of books in the store.

SELECT round(avg(price),2) as average_book_price
from books;

-- round use to define to describe number after dosomik

-- 7 Increase the price of all books published before 2000 by 10%

-- 10 % increase means (10 + 100)/100   110 /100    11 / 10  === 1.10

UPDATE books 
  set price = price * 1.10
  where published_year < 2000

--   select * from books

-- 8 Delete customers who haven't placed any orders.

delete from customers where id not in (select customer_id from orders)

-- SELECT * from customers 





