CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
nomealuno VARCHAR(255),
nomemae VARCHAR(255),
datanascimento DATE,
rg VARCHAR (15),
telefoneresponsavel VARCHAR (17),
rua VARCHAR(255),
numbercasa INT,
cep VARCHAR (9),
completamnto VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nomealuno, nomemae, datanascimento, rg, telefoneresponsavel, rua, numbercasa, cep, completamnto)
VALUES 
("Lucas Pereira", "Ana Pereira", "2010-05-12", "123456789", "(11) 98765-4321", "Rua das Flores", 123, "12345-678", "Apartamento 1A"),
("Mariana Silva", "Clara Silva", "2012-08-21", "987654321", "(21) 91234-5678", "Avenida Central", 45, "98765-432", "Bloco B, Casa 3"),
("João Oliveira", "Marta Oliveira", "2011-03-14", "543216789", "(31) 99876-5432", "Rua dos Laranjais", 78, "54321-987", "Casa Térrea"),
("Beatriz Souza", "Fernanda Souza", "2009-12-30", "876543219", "(41) 90123-4567", "Travessa das Palmeiras", 89, "67890-123", "Próximo ao mercado"),
("Pedro Henrique", "Juliana Henrique", "2013-07-10", "135792468", "(51) 98700-1234", "Rua do Sol", 56, "45678-900", "Perto do parque"),
("Larissa Rocha", "Carolina Rocha", "2012-11-02", "246813579", "(61) 95432-9876", "Avenida das Águas", 101, "56789-012", "Casa 2, fundos"),
("Thiago Almeida", "Renata Almeida", "2010-01-25", "369258147", "(71) 91111-2222", "Rua das Acácias", 77, "67891-234", "Sobrado"),
("Sophia Costa", "Gabriela Costa", "2008-09-18", "987123654", "(81) 93333-4444", "Alameda das Orquídeas", 22, "78901-345", "Casa com portão branco");

SELECT * FROM tb_alunos;

-- eu esqueci de colocar uma coluna de notas

ALTER TABLE tb_alunos ADD nota DECIMAL(4,2);

UPDATE tb_alunos SET nota = 9.5 WHERE nomealuno = "Lucas Pereira";
UPDATE tb_alunos SET nota = 8.7 WHERE nomealuno = "Mariana Silva";
UPDATE tb_alunos SET nota = 7.8 WHERE nomealuno = "João Oliveira";
UPDATE tb_alunos SET nota = 9.2 WHERE nomealuno = "Beatriz Souza";
UPDATE tb_alunos SET nota = 6.5 WHERE nomealuno = "Pedro Henrique";
UPDATE tb_alunos SET nota = 8.3 WHERE nomealuno = "Larissa Rocha";
UPDATE tb_alunos SET nota = 7.9 WHERE nomealuno = "Thiago Almeida";
UPDATE tb_alunos SET nota = 9.8 WHERE nomealuno = "Sophia Costa";

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota <= 7.0;

