CREATE DATABASE bd_ecommerce;

USE bd_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
fabricante VARCHAR (255),
valor DECIMAL NOT NULL,
quantidade INT,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX 360 500GB SEMI NOVO","Microsoft.", 500.00 , 2);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX ONE FAT 500GB SEMI NOVO","Microsoft.", 800.00, 5);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX ONE S 1T SEMI NOVO","Microsoft.", 1000.00, 3);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX ONE ELITE LIMITED EDITION","Microsoft.", 3874.43, 1);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX SERIES S","Microsoft.", 2629.00, 3);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("XBOX SERIES X","Microsoft.", 4669.83, 2);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("PLAYSTATION 4","Sony Mercenária", 4762.00, 35);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("PLAYSTATION 5","Sony Mercenária", 10290.99, 45);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("CONTROLE DUAL SHOCK 4 ","Sony Mercenária", 250.99, 4);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("CONTROLE DUAL SHOCK 5 ","Sony Mercenária", 343, 17);
INSERT INTO tb_produtos (nome, fabricante, valor, quantidade)
VALUES ("CONTROLE SEM FIO XBOX SERIES COMPATIVEL QUALQUER COISA EXISTE MUNDO ATÉ UM SUBMARINO","Microsoft.", 395.09, 10);

SELECT * FROM tb_produtos WHERE valor <= 500.00;

SELECT * FROM tb_produtos WHERE valor > 500.00;

UPDATE tb_produtos SET valor = 5000.00 WHERE id = 8;
