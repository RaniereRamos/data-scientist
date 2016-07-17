###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## DataFrames

# Criando um dataframe vazio / Creating an empty dataframe
df <- data.frame()
class(df)
df


# Criando vetores vazios / Creting empty vectors
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

# Criando vetores / Creating vectors
pais = c("EUA", "Dinamarca","Holanda","Espanha","Brasil")
nomes = c("Maurício","Pedro","Aline","Beatriz","Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)

# Criando um dataframe de diversos vetores 
# Creating a dataframe with distinct vectors
pesquisa = data.frame(pais, nomes, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
# Adding a new vector to an exist dataframe
olhos = c("verde","azul","azul","castanho","codigo")
pesq = cbind(pesquisa, olhos)
pesq

# Informações sobre o dataframe / Information about dataframe
str(pesq)
dim(pesq)
length(pesq)


# Obtendo um vetor de um dataframe / Obtaining a vector of a dataframe
pesq$pais   
pesq$nomes


# Extraindo um único valor / Subsetting only value
pesq[1,1]
pesq[3,2]


# Número de linhas e colunas /  Number of rown and columns
nrow(pesq)
ncol(pesq)


# Primeiros elementos do dataframe / Firt elements of dataframe
head(pesq)      # Consulta as primeiras linhas do dataframe
head(mtcars)


# Últimos elementos do dataframe / last elements of dataframe
tail(pesq)
tail(mtcars)


# Data frames built-in do R
?mtcars
mtcars

# Filtro para um subset de dados que atendem a um critério
# Filter to a subset data that meet a criterion
pesq[altura < 1.60, ]
pesq[altura < 1.60, c("codigo","olhos")]
pesq


# Dataframes nomeados / Named dataframes
names(pesq) <- c("País", "Nome","Altura","Código", "Olhos")
pesq

colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq


## Importando arquivos com funções / Import archives with functions
# read.xls() - Excel
# read.mtp() - Minitab
# read.spss() - SPSS
# read.table() - Arquivos txt
# read.csv() - Arquivos csv
# read.delim() - Leitura de arquivos delimitados

?read.csv
df2 <- data.frame(read.csv(file = "dframe.csv", header = T, sep = ","))
head(df2)
summary(df2)

df2$Diabete
df2$Status
df2$status

plot(df2$Admdate)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)


# Combinando dataframes / Combinig dataframes
df3 <- merge(pesq, df2)  # Vocë precisa ter uma coluna igual ambos dataframes
df3














































































































