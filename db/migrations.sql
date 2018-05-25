CREATE DATABASE wreck_chicago;

\c wreck_chicago

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(256) UNIQUE,
	password_digest VARCHAR(256)
);

CREATE TABLE wrecks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(256),
	latitude INT,
	longitude INT,
	depth INT,
	description TEXT,
	image VARCHAR (256),
);

CREATE TABLE user_wrecks (
	id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(id),
	wreck_id INT REFERENCES wrecks(id),
	notes TEXT
);