/* Question 11
Write a SQL query to find the players, their jersey number, and playing club who were
the goalkeepers for England in EURO Cup 2016.*/

SELECT jersey_no, player_name,posi_to_play, playing_club, country_abbr, country_name FROM player_mast
INNER JOIN soccer_country
ON player_mast.team_id = soccer_country.country_id
WHERE country_abbr = 'ENG' and posi_to_play ='GK'
