CREATE TABLE `summer_19_player` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `team_id` int DEFAULT null,
  `num` int DEFAULT 0,
  `pos_id` int DEFAULT null,
  `goals` int DEFAULT 0,
  `assists` int DEFAULT 0,
  `points` int DEFAULT 0,
  `updated` datetime
);

CREATE TABLE `summer_19_team` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `win` int DEFAULT 0,
  `lose` int DEFAULT 0,
  `tie` int DEFAULT 0,
  `points` int DEFAULT 0,
  `gf` int DEFAULT 0,
  `ga` int DEFAULT 0,
  `pm` int DEFAULT 0,
  `updated` datetime
);

CREATE TABLE `summer_19_goalie` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `player_id` int DEFAULT null,
  `team_id` int DEFAULT null,
  `gp` int DEFAULT 0,
  `ga` int DEFAULT 0,
  `gaa` decimal(10,2) DEFAULT 0,
  `so` int DEFAULT 0,
  `updated` datetime
);

CREATE TABLE `summer_19_schedule` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `type` int DEFAULT null,
  `week` int DEFAULT null,
  `date` varchar(255),
  `time` int DEFAULT null,
  `home_id` int DEFAULT null,
  `home_name` varchar(255) DEFAULT null,
  `vis_id` int DEFAULT null,
  `vis_name` varchar(255) DEFAULT null,
  `home_score` int DEFAULT null,
  `vis_score` int DEFAULT null,
  `note` varchar(255) DEFAULT null,
  `updated` datetime
);

CREATE TABLE `positions` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `pos` varchar(255) NOT NULL
);

INSERT INTO positions (pos) VALUES
('Goalie'),
('Defense'),
('Def/For'),
('Forward');

INSERT INTO summer_19_schedule (type, week, date, time, home_id, vis_id, home_score, vis_score, updated) VALUES


ALTER TABLE `summer_19_player` ADD FOREIGN KEY (`team_id`) REFERENCES `summer_19_team` (`id`);

ALTER TABLE `summer_19_player` ADD FOREIGN KEY (`pos_id`) REFERENCES `positions` (`id`);

ALTER TABLE `summer_19_goalie` ADD FOREIGN KEY (`player_id`) REFERENCES `summer_19_player` (`id`);

ALTER TABLE `summer_19_goalie` ADD FOREIGN KEY (`team_id`) REFERENCES `summer_19_team` (`id`);

ALTER TABLE `summer_19_schedule` ADD FOREIGN KEY (`home_id`) REFERENCES `summer_19_team` (`id`);

ALTER TABLE `summer_19_schedule` ADD FOREIGN KEY (`vis_id`) REFERENCES `summer_19_team` (`id`);
