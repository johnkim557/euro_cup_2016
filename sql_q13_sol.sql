/* Question 13
Write a SQL query to find all the defenders who scored a goal for their teams.*/

SELECT posi_to_play, player_name, COUNT(goal_id) AS defender_goals
FROM goal_details
INNER JOIN player_mast
ON goal_details.player_id = player_mast.player_id
WHERE posi_to_play = 'DF'
GROUP BY posi_to_play,player_name
ORDER BY defender_goals DESC
