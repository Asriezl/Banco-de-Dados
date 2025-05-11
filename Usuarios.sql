CREATE DATABASE Usuarios;

USE Usuarios;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    conteudo TEXT NOT NULL,
    data_postagem DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (nome, email, senha) VALUES
('Lucas Silva', 'lucas@email.com', 'hash_da_senha'),
('Mariana Costa', 'mariana@email.com', 'hash_da_senha');

INSERT INTO posts (usuario_id, titulo, conteudo) VALUES
(1, 'Primeiro Post de Lucas', 'Conteúdo do primeiro post de Lucas.'),
(2, 'Post da Mariana', 'Conteúdo do post da Mariana.');

SELECT p.titulo, p.conteudo, u.nome AS autor, p.data_postagem
FROM posts p
JOIN usuarios u ON p.usuario_id = u.id;
