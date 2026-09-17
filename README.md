# MySQL Practice

This repository contains my SQL practice work using MySQL.

## Topics Covered

- Creating databases
- Creating tables
- Inserting records
- Selecting data
- Using WHERE conditions
- Using comparison operators
- Using AND / OR
- Using IN
- Using BETWEEN
- Updating records
- Deleting records

## Tables

### Students

The `students` table contains:

- id
- name
- age
- department
- grade

### Books

The `books` table contains:

- id
- title
- author
- price
- genre

## Example Queries

```sql
SELECT * FROM students;

SELECT * FROM students WHERE age > 20;

SELECT * FROM books WHERE price > 400;

SELECT * FROM books WHERE genre IN ('History', 'Science', 'Fiction');

SELECT * FROM books WHERE price BETWEEN 70 AND 90;
