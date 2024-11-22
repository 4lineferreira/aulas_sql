create database db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255),
quantidade INT, 
datavalidade DATE,
preco DECIMAL NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate", 100, "2023-12-15", 9.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);

SELECT * FROM tb_produtos;

SELECT nome, id FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome IN ("tomate", "uva");

SELECT  * FROM tb_produtos WHERE preco >= 5 AND quantidade < 100; -- o ou é OR 

SET SQL_SAFE_UPDATES = 0; -- deletar sem where 0 desativado e 1 ativa

-- atualização de tabela 

UPDATE tb_produtos SET preco = 2.99;

UPDATE tb_produtos SET preco = 5.99 WHERE id = 2;

DELETE FROM tb_produtos WHERE id = 2; -- pra apagar vários de uma vez usar o IN (1, 2)

DELETE FROM tb_produtos; -- só funciona se tiver 0 no safe update

-- Modificiando a estrutura da Tabela

ALTER TABLE tb_produtos CHANGE preco preco DECIMAL (6,2); -- arrumar as casas decimais 6 = seis digitos no total, 2= dos seis totais dois são reservados pra serem usados depois da virgula
-- usando a variavel antiga e colocando uma nova exemplo preco valor a coluna preco vai alterar o nome para valor se repitir o nome ex preco preco ele só mantem o nome


