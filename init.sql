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
-- 2
-- 3
-- 4
-- 5
-- 6

-- Table - artist
-- 1
-- 2
-- 3
-- 4
-- 5

-- Table - employee
-- 1
-- 2
-- 3
-- 4
-- 5

-- Table - invoice
-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8