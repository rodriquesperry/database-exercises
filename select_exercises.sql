USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'INFO';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'INFO';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'INFO';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'INFO';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales
' AS 'INFO';
SELECT * FROM albums WHERE sales < 20.0;

SELECT 'All the albums with a genre of "Rock"' AS 'INFO';
SELECT * FROM albums WHERE genre = 'ROCK';