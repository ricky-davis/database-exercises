USE codeup_test_db;
DROP TABLE if exists albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales  DECIMAL(5,3) NOT NULL,
    genre TEXT NOT NULL,
    primary key (id)
);