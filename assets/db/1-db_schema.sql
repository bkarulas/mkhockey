drop database if exists mkhockey;

create database mkhockey;

use mkhockey;

CREATE TABLE `positions` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `pos` varchar(255) NOT NULL
);

INSERT INTO positions (pos) VALUES ('Goalie'), ('Defense'), ('Forward'), ('Def/For');

SELECT * FROM positions;
