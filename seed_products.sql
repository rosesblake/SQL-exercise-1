DROP DATABASE IF EXISTS  products_db;

CREATE DATABASE products_db;

\c products_db

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price FLOAT CHECK (price > 0),
  can_be_returned BOOLEAN NOT NULL
);
--took alot of chat gpt to figure out that the files don't relate and i have to enter it in the same script to see it in terminal as far as i know--
-- INSERT INTO products (name, price, can_be_returned)
-- VALUES
--     ('chair', 44.00, FALSE),
--     ('stool', 25.99, TRUE),
--     ('table', 124.00, FALSE);

-- UPDATE products SET price = price - 20;

-- DELETE FROM products WHERE price < 25;

-- UPDATE products SET price = price + 20;

-- UPDATE products SET can_be_returned = TRUE;
