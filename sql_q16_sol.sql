/* Question 16
Write a SQL query to find referees and the number of matches they worked in each
venue.
*/
/*Unable to join soccer_venue table to orovide venue name information*/
SELECT venue_id, referee_name, COUNT(referee_name) AS total_ref_games /*venue_name*/
FROM converted_match_mast
INNER JOIN referee_mast
ON converted_match_mast.referee_id = referee_mast.referee_id
/*INNER JOIN soccer_venue
ON converted_match_mast.venue_id = soccer_venue.venue_id*/
GROUP BY venue_id, referee_name
ORDER BY total_ref_games DESC

