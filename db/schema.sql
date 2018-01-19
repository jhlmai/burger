DROP DATABASE IF EXISTS burgers_db;

CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	burger_name VARCHAR(100) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured) VALUES ('Single-Single', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Double-Double', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Triple-Triple', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('The Quad', false);

SELECT * FROM burgers;