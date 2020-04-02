-- Table - person
-- 1
CREATE TABLE person
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

-- 2
INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Raxa', '24', '234cm', 'Glendale', 'black'),
    ('Bob', '45', '123cm', 'San Diego', 'red'),
    ('Dylan', '56', '567cm', 'Houston', 'green'),
    ('Scott', '32', '432cm', 'Space', 'yellow'),
    ('Larry', '19', '431cm', 'Las Vegas', 'green');

-- 3
SELECT *
FROM person
ORDER BY height DESC;

-- 4
SELECT *
FROM person
ORDER BY height;

-- 5
SELECT *
FROM person
ORDER BY age DESC;

-- 6
SELECT *
FROM person
WHERE age > 20;

-- 7
SELECT *
FROM person
WHERE age = 18;

-- 8 -- LESS THAN 20 + OLDER THAN 30?
SELECT *
FROM person
WHERE age < 20 OR age > 30;

-- 9
SELECT *
FROM person
WHERE age != 27;

-- 10
SELECT *
FROM person
WHERE favorite_color != 'red';

-- 11
SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- 12
SELECT *
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- 14
SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');


-- Table - orders
-- 1
CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quanity INTEGER
);
-- 2
INSERT INTO orders
    (person_id, product_name, product_price, quanity)
VALUES
    (2, 'Chicken Alfredo', 12.99, 1),
    (4, 'Meatloaf', 10.47, 2);
-- 3
SELECT *
FROM orders;
-- 4
SELECT SUM(quanity)
FROM orders;
-- 5
SELECT SUM(product_price)
FROM orders;
-- 6
SELECT SUM(product_price * quanity)
FROM orders
WHERE person_id = 2;

-- Table - artist
-- 1
INSERT INTO artist
    (name)
VALUES
    ('Raxa Lord'),
    ('Riff Raff'),
    ('Kid Cudi');
-- 2
SELECT *
FROM artist
ORDER BY name 
DESC LIMIT 10;
-- 3
SELECT * 
FROM artist
ORDER BY name 
ASC LIMIT 5;
-- 4
SELECT *
FROM artist
WHERE nname LIKE 'Black%';
-- 5
SELECT *
FROM artist
WHERE name LIKE '%Black&';

-- Table - employee
-- 1
SELECT first_name, last_name
FROM employee
WHERE country = 'Calgary';
-- 2
SELECT MAX(birth_date)
FROM employee;
-- 3
SELECT MIN(birth_date)
FROM employee;
-- 4
SELECT *
FROM employees
WHERE reports_to = 2;
-- 5
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- Table - invoice
-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8