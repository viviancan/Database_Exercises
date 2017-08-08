USE codeup_test_db;



-- SELECT record_name as "All records"  FROM albums; 

-- SELECT record_name as "Records released before 1980" FROM albums WHERE release_date < 1980;

-- SELECT record_name as 'Albums released by Michael Jackson' FROM albums WHERE artist_name = 'Michael Jackson';


SELECT *  FROM albums; 
UPDATE albums
SET sales = (sales * 10);
SELECT * FROM albums;

-- SELECT * FROM albums WHERE release_date < 1980;
-- UPDATE albums
-- SET release_date = 1800
-- WHERE release_date < 1980;
-- SELECT * FROM albums WHERE release_date = 1800;



-- SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
-- UPDATE albums
-- SET artist_name = 'Peter Jackson'
-- WHERE artist_name = 'Michael Jackson';
-- SELECT * FROM albums WHERE artist_name = 'Peter Jackson';
