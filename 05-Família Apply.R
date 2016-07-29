###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## A família Apply - uma forma elegante de fazer loops
## Apply's family - an elegant way to do loops

# apply()  - arrays e matrizes / arrays and matrices
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas / vectors and lists
# sapply() - versão amigável da lapply() / frindly version of lapply()
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista / create a list
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: / If you're working with objects

# list, numeric, character (list/vector) ==> sapply or lapply
# matrix, data.frame (agregação por coluna) ==> by / tapply
# Operações por linha oou operações específicas ==> apply

# Usando um loop / Using a loop
lista1 <- list(a = (1:10), b = (45:77))

# Calculando o total de cada elemento da lista com loop for
# Adding each element of the list with  loop for
valor_a = 0
valor_b = 0
for (i in lista1$a) {
   valor_a <- valor_a + i
}
for (j in lista1$b) {
   valor_b <- valor_b + j
}
print(valor_a)
print(valor_b)

# Calculando cada elemento da lista com sapply() / 
# Sum each element of list with sapply()
?apply()
sapply(lista1, sum)

# Aplicando funções com sapply() / Applying functions with sapply()
?sapply()
sapply(lista1, mean)

# Apply()
?apply()
x <- matrix(rnorm(9), nr = 3, byrow = T)
x
 
apply(x,1,mean)
apply(x,2,mean)
apply(x, 1,plot)
 

# Executar a função e armazenar em um objeto / Load function and keep an object
resultapply <- apply(x,1,mean)
resultapply


escola <- data.frame(Aluno = c("Alan", "Alice", "Alana", "Aline", "Alex",
         "Ajay"), 
         Matematica = c(90, 80, 85, 87, 56, 79),
         Geografia = c(100, 78, 86, 90, 98, 67),
         Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia


# Calculando a média por aluno / mean by student
escola$Media = NA
escola

# As funções podem ser realizadas em etapas / functins by step
escola$Media <- apply(escola[ ,c(2,3,4)],1,mean)
escola
escola$Media <- round(escola$Media)
escola

# tapply() vs sqldf
install.packages("sqldf")  # Pacote SQL para manipular dados no R
require(sqldf)

escola2 <- data.frame(Aluno = c("Alan", "Alice","Alana", "Alan", "Alice",
           "Alana"),
           semestre = c(1,1,1,2,2,2), Matematica = c(90,80,85,87,56,79),
           Geografia = c(100, 78, 86, 90, 98, 67),
           Quimica = c(76, 56, 89, 90, 100, 87))

escola2

sqldf("select Aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2
      group by Aluno")

tapply(c(escola2$Matematica), escola2$Aluno, sum)

# by
?by

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2
     group by semestre")

by(escola2[ ,c(2,3,4)], escola2$semestre, colSums)

# lapply()
?lapply

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)  # retono do resultado + amigável

# vapply()
?vapply

vapply(lista1, fivenum, c(Min. = 0, "1stQu." = 0, Median = 0, "3rd Qu." = 0,
      Max = 0))

# replicate (replica uma determinada operação n vezes)
?replicate
replicate(7, runif(10))

# mapply() - aplicação de função multivariada
?mapply
mapply(rep, 1:4, 4:1)

# rapply()
?rapply

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")







































 
 
 



















































