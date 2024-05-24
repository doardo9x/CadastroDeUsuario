CREATE DATABASE liduca;
USE liduca;

CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero VARCHAR(255) NOT NULL
);

CREATE TABLE jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    lancamento VARCHAR(255) NOT NULL,
    desenvolvedor VARCHAR(50),
    id_genero INT,
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);

-- INSERT INTO generos (nome_genero) VALUES

-- INSERT INTO jogos (nome, lancamento, id_genero) VALUES
