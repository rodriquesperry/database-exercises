USE codeup_test_db;

SELECT 'All albums in collection' AS 'INFO';
SELECT * From albums;
UPDATE albums SET sales = sales * 10;
SELECT 'All albums in collection with sales * 10' AS 'INFO';
SELECT * FROM albums;

SELECT 'All albums released prior to 1980' AS 'INFO';
SELECT * From albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT 'All albums released in 1800' AS 'INFO';
SELECT * FROM albums WHERE release_date = 1800;

SELECT 'ALl albums from Michael Jackson' AS 'INFO';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'ALl albums from Peter Jackson' AS 'INFO';
SELECT * FROM albums WHERE artist = 'Peter Jackson';

