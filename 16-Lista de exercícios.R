###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


### Lista de exercícios


## Exercício 1 - Crie uma função que receba vetores como parâmetros,
## converta-os em dataframe e imprima

create_vector <- function(){
   pickup <- sample(1:100, size = 10, replace = F)
   pickup
}
 ###### ************************************************** ########



## Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com
## números inteiros e calcule a média de cada linha


# Criando 4 vetores com 4 colunas por amostragem em 1000
V1 <- sample(1:1000, size = 4, replace = F)
V2 <- sample(1:1000, size = 4, replace = F)
V3 <- sample(1:1000, size = 4, replace = F)
V4 <- sample(1:1000, size = 4, replace = F)

V1
V2
V3
V4

# Criando uma matrix de 4 linhas por 4 colunas de forma aleatoria
?rbind
mymatrix <- rbind(V1,V2,V3,V4)
mymatrix

?apply
apply(mymatrix, 1, mean)


## Exercício 3 - Considere o dataframe abaixo. Calcule a media por disciplina
## escola <- data.frame (Aluno = c("Alan","Alice","Alana","Aline","Alex","Ajay"),
## Matematica = c(90,80,85,87,56,79),
## Geografia = c(100,78,86,90,98,67),
## Quimica = c(76,56,89,90,100,87))


escola <- data.frame(Aluno = c("Alan","Alice","Alana","Aline","Alex","Ajay"),
          Matematica = c(90,80,85,87,56,79),
          Geografia = c(100,78,86,90,98,67),
          Quimica = c(76,56,89,90,100,87))

escola
sapply(escola, mean)
?sapply


## Exercício 4 -  Crie uma lista com 3 elementos, todos numéricos e calcule a
## soma de todos os elementos das lista

mylist <- list(P1 = sample(1:100, size = 3, replace = F),
               P2 = sample(1:500, size = 3, replace = F),
               P3 = sample(1:900, size = 3, replace = F))
mylist
sapply(mylist, sum)
class(mylist)


## Exercício 5 - Transforme a lista anterior em um vetor
?do.call
myvector <- c(do.call("cbind",mylist))
myvector
is.vector(myvector)


## Exercício 6 - Considere a string abaixo. Substitua a palavra textos por
## str <- c("Expressoes", "regulares","em linguagem R",
## "permitem a busca de padroes", "e exploracao de textos",
## "podemos buscar padroes em digitos", "como por exemplo", "10992451280")

str <- c("Expressoes", "regulares", "em linguagem R",
         "permmitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo", "10992451280")

str
length(str)

# gsub() - Substitui caracteres encontrados de acordo com padrão especificado
?gsub
modification <- gsub("textos", "frases", str, ignore.case = T)
modification


## Exercício 7 - Usando o dataset mtcars, crie um gráfico com ggplot do tipo
## scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
mtcars
?mtcars
library(ggplot2)

# Criando um scatterplot
cars <- plot(mtcars$disp, mtcars$mpg, col = "blue",
        main = "Displacement X Miles/(US) gallon", col.main = "darkblue",
        cex.main = 2, xlab = "Displacement", ylab = "Miles/gallon",
        pch = 20)
?pch
?plot

## Exercício 8 - Usando o exemplo anterior, explore outros tipos de gráficos

# Criando um boxplot
carbox <- boxplot(data = mtcars, disp ~ mpg,
          main = "Displacement X Miles/(US) gallon", col.main = "purple",
          ylab = "Miles/gallon", xlab = "Displacement")

# Adicionando camadas #
points(means, col = "red")

# Criando um histograma
attach(mtcars)
disp
mpg
displac <- hist(disp, labels = T, breaks = 10, ylim = c(0,8), xlim = c(0,500))
milesga <- hist(mpg, labels = T, breaks = 10, ylim = c(0,8), xlim = c(10,40))

#Criando um barplot
barplot(mtcars$mpg)
barplot(mtcars$disp, beside = T)





























