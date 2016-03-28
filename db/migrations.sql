CREATE DATABASE makeup_kit;
\c makeup_kit
CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE skincare (id SERIAL PRIMARY KEY, type VARCHAR(255), brand VARCHAR(255), image BYTEA, description VARCHAR(255), store VARCHAR(255), date_purchased INTEGER, expiration_date INTEGER, price DECIMAL, web_link VARCHAR(512));
CREATE TABLE face (id SERIAL PRIMARY KEY, type VARCHAR(255), brand VARCHAR(255), image BYTEA, description VARCHAR(255), store VARCHAR(255), date_purchased INTEGER, expiration_date INTEGER, price DECIMAL, web_link VARCHAR(512));
CREATE TABLE eyes (id SERIAL PRIMARY KEY, type VARCHAR(255), brand VARCHAR(255), image BYTEA, description VARCHAR(255), store VARCHAR(255), date_purchased INTEGER, expiration_date INTEGER, price DECIMAL, web_link VARCHAR(512));
CREATE TABLE lips (id SERIAL PRIMARY KEY, type VARCHAR(255), brand VARCHAR(255), image BYTEA, description VARCHAR(255), store VARCHAR(255), date_purchased INTEGER, expiration_date INTEGER, price DECIMAL, web_link VARCHAR(512));
