/* Question 10
Write a SQL query to find all available information about the players under contract to
Liverpool F.C. playing for England in EURO Cup 2016.*/

SELECT * FROM player_mast
INNER JOIN soccer_country
ON player_mast.team_id = soccer_country.country_id
WHERE playing_club LIKE '%Liverpool%' AND country_abbr = 'ENG'
