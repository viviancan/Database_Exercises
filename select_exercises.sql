USE codeup_test_db;

SELECT 'ALL ALBUMS BY PINK FLOYD' as 'Info';
SELECT record_name FROM albums where artist_name = 'Pink Floyd';

SELECT 'THE YEAR SGT.P WAS RELEASED' as 'Info';
SELECT release_date FROM albums where record_name = "Sgt. Pepper's Lonely Hearts Club Band";

SELECT 'GENRE FOR THE ALBUM NEVERMIND' as 'Info';
SELECT genre FROM albums where record_name = "Nevermind";

SELECT 'ALL ALBUMS RELEASED IN THE 1990\'S' as 'Info';
SELECT record_name FROM albums where release_date BETWEEN 1990 AND 1999;

SELECT 'ALL ALBUMS LESS THAN 20 MILLION SALES' as 'Info';
SELECT record_name FROM albums where sales < 20; 

SELECT 'ALL ALBUMS WITH GENRE LIKE ROCK' as 'Info';
SELECT record_name FROM albums where genre like "%Rock";












