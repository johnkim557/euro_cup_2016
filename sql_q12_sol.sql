/* Question 12
Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals.*/

SELECT posi_to_play, country_name, COUNT(goal_id)
FROM goal_details
INNER JOIN player_mast
ON goal_details.player_id = player_mast.player_id
INNER JOIN soccer_country
ON player_mast.team_id = soccer_country.country_id
GROUP BY posi_to_play, country_name
ORDER BY country_name ASC