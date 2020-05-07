INSERT INTO summer_19_team (name, win, lose, tie, points, gf, ga, pm, updated) VALUES 
('Bitola', 11, 3, 1, 23, 78, 41, 37, current_timestamp),
('Lerin', 7, 6, 2, 16, 66, 74, -8, current_timestamp), 
('Ohrid', 5, 10, 0, 10, 65, 75, -10, current_timestamp), 
('Solun', 5, 9, 1, 11, 65, 75, -10, current_timestamp);


INSERT INTO summer_19_player (id, first_name, last_name, team_id, num, pos_id, goals, assists, points, updated) VALUES
(1, 'Dana', 'Burke', 1, 1, 1, 0, 0, 0, current_timestamp),
(2, 'Vince', 'Badagliacca', 1, 5, 2, 0, 3, 3, current_timestamp),
(3, 'Sash', 'Pavlovski', 1, 65, 2, 1, 7, 8, current_timestamp),
(4, 'Carmelo', 'Scali', 1, 26, 2, 4, 10, 13, current_timestamp),
(5, 'Peter', 'Skopec', 1, 63, 2, 0, 4, 4, current_timestamp),
(6, 'Bill', 'Pavlovski', 1, 66, 3, 2, 4, 6, current_timestamp),
(7, 'Mike', 'Bojovich', 1, 88, 4, 30, 13, 43, current_timestamp),
(8, 'Ryan', 'Bonnett', 1, 6, 4, 8, 8, 16, current_timestamp),
(9, 'Rob', 'Jovanovski', 1, 17, 4, 15, 14, 29, current_timestamp),
(10, 'Jamie', 'Karulas', 1, 34, 4, 5, 10, 15, current_timestamp),
(11, 'Ryan', 'Macri', 1, 18, 4, 8, 10, 18, current_timestamp),
(12, 'Gary', 'Miller', 1, 93, 4, 7, 3, 10, current_timestamp),
(13, 'Rob', 'Jawharry', 2, 1, 1, 0, 0, 0, current_timestamp),
(14, 'Carlo', 'Caltado', 2, 64, 2, 3, 8, 11, current_timestamp),
(15, 'Mike', 'Stoyan', 2, 15, 2, 8, 11, 19, current_timestamp),
(16, 'George', 'Cadamov', 2, 6, 3, 4, 2, 6, current_timestamp),
(17, 'Mike', 'Field', 2, 42, 3, 11, 7, 18, current_timestamp),
(18, 'Jason', 'Popovich', 2, 22, 3, 7, 11, 18, current_timestamp),
(19, 'Steve', 'Skicos', 2, 76, 3, 5, 5, 10, current_timestamp),
(20, 'Tony', 'Vidinovski', 2, 16, 3, 11, 6, 17, current_timestamp),
(21, 'Ryan', 'Bassil', 2, 18, 4, 9, 3, 12, current_timestamp),
(22, 'Dan', 'Brown', 2, 9, 4, 3, 1, 4, current_timestamp),
(23, 'Al', 'Karadinovic', 2, 14, 4, 2, 1, 3, current_timestamp),
(24, 'John', 'Vidinovski', 2, 33, 4, 3, 0, 3, current_timestamp),
(25, 'Frank', 'Perciasepe', 3, 1, 1, 0, 0, 0, current_timestamp),
(26, 'Steve', 'Bojovich', 3, 88, 2, 3, 5, 8, current_timestamp),
(27, 'Brad', 'Karulas', 3, 4, 2, 4, 7, 11, current_timestamp),
(28, 'Bill', 'Skicos', 3, 31, 2, 2, 7, 9, current_timestamp),
(29, 'Alex', 'Stoyan', 3, 55, 2, 4, 7, 11, current_timestamp),
(30, 'Chris', 'Balkos', 3, 81, 4, 5, 2, 7, current_timestamp),
(31, 'Michael', 'Demarco', 3, 19, 4, 18, 10, 28, current_timestamp),
(32, 'Roberto', 'Galluzzo', 3, 41, 4, 13, 7, 20, current_timestamp),
(33, 'George', 'Missios', 3, 93, 4, 4, 6, 10, current_timestamp),
(34, 'Todd', 'Simmons', 3, 25, 4, 3, 1, 4, current_timestamp),
(35, 'Paul', 'Taskas', 3, 10, 4, 9, 17, 26, current_timestamp),
(36, 'Bob', 'Telalidis', 3, 65, 4, 2, 6, 8, current_timestamp),
(37, 'Andrew', 'Plaunt', 4, 1, 1, 0, 0, 0, current_timestamp),
(38, 'Darrin', 'Pandovski', 4, 77, 2, 5, 18, 23, current_timestamp),
(39, 'Evan', 'Tanos', 4, 97, 2, 15, 5, 20, current_timestamp),
(40, 'Tony', 'Janevski', 4, 55, 3, 0, 3, 3, current_timestamp),
(41, 'Ken', 'Karulas', 4, 2, 3, 0, 1, 1, current_timestamp),
(42, 'Jason', 'Mackenzie', 4, 31, 3, 2, 3, 5, current_timestamp),
(43, 'Anthony', 'Badami', 4, 94, 3, 2, 2, 3, current_timestamp),
(44, 'Kosta', 'Cvetkovski', 4, 87, 4, 0, 1, 1, current_timestamp),
(45, 'Tom', 'Grosdoulies', 4, 13, 4, 6, 7, 13, current_timestamp),
(46, 'Chris', 'Karafile', 4, 6, 4, 1, 1, 2, current_timestamp),
(47, 'Egor', 'Mironov', 4, 96, 4, 33, 13, 46, current_timestamp),
(48, 'Derek', 'Servos', 4, 91, 4, 11, 13, 24, current_timestamp);

INSERT INTO summer_19_goalie (player_id, team_id, gp, ga, gaa, so, updated) VALUES 
(1, 1, 12,31, 2.58, 0, current_timestamp),
(13, 2, 13, 62, 4.77, 1, current_timestamp), 
(25, 3, 15, 75, 5.00, 0, current_timestamp), 
(37, 4, 13, 82, 6.31, 0, current_timestamp);

INSERT INTO summer_19_schedule (type, week, date, time, home_id, vis_id, home_score, vis_score, updated) VALUES
(1,1,'Apr 24',8,2,1,3,5,current_timestamp),
(1,1,'Apr 24',9,4,3,2,7,current_timestamp),
(1,2,'May 1',8,1,4,11,2,current_timestamp),
(1,2,'May 1',9,2,3,4,8,current_timestamp),
(0,3,'May 8',8,null,null,null,null,current_timestamp),
(0,3,'May 8',9,null,null,null,null,current_timestamp),
(1,4,'May 15',8,3,1,3,2,current_timestamp),
(1,4,'May 15',9,2,4,6,3,current_timestamp),
(1,5,'May 22',8,2,1,7,4,current_timestamp),
(1,5,'May 22',9,3,4,7,10,current_timestamp),
(1,6,'May 29',8,4,1,5,3,current_timestamp),
(1,6,'May 29',9,3,2,0,6,current_timestamp),
(1,7,'June 5',8,1,3,5,4,current_timestamp),
(1,7,'June 5',9,2,4,1,9,current_timestamp),
(1,8,'June 12',8,3,4,4,7,current_timestamp),
(1,8,'June 12',9,1,2,3,3,current_timestamp),
(1,9,'June 19',8,2,3,3,8,current_timestamp),
(1,9,'June 19',9,4,1,1,7,current_timestamp),
(1,10,'June 26',8,4,2,8,8,current_timestamp),
(1,10,'June 26',9,1,3,5,3,current_timestamp),
(1,11,'July 3',8,1,2,3,1,current_timestamp),
(1,11,'July 3',9,3,4,5,7,current_timestamp),
(1,12,'July 10',8,4,1,1,7,current_timestamp),
(1,12,'July 10',9,3,2,3,4,current_timestamp),
(1,13,'July 17',8,1,3,5,1,current_timestamp),
(1,13,'July 17',9,4,2,4,5,current_timestamp),
(1,14,'July 24',8,4,3,6,7,current_timestamp),
(1,14,'July 24',9,2,1,2,7,current_timestamp),
(1,15,'July 31',8,3,2,3,6,current_timestamp),
(1,15,'July 31',9,4,1,5,8,current_timestamp),
(1,16,'Aug 7',8,2,4,7,6,current_timestamp),
(1,16,'Aug 7',9,1,3,3,2,current_timestamp),
(2,17,'Aug 14',8,4,2,4,1,current_timestamp),
(2,17,'Aug 14',9,3,1,1,4,current_timestamp),
(0,18,'Aug 21',8,null,null,null,null,current_timestamp),
(0,18,'Aug 21',9,null,null,null,null,current_timestamp),
(2,19,'Aug 28',8,1,3,2,2,current_timestamp),
(2,19,'Aug 28',9,2,4,3,2,current_timestamp),
(2,20,'Sept 4',8,2,3,4,6,current_timestamp),
(2,20,'Sept 4',9,1,4,5,7,current_timestamp);

UPDATE summer_19_schedule set home_name='Bitola' WHERE home_id=1;
UPDATE summer_19_schedule set vis_name='Bitola' WHERE vis_id=1;
UPDATE summer_19_schedule set home_name='Lerin' WHERE home_id=2;
UPDATE summer_19_schedule set vis_name='Lerin' WHERE vis_id=2;
UPDATE summer_19_schedule set home_name='Ohrid' WHERE home_id=3;
UPDATE summer_19_schedule set vis_name='Ohrid' WHERE vis_id=3;
UPDATE summer_19_schedule set home_name='Solun' WHERE home_id=4;
UPDATE summer_19_schedule set vis_name='Solun' WHERE vis_id=4;
UPDATE summer_19_schedule set note='NO GAMES' WHERE type=0;




