create database db_rh;

USE db_rh;

CREATE TABLE tb_rh(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255),
departamento VARCHAR(255),
salario DECIMAL, 
datacontratacao DATE, 
PRIMARY KEY (id)
);

INSERT INTO tb_rh (nome, departamento, salario, datacontratacao) 
VALUES ("Aline Ferreira", "Suporte", 1500.00, "2020-07-15");
INSERT INTO tb_rh(nome, departamento, salario, datacontratacao) 
VALUES ("Vinicius Pinheiro","Desenvolvedor Jr", 2000.00,"2024-05-15");
INSERT INTO tb_rh(nome, departamento, salario, datacontratacao) 
VALUES ("Pedro Souza","Desenvolvedor Sênio", 10000.00,"2019-04-02");
INSERT INTO tb_rh(nome, departamento, salario, datacontratacao) 
VALUES ("Julia Vieira","Desenvolvedor pleno", 2000.00,"2022-01-22");

SELECT * FROM tb_rh;

SELECT * FROM tb_rh WHERE salario >= 2000.00;

SELECT * FROM tb_rh WHERE salario < 2000.00;

UPDATE tb_rh SET salario = 5000.00 WHERE id = 4;


