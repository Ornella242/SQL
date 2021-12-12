CREATE DATABASE cmdprojet;

USE cmdprojet;

CREATE TABLE listescmd(
    id INT PRIMARY KEY AUTO_INCREMENT,
    categorie TEXT UNIQUE NOT NULL,
    details TEXT NOT NULL
);

CREATE TABLE cmd(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_categorie_cmd INT NOT NULL,
    rolecmd TEXT NOT NULL,
    commande TEXT UNIQUE NOT NULL,
    details TEXT,
    FOREIGN KEY (id_categorie_cmd) REFERENCES listescmd(id)
);

CREATE TABLE img(
    id INT PRIMARY KEY AUTO_INCREMENT,
    lien_img TEXT NOT NULL,
    id_cmd INT NOT NULL,
    FOREIGN KEY (id_cmd) REFERENCES listescmd(id)
);