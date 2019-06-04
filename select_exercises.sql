USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'AC/DC';

SELECT release_date FROM albums WHERE artist = 'Meat Loaf';

SELECT genre FROM albums WHERE name = 'Rumors';

SELECT * FROM albums WHERE release_date > 1990;

SELECT * FROM albums WHERE sales > 52;

SELECT * FROM albums WHERE genre = 'Pop, Rock';