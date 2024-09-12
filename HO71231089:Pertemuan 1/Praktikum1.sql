-- CREATE DATABASE library;

USE library;

CREATE TABLE authors(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null
);

CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT,
isbn VARCHAR(13),
title VARCHAR(100) NOT NULL,
outhor_id INT,
FOREIGN KEY(outhor_id) REFERENCES authors(id)
);

ALTER TABLE authors
ADD nationality VARCHAR(50);

ALTER TABLE books
modify isbn VARCHAR(13) UNIQUE;

SHOW TABLES;

-- NO4
DESCRIBE authors;
DESCRIBE books;

-- NO 5

CREATE TABLE members(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone_number CHAR(10),
	join_date DATE NOT NULL,
	membership_type VARCHAR(50) NOT NULL
);

CREATE TABLE borrowings(
	id INT PRIMARY KEY AUTO_INCREMENT,
	member_id INT NOT NULL,
	book_id INT NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE, 
	FOREIGN KEY(member_id) REFERENCES members(id),
	FOREIGN KEY(book_id) REFERENCES books(id)
);

DESCRIBE members;
DESCRIBE borrowings;

ALTER TABLE books
ADD published_year YEAR NOT NULL;

ALTER TABLE books
ADD genre VARCHAR(50) NOT NULL;

ALTER TABLE books
ADD copies_available INT NOT NULL;

ALTER TABLE books
MODIFY isbn VARCHAR(13) UNIQUE NOT NULL;

ALTER TABLE books
MODIFY author_id INT NOT NULL; 

ALTER TABLE authors
MODIFY nationality VARCHAR(50) NOT NULL;