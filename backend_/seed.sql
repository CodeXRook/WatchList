DROP DATABASE if exists backend_ish;
CREATE DATABASE tvlist;

\c tvlist 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    genre_name VARCHAR NOT NULL
);

CREATE TABLE shows (
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    img_url VARCHAR NOT NULL,
    user_id INT REFERENCES users(id),
    genre_id INT REFERENCES genres (id)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    comment_body VARCHAR NOT NULL,
    user_id INT REFERENCES users(id),
    show_id INT REFERENCES shows(id)
);

--INSERT GENRES
INSERT INTO genres (genre_name) VALUES ('Adventure');--1
INSERT INTO genres (genre_name) VALUES ('Drama');--2
INSERT INTO genres (genre_name) VALUES ('Comedy');--3
INSERT INTO genres (genre_name) VALUES ('Fantasy');--4

--INSERT USERS
INSERT INTO users (username) VALUES ('Jon Snow'); -- 1