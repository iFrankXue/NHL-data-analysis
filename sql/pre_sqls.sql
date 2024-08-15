
/*
Question:

-
-
-

*/


-- game
SELECT
    *
FROM
    game;


-- team_info
SELECT
    *
FROM
    team_info;


-- play_info

SELECT
    *
FROM
    player_info;


-- game_officials

SELECT
    *
FROM
    game_officials;


-- game_officials

SELECT
    *
FROM
    game_teams_stats;








SELECT 
--    game.home_team_id, 
    game.season,
    DATE(game.date_time_GMT) AS game_date,
    team_home.teamName home_team_name,
    game.home_goals,
    team_away.teamName away_team_name,
    game.away_goals,
    game.outcome
FROM game
LEFT JOIN team_info team_home ON game.home_team_id = team_home.team_id
LEFT JOIN team_info team_away ON game.away_team_id = team_away.team_id
-- LEFT JOIN team_teams_stats stats ON 
WHERE 
    (team_home.shortName = 'Vancouver' 
    OR team_away.shortName = 'Vancouver')
--    AND game.date_time_GMT BETWEEN 2018-08-01 AND 2019-07-31
    AND game.season = 20082009
ORDER BY
    date_time_GMT 

