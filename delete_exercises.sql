USE codeup_test_db;

SELECT 'All albums released after to 1991' AS 'INFO';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All the albums with a genre of "Disco"' AS 'INFO';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'The name of all albums by Whitney Houston' AS 'INFO';
DELETE FROM albums WHERE artist = 'Whitney Houston';

