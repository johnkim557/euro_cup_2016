/* Question 9
Write a SQL query to find the goalkeeper’s name and jersey number, playing for
Germany, who played in Germany’s group stage matches.*/
SELECT player_name,posi_to_play, country_name,play_stage
FROM player_mast 
INNER JOIN soccer_country
ON player_mast.team_id = soccer_country.country_id
INNER JOIN match_details
ON player_mast.team_id = match_details.team_id
WHERE posi_to_play = "GK" AND country_name ='Germany' AND play_stage = 'G'
GROUP BY player_name

/*team_id, jersey_no, player_name, posi_to_play, country_abbr, country_name, play_stage*/