insert into mobiles values(1,'samsung','galaxt',1200,30),(2,'redmi''note1',1500,25);
select brand,model from mobile where cost >13000 or stock<15;
update mobile set  stock=stock+5,price=12500 where model=narzo50;
delete from mobile where id =2;
select max(price) as highest_price , min(price) as lowest_price from mobile ;
select sum(stock) from mobile;
select brand,mobile from mobile orderby price desc limit 2;
-- 1. Add the five books
INSERT INTO books(id, title, author, price, stock) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

-- 2. Display books costing less than 450 AND stock more than 30
SELECT * FROM books WHERE price < 450 AND stock > 30;

-- 3. Update Deep Work: stock = 45 and price = 420
UPDATE books SET stock = 45, price = 420 WHERE title = 'Deep Work';

-- 4. Delete Ikigai
DELETE FROM books WHERE title = 'Ikigai';

-- 5. Show the average book price
SELECT AVG(price) AS average_price FROM books;

-- 6. Show the total number of books currently in the table
SELECT COUNT(*) AS total_books FROM books;

-- 7. Display the top 3 most expensive books
SELECT * FROM books ORDER BY price DESC LIMIT 3;