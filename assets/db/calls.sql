use mkhockey;

/*---- STATS - GET TEAMS ----*/
SELECT * FROM summer_19_team ORDER BY points desc, pm desc, gf desc, win desc, id;

/*---- STATS - GET GOALIE ----*/
SELECT CONCAT(summer_19_player.first_name,' ',summer_19_player.last_name) AS name, summer_19_team.name AS team, gp, summer_19_goalie.ga, gaa, so FROM summer_19_goalie
LEFT JOIN summer_19_player ON summer_19_goalie.player_id = summer_19_player.id
LEFT JOIN summer_19_team on summer_19_goalie.team_id = summer_19_team.id
ORDER BY gaa, gp desc, so desc, summer_19_goalie.id;

/*---- STATS - GET PLAYER ----*/
SELECT CONCAT(first_name,' ',last_name) AS name, positions.pos, num, summer_19_team.name AS team, goals, assists, summer_19_player.points FROM summer_19_player 
LEFT JOIN summer_19_team ON summer_19_player.team_id = summer_19_team.id 
LEFT JOIN positions ON summer_19_player.pos_id = positions.id
ORDER BY summer_19_player.points desc, goals desc, summer_19_player.pos_id, summer_19_player.last_name, summer_19_player.first_name, summer_19_player.num, summer_19_player.id;

/*---- TEAM - GET TEAM ----*/
SELECT CONCAT(first_name,' ',last_name) AS name, positions.pos, num, goals, assists, points FROM summer_19_player
LEFT JOIN positions ON summer_19_player.pos_id = positions.id
WHERE team_id = 4
ORDER BY pos_id, last_name, first_name, summer_19_player.id;

/*---- PLAYER - GET PLAYER ----*/
SELECT CONCAT(first_name,' ',last_name) AS name, positions.pos, num, summer_19_team.name as team, goals, assists, summer_19_player.points FROM summer_19_player
LEFT JOIN positions ON summer_19_player.pos_id = positions.id
LEFT JOIN summer_19_team on summer_19_player.team_id = summer_19_team.id
WHERE summer_19_player.id = 44;


/*---- REF: UPDATE SINGLE LINE ----*/
UPDATE summer_19_player set points=1 WHERE id=44;

SELECT * FROM positions;
