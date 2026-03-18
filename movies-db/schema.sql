-- Schema for the movies database
-- Creates the movies table with title, director, and year columns

CREATE TABLE IF NOT EXISTS movies (
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    title    TEXT    NOT NULL,
    director TEXT    NOT NULL,
    year     INTEGER NOT NULL
);
