/* Question 7*/

SELECT decided_by, venue_name
FROM converted_match_mast
INNER JOIN soccer_venue
ON converted_match_mast.venue_id=soccer_venue.venue_id
WHERE decided_by ='P'