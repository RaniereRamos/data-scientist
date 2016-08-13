/* Criando um banco de dados de cadastro */
CREATE DATABASE cadastroDB;
use cadastroDB;
show databases;

/* Criando uma tabela de "Funcionários" dentro da BD cadastro */
CREATE TABLE FUNCIONARIOS (
	ID INT NOT NULL,
    NOME VARCHAR(20) NOT NULL,
    IDADE INT NOT NULL,
    CIDADE CHAR(25),
    SALARIO DECIMAL (18,2),
    PRIMARY KEY (ID));
DESC FUNCIONARIOS;

/* Inserindo informacoes de funcionarios */
INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (1, 'Pele', 32, 'Roma', 2000.00);

INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (2, 'Zico', 25, 'Paris', 1500.00);

INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (3, 'Rivelino', 23, 'Santiago', 4000.00);
    
INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (4, 'Garrincha', 25, 'Vienna', 6500.00);
    
INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (5, 'Jair', 64, 'Vienna', 7800.00);

INSERT INTO FUNCIONARIOS (ID, NOME, IDADE, CIDADE, SALARIO)
	VALUES (6, 'Careca', 25, 'Milao', 8900.00);
    

/* Selecionado todos os funcionarios da base de dados */
SELECT * FROM FUNCIONARIOS;
SELECT NOME, SALARIO FROM FUNCIONARIOS;

/* Selecionado os funcionarios com salários acima de 2000 */
SELECT ID, NOME, SALARIO
	FROM FUNCIONARIOS
    WHERE SALARIO > 2000;

/* Selecionado informacoes do funcionario Zico */
SELECT ID, NOME, SALARIO
	FROM FUNCIONARIOS
    WHERE NOME = 'Zico';

/* Selecionado todos os funcionarios com salario maior do que 2000 e abaixo de 55 anos */
SELECT ID, NOME, SALARIO
	FROM FUNCIONARIOS
    WHERE SALARIO > 2000 AND IDADE < 55;

/* Selecionado o ID 6, e atualizando a cidade dele para Boston */
UPDATE FUNCIONARIOS
	SET CIDADE = 'Boston'
    WHERE ID = 6;
    
/* Removendo o funcionario ID = 6 do cadastro */
DELETE FROM FUNCIONARIOS
	WHERE ID = 6;
SELECT * FROM FUNCIONARIOS;

/* Selecionado cidades únicas - lista de cidades */
SELECT DISTINCT	CIDADE FROM FUNCIONARIOS;

/* Contando a quantidade de registros */
SELECT COUNT(*) FROM FUNCIONARIOS;

/* Somando o salario dos funcionarios e agrupando por cidade */
SELECT CIDADE, SUM(SALARIO) FROM FUNCIONARIOS GROUP BY CIDADE;

/* Somando o salario dos funcionarios, agrupando por cidade e mostrando apenas a soma acima de 2000 */
SELECT CIDADE, SUM(SALARIO) FROM FUNCIONARIOS GROUP BY CIDADE HAVING SUM(SALARIO) > 2000;

/* Criando um Index de cidade na tabela funcionarios */
CREATE INDEX cidade_idx on FUNCIONARIOS(CIDADE);
SHOW INDEX FROM FUNCIONARIOS;

/* Criando uma cópia da tabela funcionários e selecionado a nova tabela*/
CREATE TABLE FUNCIONARIOS_BKP
	AS SELECT * FROM FUNCIONARIOS;
SELECT * FROM FUNCIONARIOS_BKP;


    
    
    
    
    