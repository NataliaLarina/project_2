CREATE DATABASE makeup_kit;
\c makeup_kit;
CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE products (id SERIAL PRIMARY KEY, category VARCHAR(20), image BYTEA, product VARCHAR(255), brand VARCHAR(255), name VARCHAR(255), description VARCHAR(255), store VARCHAR(255), purchasedate VARCHAR(255), expirationdate VARCHAR(255), price DECIMAL, weblink VARCHAR(512), customer_id INTEGER REFERENCES accounts (id));

#date
