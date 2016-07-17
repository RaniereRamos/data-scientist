###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


### Lista de exercícios


## Exercício 1 - Crie um vetor com 12 números inteiros
vetor_1 <- c(1,2,3,4,5,6,7,8,9,10,11,12)     # Possibility 1 (numeric type)
vetor_1
is.vector(vetor_1)

vetor_2 <- seq(1:12)                         # Possibility 2 (integer type)
vetor_2
is.vector(vetor_2)

vetor_3 <- rep(1:12)                         # Possibility 3 (integer type)
vetor_3
is.vector(vetor_3)


## Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com
## números inteiros
minha_matriz <- c(1:16)
matrix(data = minha_matriz, nrow = 4, ncol = 4, byrow = F) # Possibility 1

matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), nr = 4)  # Possibility 2


## Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
my_matrix <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), nr = 4)
my_matrix

my_vector <- seq(1:12)
my_vector

vector_matrix <- list(my_matrix, my_vector)
vector_matrix

class(vector_matrix)
length(vector_matrix)
mode(vector_matrix)


## Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo
## para uma dataframe http://data.princeton.edu/wws509/datasets/effort.dat
?read.table
princeton <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
princeton
head(princeton)
tail(princeton)


## Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com 
## os seguintes labels: c("config", "esfc", "chang")
class(princeton)
princeton
str(princeton)
dim(princeton)
length(princeton)

names(princeton) <- c("config","esfc","chang")
princeton


## Exercício 6 - Imprima na tela o dataframe iris. Verifique quantas
## dimensões existem no dataframe
my_iris <- data.frame(iris)
my_iris

dim(my_iris)


## Exercício 7 - Crie um plot simples usando as duas primeiras colunas do
## dataframe iris
head(my_iris)
my_iris$Sepal.Length
my_iris$Sepal.Width

plot(my_iris$Sepal.Length, my_iris$Sepal.Width)
plot(my_iris$Sepal.Length)
plot(my_iris$Sepal.Width)
?plot


## Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto
## de dados do dataframe iris em que Sepal.Length > 7
## Dica: consulte o help para aprender como usar a função subset
?subset
my_iris_sepal <- subset(my_iris, Sepal.Length > 7)
my_iris_sepal


## Exercício 9 - Crie um dataframe que seja cópia do dataframe iris e usando
## a função slice(), divida o dataframe em um subset de 15 linhas
## Dica 1: você vai ter que instalar e carregar o pacote dplyr
## Dica 2: consulte o help para aprender como usar a função slice()
install.packages("dplyr")
library(dplyr)

iris_change <- my_iris
iris_change

slice(iris_change, 1:15)


## Exercício 10 - Use a função filter no seu novo dataframe criado no item
## anterior e retorne apenas valores em que Sepal.Length > 6
## Dica: use o RSiteSearch() para aprender como usar a função filter
iris_change
new_iris <- filter(iris_change, Sepal.Length > 6)
new_iris
dim(new_iris)

RSiteSearch("filter")


























