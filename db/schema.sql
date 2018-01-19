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

INSERT INTO burgers (burger_name) VALUES ('Single-Single');
INSERT INTO burgers (burger_name) VALUES ('Double-Double');
INSERT INTO burgers (burger_name) VALUES ('Triple-Triple');
INSERT INTO burgers (burger_name) VALUES ('The Quad');

SELECT * FROM burgers;