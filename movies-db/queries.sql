-- SQL commands for movies database
-- This file contains foundational SELECT query examples for the movies table

-- Retrieve only the title column
SELECT title
FROM movies;

-- Retrieve only the director column
SELECT director
FROM movies;

-- Retrieve both the title and director columns
SELECT title, director
FROM movies;

-- Retrieve both the title and year columns
SELECT title, year
FROM movies;

-- Retrieve all columns from the movies table
SELECT *
FROM movies;
SELECT *
FROM movies
WHERE id = 6;

SELECT *
FROM movies
WHERE year BETWEEN 2000 AND 2010;

SELECT *
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

SELECT title, year
FROM movies
WHERE id <= 5;

SELECT *
FROM movies
WHERE title LIKE 'Toy Story%';

SELECT *
FROM movies
WHERE director = 'John Lasseter';

SELECT title, director
FROM movies
WHERE director != 'John Lasseter';

SELECT *
FROM movies
WHERE title LIKE 'WALL-%';