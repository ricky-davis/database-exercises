create database adlister;
use adlister;
create table Users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

create table Ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

create table Categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

create table Ads_Categories(
    Ads_ID INT UNSIGNED NOT NULL,
    Cat_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Ads_ID) REFERENCES Ads (id),
    FOREIGN KEY (Cat_ID) REFERENCES Categories (id)
);

create table Users_Ads(
    Users_ID INT UNSIGNED NOT NULL,
    Ads_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Users_ID) REFERENCES Users (id),
    FOREIGN KEY (Ads_ID) REFERENCES Ads (id)
);