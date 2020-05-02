drop database if exists draft_db;

create database draft_db;

use draft_db;

CREATE TABLE `player` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `position_id` int NOT NULL,
  `team_id` int DEFAULT null,
  `draft_id` int NOT NULL,
  `picked` int DEFAULT null,
  `updated` datetime
);

CREATE TABLE `team` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `manager_id` int,
  `pick` int DEFAULT null,
  `draft_id` int NOT NULL,
  `updated` datetime
);

CREATE TABLE `position` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `position` varchar(255) NOT NULL,
  `updated` datetime
);

CREATE TABLE `draft` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `draft_name` varchar(255) NOT NULL,
  `update` datetime
);

CREATE TABLE `draft_info` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `rounds` int NOT NULL,
  `teams` int NOT NULL,
  `draft_id` int NOT NULL,
  `updated` datetime
);

ALTER TABLE `player` ADD FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

ALTER TABLE `player` ADD FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

ALTER TABLE `player` ADD FOREIGN KEY (`draft_id`) REFERENCES `draft` (`id`);

ALTER TABLE `team` ADD FOREIGN KEY (`manager_id`) REFERENCES `player` (`id`);

ALTER TABLE `team` ADD FOREIGN KEY (`draft_id`) REFERENCES `draft` (`id`);

ALTER TABLE `draft_info` ADD FOREIGN KEY (`draft_id`) REFERENCES `draft` (`id`);
