 CREATE TABLE books (id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(100), author VARCHAR(100), price INT, genre VARCHAR(50));
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO books(id, title, author, price, genre) VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 450, 'Fiction'), (2, 'A Brief History of Time', 'Stephen Hawking', 500, 'Science'), (3, 'The Alchemist', 'Paulo Coelho', 350, 'Fiction'), (4, 'Sapiens', 'Yuval Noah Harari', 600, 'History'), (5, 'Inferno', 'Dan Brown', 400, 'Fiction');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM books WHERE price > 400;
+----+-------------------------+---------------------+-------+---------+
| id | title                   | author              | price | genre   |
+----+-------------------------+---------------------+-------+---------+
|  1 | The Great Gatsby        | F. Scott Fitzgerald |   450 | Fiction |
|  2 | A Brief History of Time | Stephen Hawking     |   500 | Science |
|  4 | Sapiens                 | Yuval Noah Harari   |   600 | History |
+----+-------------------------+---------------------+-------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM books WHERE genre IN ('History', 'Science', 'Fiction');
+----+-------------------------+---------------------+-------+---------+
| id | title                   | author              | price | genre   |
+----+-------------------------+---------------------+-------+---------+
|  1 | The Great Gatsby        | F. Scott Fitzgerald |   450 | Fiction |
|  2 | A Brief History of Time | Stephen Hawking     |   500 | Science |
|  3 | The Alchemist           | Paulo Coelho        |   350 | Fiction |
|  4 | Sapiens                 | Yuval Noah Harari   |   600 | History |
|  5 | Inferno                 | Dan Brown           |   400 | Fiction |
+----+-------------------------+---------------------+-------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM books WHERE title = 'The Great Gatsby';
+----+------------------+---------------------+-------+---------+
| id | title            | author              | price | genre   |
+----+------------------+---------------------+-------+---------+
|  1 | The Great Gatsby | F. Scott Fitzgerald |   450 | Fiction |
+----+------------------+---------------------+-------+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM books WHERE author != 'Dan Brown';
+----+-------------------------+---------------------+-------+---------+
| id | title                   | author              | price | genre   |
+----+-------------------------+---------------------+-------+---------+
|  1 | The Great Gatsby        | F. Scott Fitzgerald |   450 | Fiction |
|  2 | A Brief History of Time | Stephen Hawking     |   500 | Science |
|  3 | The Alchemist           | Paulo Coelho        |   350 | Fiction |
|  4 | Sapiens                 | Yuval Noah Harari   |   600 | History |
+----+-------------------------+---------------------+-------+---------+
