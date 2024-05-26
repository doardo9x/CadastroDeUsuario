CREATE DATABASE liduca;
USE liduca;

CREATE TABLE jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL unique,
    lancamento VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL
);

