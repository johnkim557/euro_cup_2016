/* Question 19
Write a SQL query to find the number of captains who were also goalkeepers.
*/
SELECT COUNT(DISTINCT player_name)
FROM player_mast
INNER JOIN match_captain
ON player_mast.player_id = match_captain.player_captain
WHERE posi_to_play = 'GK'

