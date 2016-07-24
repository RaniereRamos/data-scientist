###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Revisão e Aprofundamento / Review and deepning

# Interagindo com o sistema operacional / Interacting with the operating system
list.files()         # Lista todos os arquivos do diretório
.Platform$OS.type    # Qual o tipo da minha plataforma
.Platform$file.sep   # Qual o tipo de separador de diretórios do sistema
Sys.Date()
Sys.info()
R.version
?system
system('ls -a')


# Criando um vetor / Creating a vector
vec1 <- c(12,3,4,19,34)
vec1


# Criando uma matriz / Creating a matrix
dados <- c(1:50)
mat1 <- matrix(dados, nrow = 5, ncol = 5, byrow = T)
mat1


# Criando listas / Creating lists
list1 <- list(vec1, mat1)
list1


# Criando dataframes / Creating dataframes
charac_vec <- c("A", "B", "C")
num_vec <- c(4.5, 3.9, 7.2)
logic_vec <- c(TRUE, TRUE, FALSE)
df1 <- data.frame(charac_vec, num_vec, logic_vec)
df1


# Comparando vetores e matrizes / Comparing vectors and matrix
vec1 > 10               # Verifica se cada elemento do vetor é maior que 10
mat1 > 20               # Verifica se cada elemento da matrix é maior que 20
mat1 == 2
mat1 ==2 | mat1 == 3
mat1 > 2 & mat1 < 4
!mat1 > 2 & mat1 < 4


for (i in length(vec1)) {
   if (vec1[i] > 10) {
      print("Pelo menos um elemento do vetor é maior que 10")
   } else {
      print("Todos os elementos do vetor são menores que 10")
   }
}


# Operações com listas e matrizes / operations with lists and matrices
lst2 <- list(2,3,5,7,11,13)
lst2

for (p in lst2) {
   print(p)
}

for (i in 1:length(lst2)) {
   print(lst2[[i]])
}

mat1
mat2 <- t(mat1)
mat2

for (i in mat1) {
   for (j in mat2) {
      total <- sum(mat2) + sum(mat1)
      }
   }
print(total)

# Nomeando vetores, matrizes, listas e dataframes
# Naming vectors, matrices, lists and dataframes
names(vec1) <- c("Col1", "Col2", "Col3", "Col4", "Col5")
vec1
dimnames(mat1) = list(c("Obs1", "Obs2", "Obs3", "Obs4", "Obs5"),
                      c("Var1", "Var2", "Var3", "Var4", "Var5"))
mat1
names(list1) <- c("Vetor", "Matriz")
list1
colnames(df1) <- c("Caracteres", "Float", "Inteiros")
rownames(df1) <- c("Obs1", "Obs2", "Obs3")
df1

# Verificando e convertendo / Checking and converting
is.vector(vec1)
is.vector(mat1)

as.vector(mat1)
as.list(mat1)
as.data.frame(mat1)
as.character(mat1)
mat1

df1
as.matrix(df1)
as.numeric(df1)

# Valores NA / Values NA
mat2 <- matrix(1:90, nrow = 10)
mat2
mat2[sample(1:50,10)] = NA
mat2

?is.na
na_lista <- is.na(mat2)
na_lista

# Operações com objetos / Operations with objects
vec1
sum(vec1)
mat1
rowSums(mat1)     # Totais por linha
colSums(mat1)     # Totais por coluna
cbind(vec1,mat1)
rbind(vec1,mat1)
mat1  * 3

# Ranking e ordenamento / Ranking and ordering
a <- c(100, 10, 1000)
order(a)
a[order(a)]

# Slicing
vec1
vec1[2]
mat1
mat1[ ,2]
mat1[1:3, 2:4]
list1
list1[[1]]
list1[[1]][4]
list1$Matriz

# Dataframes
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
mtcars[ ,5]
mtcars[1:4, 7:9]
mtcars[1:4, "hp"]
mtcars["hp"]
mtcars$hp
subset(mtcars, subset = hp > 170)
library(dplyr)
slice(mtcars, 1:4)
order(mtcars)
order(mtcars$mpg)









































