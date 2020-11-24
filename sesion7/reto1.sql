CREATE DATABASE bedu_test;
USE bedu_test;

CREATE TABLE IF NOT EXISTS users(
	user_id INT PRIMARY KEY,
    genero CHAR(1),
    edad INT,
    ocupacion INT,
    cp VARCHAR(20)
);

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS movies(
movie_id INT PRIMARY KEY,
titulo_año VARCHAR(100),
genero VARCHAR(50)
);

DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS ratings(
rating_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
movie_id INT,
rating INT,
fecha INT,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

DROP TABLE IF EXISTS ratings;