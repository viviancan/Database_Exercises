USE codeup_test_db;

-- SELECT * FROM albums where release_date > 1991;

-- SELECT * FROM albums where genre LIKE "%disco%";

-- SELECT * FROM albums where artist_name = "Whitney Houston";

DELETE FROM albums where release_date > 1991;

DELETE FROM albums where genre LIKE "%disco%";

DELETE FROM albums where artist_name = "Whitney Houston";

SELECT * FROM albums;