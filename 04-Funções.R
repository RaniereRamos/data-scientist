###############################################################################
#                                                                             #        
# CURSO:  Forma��o Cientista de Dados        PLATAFORMA: Data Science Academy #
# M�DULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Fun��es / Functions

# Help
?sample
args(sample)
args(mean)
args(sd)


# Fun��es Built-in / Built-in functions
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5),6)

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

# Fun��es dentro de fun��es / Functions inside functions
plot(rnorm(10))

# Calcular a m�dia de uma lista de valores absolutos de vetores (3 fun��es)
mean(c(abs(vec1), abs(vec2)))

# Criando fun��es / Creating functions
myfunc <- function(x){x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a,b){
   valor <- a ^ b
   print(valor)
}

myfunc2(3,2)

jogando_dados <- function(){
   num <- sample(1:6, size = 1)
   num  # Local
}
jogando_dados()


# Escopo / Scope
print(num)
num <- c(1:6)
num  # Global


# Fun��es sem n�mero definido de argumentos
# Functions without defined arguments
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
   df <- data.frame(cbind(...))
   print(df)
}

myfunc3(vec1)
myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)


# Fun��es Built-in - N�o tente recriar a roda
# Compara��o de efici�ncia entre fun��o vetorizada e fun��o "criada" //
# Built-in functions - do not attempt to recrete the wheel
# 

x <- 1:1000000

# Fun��o que calcula a raiz quadrada de cada elemento de um vetor
# Function that calculates the square root of each element of a vector
meu_sqrt <- function(numeros){
   resp <- numeric(length(numeros))
   for (i in seq_along(numeros)) {
      resp[i] <- sqrt(numeros[i])
   }
   return(resp)
}


system.time(x2a <- meu_sqrt(x))
system.time(x2b <- sqrt(x))
identical(x2a, x2b)











































