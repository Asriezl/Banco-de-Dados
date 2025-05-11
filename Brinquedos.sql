CREATE DATABASE Brinquedos;

USE Brinquedos;

CREATE TABLE brinquedos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    faixa_etaria VARCHAR(20),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO brinquedos (nome, categoria, faixa_etaria, preco, estoque) VALUES
('Carrinho de Controle Remoto', 'Veículos', '6+', 149.99, 10),
('Boneca Fashion', 'Bonecas', '4+', 89.90, 15),
('Blocos de Montar', 'Educativos', '3+', 59.50, 20),
('Jogo da Memória', 'Educativos', '5+', 39.99, 12),
('Caminhão de Brinquedo', 'Veículos', '3+', 129.90, 8),
('Boneca Bebê Reborn', 'Bonecas', '5+', 199.99, 5),
('Kit de Pintura Infantil', 'Educativos', '4+', 45.00, 18),
('Aviãozinho com Som', 'Veículos', '3+', 99.90, 7);

INSERT INTO categorias (nome) VALUES
('Veículos'),
('Bonecas'),
('Educativos');
