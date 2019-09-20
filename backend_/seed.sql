DROP DATABASE if exists backend_ish;
CREATE DATABASE tvlist;

\c tvlist 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL
);