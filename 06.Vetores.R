###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Vetores / Vectors

# Vetor de caracteres / characters vectors
vetor_caracter = c("Olá","DSA")
vetor_caracter

# Vetor de floats (números reais) / floats vectors (real numbers)
vetor_numerico = c(1.90, 45.3, 300.5)
vetor_numerico

# Vetor de valores complexos / comples vectors
vetor_complexo = c(5.2+3i, 3.8+4i)
vetor_complexo

# Vetor de valores lógicos  / logical vectors
vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE)
vetor_logico

# Vetor de números inteiros / integer number vectors
vetor_integer = c(2, 4, 6)
vetor_integer

# Utilizando seq() / use seq() to create vectors
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

# Utilizando rep() / use rep() to create vectors
vetor2 = rep(1:5)
vetor2

# Indexação de vetores / Index of vectors
a <- c(1,2,3,4,5)
a
a[1]
a[6]

b <- c("Data","Science")
b
b[1]
b[2]
b[3]


# Combinando vetores / combinig vectors
v1 = c(2,3,5)
v2 = c("aa", "bb", "cc", "dd", "ee")
c(v1,v2)


# Operações com vetores / Operations with vectors
x = c(1,3,5,7)
y = c(2,4,6,8)

x * 5
x + y
x - y
x * y
x / y

# Somando vetores com número diferente de elementos
# Sum vectors with different numbers of elements
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta

# Vetor nomeado / named vector
v = c("Barack", "Obama")
v
names(v) = c("Nome","Sobrenome")
v
v["Nome"]









































































