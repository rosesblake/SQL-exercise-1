-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned)
VALUES
    ('chair', 44.00, FALSE),
    ('stool', 25.99, TRUE),
    ('table', 124.00, FALSE);

UPDATE products SET price = price - 20;

DELETE FROM products WHERE price < 25;

UPDATE products SET price = price + 20;

UPDATE products SET can_be_returned = TRUE;

    --wish i had a walkthrough or had seen anything like this before doing the exercise.--
    --part 3: questions 4-10 display them where? is this just practice?--
