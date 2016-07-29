###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Funções especiais / special functions

# unlist()
# Produz um vetor com os elementos da lista /
# Create a vector with elements of list
?unlist

lst1 <- list(6, "b", 15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)


lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2

unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))


# do.call()
# Executa uma função em um objeto / Apply a function to an object
# *** ATENÇÃO / PAY ATTENTION ***
# As funções da família apply aplicam uma função a cada elemento de um objeto
# A função do. call aplica uma função ao objeto inteiro, e não a cada elemento
?do.call

data <- list()
N <- 100

for (n in 1:N) {
   data[[n]] <- data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

head(data)

do.call(rbind, data)
class(do.call(rbind,data))

# lapply() x do.call()
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum)
do.call(sum, y)


# O resultado da função do.call() pode ser obtido de outras formas
# do.call function's result can be obtained by other ways

# Pacote plyr /  package plyr
install.packages("plyr")
library(plyr)

y <- list(1:3, 4:6, 7:9)
y

ldply(y, sum)

# Benchmark
install.packages("rbenchmark")
library(rbenchmark)
benchmark(do.call(sum,y), ldply(y,sum))

N <- list(as.numeric((1:80000), as.numeric(4:60000), as.numeric(7:90000)))

benchmark(do.call(sum, N), ldply(N, sum))

# strplit()
# Divide uma string ou vetor de caracteres / Split a string and vector charac

texto <- "Esta é uma string."
strsplit(texto, " ")

texto <- "Esta é uma string."
strsplit(texto, "")

dates <- c("1999-05-23", "2001-12-30", "2004-12-17")
temp <- strsplit(dates, "-")
temp
class(temp)


matrix(unlist(temp), ncol = 3, byrow = TRUE)


Names <- c("Brin, Sergey", "Page, Larry", "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Biz")

Cofounded <- rep(c("Google", "Twitter"), c(2,4))
temp <- strsplit(Names, ", ")
temp


frase <- "Muitas vezes temos que repetir algo diversas vezes, e diversas 
         vezes parecem algo estranho"

palavras <- strsplit(frase, " ") [[1]]
palavras
unique(tolower(palavras))  # seleciona palavras sem repetição e minúsculas

antes <- data.frame(attr = c(1,30,4,6), tipo = c("pão_e_agua", "pão_e_agua_2"))
antes
strsplit(as.character(antes$tipo), "_e_")

library(stringr)
str_split_fixed(antes$tipo, "_e_", 2)  # Retorna um objeto de tipo diferente


antes <- data.frame(attr = c(1,30,4,6), tipo = c("pão_e_agua", "pão_e_agua_2"))
antes
depois <- strsplit(as.character(antes$tipo), "_e_")
do.call(rbind, depois)

install.packages("tidyr")
library(dplyr)
library(tidyr)

antes <- data.frame(attr = c(1,30,4,6), tipo = c("pão_e_agua", "pão_e_agua_2"))
antes %>% separate(tipo, c("pão", "agua"), "_e_")  # Concatenar


# Para encerrar / To finish
# Operadores de atribuição / Assignment operators

vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)

typeof(vec1)
typeof(vec2)

mean(x = 1:10)    # x existiu apenas em tempo de execução | trabalhar função
x

mean(x <- 1:10)   # Objeto x foi criado / Object x was created
x


# Criação de objetos / Created objects
vetor1 = 1:4         # integer
vetor2 = c(1:4)      # integer
vetor3 = c(1,2,3,4)  # numeric

vetor1
vetor2
vetor3

class(vetor1)
class(vetor2)
class(vetor3)
typeof(vetor1)
typeof(vetor2)
typeof(vetor3)

matriz1 = matrix(1:4, nrow = 2)
matriz2 = matrix(c(1:4), nrow = 2)
matriz3 = matrix(c(1,2,3,4), nrow = 2)

matriz1
matriz2
matriz3


class(matriz1)
class(matriz2)
class(matriz3)
typeof(matriz1)
typeof(matriz2)
typeof(matriz3)










































