/* Question 20
Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule.
*/
SELECT play_half, play_schedule, player_name, playing_club
FROM player_in_out
INNER JOIN player_mast
ON player_in_out.player_id = player_mast.player_id
WHERE play_half = 1 AND play_schedule = 'NT'
