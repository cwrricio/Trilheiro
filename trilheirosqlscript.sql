CREATE DATABASE trilhas_db;
USE trilhas_db;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE Trilha (
    id_trilha INT AUTO_INCREMENT PRIMARY KEY,
    local VARCHAR(150) NOT NULL,
    data DATE NOT NULL,
    imagem VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE Agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_trilha INT NOT NULL,
    data_agendamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_trilha) REFERENCES Trilha(id_trilha) ON DELETE CASCADE
);