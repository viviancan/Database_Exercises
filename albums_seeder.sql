USE codeup_test_db;

TRUNCATE albums;


INSERT INTO albums(artist_name, record_name, release_date, sales, genre)
VALUES	('Michael Jakson', 'Thriller', 1982, 47.3, 'Pop, Rock, R&B'),
		('AC/DC', 'Back in Black', 1980, 24.2, 'Progressive rock'),
		('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive rock'),
		('Whitney Houston', 'The Bodyguard', 1992, 27.4, 'R&B, Soul, Pop, Soundtrack'),
		('Meat Loaf', 'Bat Out of Hell', 1977 , 21.5 , 'Hard rock, Progressive rock'),
		('Eagles', 'Their Greatest Hits', 1976, 32.3, 'Rock, Soft rock, Fok rock'),
		('Bee Gees', 'Saturday Night Fever', 1977, 20.6, 'Disco'),
		('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
		('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, Pop'),
		('Led Zeppelin', 'Led Zeppelin IV', 1971 , 29.0, 'Hard rock, Heavy metal, Folk'),
		('Adele', '21', 2011, 25.3, 'Pop, Soul'),
		('Michael Jackson', 'Bad', 1987, 23.6, 'Pop, Funk, Rock'),
		('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative rock'),
		('Celine Dion', 'Falling into You', 1996, 20.2, 'Pop, Soft rock'),
		('The Beatles', 'Sgt. Pepper\'s Lonely Hearts Club Band', 1967, 13.1, 'Rock'),
		('Eagles', 'Hotel California', 1976, 21.5, 'Rock, Soft rock, Folk rock'),
		('Michael Jackson', 'Dangerous', 1991, 19.4, 'Rock, Funk, Pop'),
		('Various Artists', 'Dirty Dancing', 1987, 17.9, 'Pop, Rock, R&B'),
		('The Beatles', '1', 2000, 22.6, 'Rock'),
		('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop, Dance'),
		('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
		('Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Rock'),
		('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Rock, Pop'),
		('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Soundtrack'),
		('Metallica', 'Metallica', 1991, 21.2, 'Thrash metal, Heavy metal'),
		('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, Alternative rock'),
		('Pink Floyd', 'The Wall', 1979, 17.6, 'Progressive Rock'),
		('Santana', 'Supernatural', 1999, 20.5, 'Rock'),
		('Guns N\' Roses', 'Appetite for Destruction', 1987, 21.6, 'Heavy metal, Hard rock'),
		('Linkin Park', 'Hybrid Theory', 2000, 15.0, 'Nu metal, Rap metal, Alternative metal');