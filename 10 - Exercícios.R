###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


### Lista de exercicios


## Exercicio 1 - Encontre e faca a correcao do erro na instrucao abaixo
## write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = N, qmethod = "double")

# Chamando o arquivo mtcars
mtcars

# A instrucao abaixo nao funciona. Aviso de erro no argumento col.names
write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = N, qmethod = "double")

# Estudar a funcao write.table e entender o argumento col.names
?write.table

# Correcao da instrucao colocando "NA" no argumento
write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = NA, qmethod = "double")

# Chamando o arqivo txt gravado mtcars2
cars <- read.table("mtcars2.txt", header = T, sep = "|")
cars


## Exercicio 2 - Encontre e faca a correcao do erro na instrucao abaixo
## df_iris <- read_csv("iris.csv", col_types = matrix (
## Sepal.Length = col_double(1),
## Sepal.Width = col.double(1),
## Petal.Length = col_double(1),
## Petal.Width = col.double(1),
## Species = col_factor(c("setosa","versicolor","virginica"))))

# Lendo a  instrucao
df_iris <- read_csv("iris.csv", col_types = matrix (
   Sepal.Length = col_double(1),
   Sepal.Width = col.double(1),
   Petal.Length = col_double(1),
   Petal.Width = col.double(1),
   Species = col_factor(c("setosa","versicolor","virginica"))))

# O R nao encontrou a funcao "read_csv". Instalar o pacote "readr"
install.packages("readr")
library (readr)

# Ler o arquivo iris e entender coo funciona a funcao "read.csv"
iris
?read_csv

# Correcao da instrucao (1. Mudar o argumento "col_types"; 
# 2. Corrigir o parâmetro "col.double" para "col_double";
# 3. Tirar o argumento "1" do parâmetro "col_double")

df_iris <- read_csv("iris.csv", col_types = list(
   Sepal.Length = col_double(),
   Sepal.Width = col_double(),
   Petal.Length = col_double(),
   Petal.Width = col_double(),
   Species = col_factor(c("setosa","versicolor","virginica"))))

df_iris


## Exercicio 3 - Encontre e faca a correcao do erro na instrucao abaixo
# df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 5)

# Lendo a  instrucao
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 5)

# Instalando o pacote "readxl"
install.packages("readxl")
library(readxl)

# Corrigindo a instrucao (1. Mudar a funcao "read.xlsx" para "read_excel"; 
# 2. Substituir o comando "sheetIndex" por "sheet"";
# 3. Substitui o numero 5 por qualquer abaixo de 4. Existem 3 planilhas)

?read_excel
df2 <- read_excel("UrbanPop.xlsx",  sheet = 3)
df2


## Exercicio 4 - Encontre e faca a correcao do erro na instrucao abaixo
# df_sono <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/sono.csv")
# sleepData <- select(df_sono, nome, sono_total)
# df_sono %>%
# select(nome, cidade, sono_total) %>%
# arrange(cidade, sono_total)
# head

# Lendo a  instrucao
df_sono <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/sono.csv")
sleepData <- select(df_sono, nome, sono_total)
df_sono %>%
   select(nome, cidade, sono_total) %>%
   arrange(cidade, sono_total)
   head

# Correcao da instrucao
# Instalacao do pacote "dplyr" para usar a funcao "select"
install.packages("dplyr")
library(dplyr)   

# Colocando o sinal de concatenacao "%>%" antes da funcao "head"
df_sono <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/sono.csv")
sleepData <- select(df_sono, nome, sono_total)
df_sono %>%
   select(nome, cidade, sono_total) %>%
   arrange(cidade, sono_total) %>%
   head


## Exercicio 5 - Encontre e faca a correcao do erro na instrucao abaixo
# set.seed(1)
# df3 <- data.frame(
# participante = c("p1","p2","p3","p4","p5","p6"),
# info = c("g1m","g1m","g1f","g2m","g2m","g2m"),
# day1score = rnorm(n = 6, mean = 80, sd = 15),
# day2score = rnorm(n = 6, mean = 88, sd = 8))

# Lendo a  instrucao
# Nao achei erros (estranho)
set.seed(1)
df3 <- data.frame(
   participante = c("p1","p2","p3","p4","p5","p6"),
   info = c("g1m","g1m","g1f","g2m","g2m","g2m"),
   day1score = rnorm(n = 6, mean = 80, sd = 15),
   day2score = rnorm(n = 6, mean = 88, sd = 8))



# df3 %>%
# gather(day, score, c(day1score, day2score)) %>%
# separate(col = info, into = c("group", "gender"), sep = 2) %>%
# ggplot(aes(x = day, y = score))
# geom_point() + facet_wrap(~group) +
# geom_smooth(method = "lm", aes(group = 1), se = F)

# Lendo a  instrucao

df3 %>%
   gather(day, score, c(day1score, day2score)) %>%
   separate(col = info, into = c("group", "gender"), sep = 2) %>%
   ggplot(aes(x = day, y = score)) 
   geom_point() + facet_wrap(~group) +
   geom_smooth(method = "lm", aes(group = 1), se = F)
   
# Correcao da instrucao [intalar pacotes e colocar sinal de + antes de geom_point]
install.packages("tidyr")
install.packages("ggplot2")
library(tidyr)
library(ggplot2)

df3 %>%
   gather(day, score, c(day1score, day2score)) %>%
   separate(col = info, into = c("group", "gender"), sep = 2) %>%
   ggplot(aes(x = day, y = score)) +
   geom_point() + facet_wrap(~group) +
   geom_smooth(method = "lm", aes(group = 1), se = F)







