USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 66, 'Pop, Rock'),
       ('Eagles', 'Their Greatest Hits', 1976, 51, 'Country rock, Soft rock, Folk rock'),
       ('AC/DC', 'Back in Black', 1980, 50, 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 45, 'Progressive Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 45, 'R&B, Soul, Pop, Soundtrack'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 43, 'Hard Rock, Glam Rock, Heavy Metal'),
       ('Eagles', 'Hotel California', 1976, 42, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 40, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 40, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', 1997, 40, 'Country, Pop');