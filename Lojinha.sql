CREATE DATABASE lojinha_da_məria,:

USE lojinhadamaria;

CREATE TABLE produto (
id _produto INT PRIMARY KEY AUTO_INCREMENT
nome_produto VARCHAR(100),
preco DECIMAL(10.2),
categoria VARCHAR(S0)
);

INSERT INTO produto (nome_produto, preco, categoria) VALUES
('Notebook Utrafino', 2999.90, 'Informática").
('Headset Gamer', 399.90, 'Eletrônicos'),
("Sofá 3 Lugares`, 1200.00, "Móveis'),
("Cafeteira Elétrica", 230.00, 'Eletrodomésticos'),
("Smartphone 5G", 3999.99, "Eletrônicos'),
('Teclado Wireless', 150.00, "Informática").
('Livro: A Revolução dos Bichos', 35.50,"Livros'),
("Estante de Madeira, 520.00,"Móveis"),
('Livro: Dom Quixote', 42.90,"Livros'),
("Máquina de Escrever Antiga", 180.00, "Antiguidades'),
('Videocassete VHS', 100.00, 'Antiguidades);

SELECT * FROM produto;

ELECT COUNT(") FROM produto WHERE preco > 100;

SELECT AVG(preco) FROM produto;
