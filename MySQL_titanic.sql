show databases;

create database titanicDB;
use titanicDB
show databases;

CREATE TABLE titanic (
	pclass char(3),
    survived char(1),
    nams varchar(100),
    sex char(6),
    age char(11),
    sibsp varchar(16),
    parch varchar(16),
    ticket varchar(20),
    fare varchar(100),
    cabin varchar(16),
    embarked varchar(12),
    boat varchar(50),
    body varchar(32),
    home_dest varchar(200));
    
    desc titanic
    
-- LOAD DATA INFILE 'C:/Raniere/Formacao Cientista de Dados/01 - Big Data Analytics com R e Microsoft Azure/04- Usando R  para importação e limpeza de dados/titanic.csv'
--    INTO TABLE titanic
--    FIELDS TERMINATED BY ','
--    ENCLOSED BY '"'
--    LINES TERMINATED BY '\n'
--    IGNORE 1 ROWS; 

select nams, age, sex, pclass from titanic where age > 70;
select nams, age from titanic where age > 70;

select pclass, survived, avg(age) as media from titanic group by pclass, survived;

LOAD DATA INFILE 'C:/Program Files/MySQL/MySQL Server 5.7/titanic.csv'
    INTO TABLE titanic
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    