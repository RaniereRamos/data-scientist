###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Objetos no R / Objects in R

# Vetor: possui 1 dimensão e 1 tipo de dado / vector: 1 dimension - 1 data type

vetor1 <- c(1:10)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)


# Matriz: possui 2 dimensões e 1 tipo de dado / matrix: 2 dimensions - 1 dataty

matriz1<- matrix(1:10, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

# Array: possui 2 ou mais dimensões e 1 tipo de dado
# Array: 2 or more dimensions and 1 data type

array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

# Data Frames: dados de diferentes tipos / Data Frames: diferent data types
# Maneira mais fácil de explicar data frames: é uma matriz com diferentes tipos
# Way more easy to explain data frame: it is a matrix with diferent data types

View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

# Listas: coleção de diferentes objetos / Lists: colection of diferent objects
# Diferentes tipo de dados são possíveis e comuns
# Diferent data types are possible and comums

lista1 <- list (a=matriz1, b=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


# Funções também são vistas como objetos do R / Functions are objects in R
func1 <- function(x) {
    var1 <- x * x
    return(var1)
}

func1(5)
class(func1)

# Removendo objetos / remove objects
objects()
rm(array1, func1)
objects()

















