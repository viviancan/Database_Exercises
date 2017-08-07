USE codeup_test_db;

SELECT record_name as "Pink Floyd Albums" FROM albums where artist_name = 'Pink Floyd';

SELECT release_date as "The year sgt.P was released" FROM albums where record_name = "Sgt. Pepper's Lonely Hearts Club Band";

SELECT genre as "The album Nevermind's genre" FROM albums where record_name = "Nevermind";

SELECT record_name as "All albums released in the 90's" FROM albums where release_date BETWEEN 1990 AND 1999;

SELECT record_name as "All albums with less than 20 million sales" FROM albums where sales < 20; 

SELECT record_name as "All albums with the genre 'Rock'" FROM albums where genre like "%Rock%";












