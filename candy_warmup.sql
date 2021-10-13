USE candy_db;
SHOW TABLES;
DROP TABLE IF EXISTS candies;
DROP TABLE IF EXISTS types;

CREATE TABLE types (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(75) NOT NULL,
                       description VARCHAR(150) NOT NULL,
                       PRIMARY KEY(id)
);



CREATE table candies (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price_in_cents INT NOT NULL,
    description VARCHAR(100) NOT NULL,
    type_id INT UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY(type_id) REFERENCES types(id)
);


INSERT INTO types (name, description) VALUES
    ('Chewing Gum', 'Great for chewing!'),
    ('Chocolate', 'Great for chocolate goodness!'),
    ('Hard Candy', 'Don’‘t bite too hard!'),
    ('Gummy Candy', 'Not too hard; not too soft.');

INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
    ('Doublemint Gum', 159, 'Standard chewing gum', 1),
    ('Orbit Gum', 110, 'Another standard chewing gum', 1),
    ('Hershey Bar', 210, 'Standard chocolate bar', 2),
    ('Gushers', 312, 'Nice and sour!', 4),
    ('Sour Patch Kids', 206, 'Quite sour!', 4),
    ('M&Ms', 199, 'Crunchy and chocolatey', 2);



SELECT t.name as 'Candy type', c.name FROM candies c
JOIN types t
ON c.type_id = t.id
WHERE price_in_cents > 200;









-- ================================= WARM UP
-- Create a database called candy_db
-- Create a candies table with the following columns (choose the data type most appropriate for the column):
--   id (primary key)
--   name
--   price_in_cents
--   description
--   type_id (a foreign key pointing to the id column of the types table)
-- Create a types table with the following columns:
--   id (primary key)
--   name
--   description
-- Seed the database with the following insert statements:


-- What is the relationship between the candies and types table?
-- Write a query to display the type name and candy name for all candies over 200 cents.