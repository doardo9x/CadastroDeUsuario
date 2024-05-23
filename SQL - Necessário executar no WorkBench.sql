CREATE DATABASE IF NOT EXISTS web_aueba;

USE web_aueba;

CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_nome VARCHAR(100) NOT NULL,
    usuario_email VARCHAR(100) NOT NULL UNIQUE,
    usuario_senha VARCHAR(20) NOT NULL
);
