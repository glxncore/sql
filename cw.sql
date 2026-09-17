mysql> select * from students;
+----+-------+------+------------------------+
| id | name  | age  | course                 |
+----+-------+------+------------------------+
|  1 | John  |   21 | Computer Science       |
|  2 | Rahul |   22 | Information Technology |
|  3 | Anu   |   20 | Computer Science       |
|  4 | John  |   21 | Computer Science       |
|  5 | Rahul |   22 | Information Technology |
|  6 | Anu   |   20 | Computer Science       |
|  7 | John  |   21 | Computer Science       |
|  8 | Rahul |   22 | Information Technology |
|  9 | Anu   |   20 | Computer Science       |
+----+-------+------+------------------------+


mysql> SELECT * FROM students WHERE age > 20;
+----+-------+------+------------------------+
| id | name  | age  | course                 |
+----+-------+------+------------------------+
|  1 | John  |   21 | Computer Science       |
|  2 | Rahul |   22 | Information Technology |
|  4 | John  |   21 | Computer Science       |
|  5 | Rahul |   22 | Information Technology |
|  7 | John  |   21 | Computer Science       |
|  8 | Rahul |   22 | Information Technology |
+----+-------+------+------------------------+


mysql> SELECT * FROM students WHERE department = 'Computer Science' OR department = 'Physics';
ERROR 1054 (42S22): Unknown column 'department' in 'where clause'
mysql> SELECT * FROM students WHERE course = 'Computer Science' OR course = 'Physics';
+----+------+------+------------------+
| id | name | age  | course           |
+----+------+------+------------------+
|  1 | John |   21 | Computer Science |
|  3 | Anu  |   20 | Computer Science |
|  4 | John |   21 | Computer Science |
|  6 | Anu  |   20 | Computer Science |
|  7 | John |   21 | Computer Science |
|  9 | Anu  |   20 | Computer Science |
+----+------+------+------------------+


mysql> ALTER TABLE students ADD COLUMN grade INT;


mysql> DESCRIBE students;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
| course | varchar(100) | YES  |     | NULL    |                |
| grade  | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> UPDATE students SET grade = 85 WHERE id = 1;
Query OK, 1 row affected (0.01 sec)


mysql> UPDATE students SET grade = 90 WHERE id = 3;


mysql> UPDATE students SET grade = 78 WHERE id = 2;


mysql> UPDATE students SET grade = 92 WHERE id = 4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students SET grade = 70 WHERE id = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students SET grade = 88 WHERE id = 6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM students;
+----+-------+------+------------------------+-------+
| id | name  | age  | course                 | grade |
+----+-------+------+------------------------+-------+
|  1 | John  |   21 | Computer Science       |    85 |
|  2 | Rahul |   22 | Information Technology |    78 |
|  3 | Anu   |   20 | Computer Science       |    90 |
|  4 | John  |   21 | Computer Science       |    92 |
|  5 | Rahul |   22 | Information Technology |    70 |
|  6 | Anu   |   20 | Computer Science       |    88 |
|  7 | John  |   21 | Computer Science       |  NULL |
|  8 | Rahul |   22 | Information Technology |  NULL |
|  9 | Anu   |   20 | Computer Science       |  NULL |
+----+-------+------+------------------------+-------+
9 rows in set (0.00 sec)

mysql> UPDATE students SET grade = 84 WHERE id = 7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students SET grade = 88 WHERE id = 8;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students SET grade = 91 WHERE id = 9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM students;
+----+-------+------+------------------------+-------+
| id | name  | age  | course                 | grade |
+----+-------+------+------------------------+-------+
|  1 | John  |   21 | Computer Science       |    85 |
|  2 | Rahul |   22 | Information Technology |    78 |
|  3 | Anu   |   20 | Computer Science       |    90 |
|  4 | John  |   21 | Computer Science       |    92 |
|  5 | Rahul |   22 | Information Technology |    70 |
|  6 | Anu   |   20 | Computer Science       |    88 |
|  7 | John  |   21 | Computer Science       |    84 |
|  8 | Rahul |   22 | Information Technology |    88 |
|  9 | Anu   |   20 | Computer Science       |    91 |
+----+-------+------+------------------------+-------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM students WHERE grade BETWEEN 70 AND 90;
+----+-------+------+------------------------+-------+
| id | name  | age  | course                 | grade |
+----+-------+------+------------------------+-------+
|  1 | John  |   21 | Computer Science       |    85 |
|  2 | Rahul |   22 | Information Technology |    78 |
|  3 | Anu   |   20 | Computer Science       |    90 |
|  5 | Rahul |   22 | Information Technology |    70 |
|  6 | Anu   |   20 | Computer Science       |    88 |
|  7 | John  |   21 | Computer Science       |    84 |
|  8 | Rahul |   22 | Information Technology |    88 |
+----+-------+------+------------------------+-------+
7 rows in set (0.00 sec)

mysql>