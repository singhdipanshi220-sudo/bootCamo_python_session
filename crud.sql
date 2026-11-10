CREATE TABLE menu (
    id INTEGER PRIMARY KEY,
    item VARCHAR(50),
    category VARCHAR(50),
    price INTEGER,
    stock INTEGER
)

 
 INSERT INTO menu (id, item, catagory, stock, price)
 VALUES
 (15, 'paratha', 'meal',40, 25),
 (16, 'thali', 'meal', 95, 4),
 (17, 'samosa', 'snacks', 45, 49),
(18, 'coffee', 'drink', 60, 2);


 SELECT * from menu;


UPDATE menu 
SET price = price + 1;

UPDATE menu
SET item stosk = stock - 4
WHERE item = 'paratha';

UPDATE menu 
SET item stock = stock - 5
WHERE item = 'thali'

SELECT * FROM menu

DELETE FROM menu
WHERE stock = 0;

SELECT * from menu

SELECT item, category, price, stock
FROM menu
ORDER BY category, item;
