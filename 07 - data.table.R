###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Data.table
install.packages("data.table")
suppressMessages(library(data.table))

# Criando 2 vetores / Creating 2 vectors
vec1 <- c(1,2,3,4)
vec2 <- c("Azul", "Verde", "Amarelo", "Laranja")

# Criando um data.table / Creating a data.table
dt1 <- data.table(vec1,vec2)
dt1
class(dt1)

# Slicing of data.table
dt2 <- data.table(A = 1:9, B = c("Z", "W", "Q"), c = rnorm(9), D = TRUE)
dt2
dt2[3:5, ]
dt2[, .(B, C)]

# Aplicando funcao ao data.table  ( *** Aplicacao com . nao deu certo ***)
dt2[, .(Total = sum(A), Mean = mean(C))]
dt2[, plot(A, C)]
dt2[, .(MySum = sum(A)), by = .(Grp = A%%2)]

# Definindo valores por grupos / Defining values by group
dt3 <- data.table(B = c("a", "b", "c", "d", "e", "a", "b", "c", "d", "e"), 
                  val = as.integer(c(6:10, 1:5)))

dt3

# Operacoes com data.tables / Operations with data.tables
dt4 <- data.table(A = rep(letters[2:1], each = 4L),
                  B = rep(1:4, each = 2L),
                  C = sample(8))

dt4
new_dt4 <- dt4[ , sum(C), by = A]
class(new_dt4)
new_dt4[order(A)]

new_dt4 <- dt4[, sum(B), by = A][order(A)]
new_dt4


# Iris
dt5 <- as.data.table(iris)
dt5
dt5[ , .(Sepal.Length = median(Sepal.Length),
         Sepal.Width = median(Sepal.Width),
         Petal.Length = median(Petal.Length),
         Petal.Width = median(Petal.Width)), by = Species]

dt5[ , lapply(.SD, median), by = Species]


















