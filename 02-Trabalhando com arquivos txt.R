###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Trabalhando com arquivos txt / Working with txt files

# Usando as funções base do R (pacote utils) / Using base R functions (utils)
search()

# Importando arquivo com read.table() / Importing archives with read.table()
?read.table

df1 <- read.table("pedidos.txt")
df1
dim(df1)

df1 <- read.table("pedidos.txt", header = T, sep = ",")
df1
dim(df1)

df1 <- read.table("pedidos.txt", header = T, sep = ",",
                  col.names = c("Var1", "Var2", "Var3"))
df1


# na.strings(): use quando precisar omitir dados da base (tipo senha/nome)
df1 <- read.table("pedidos.txt", header = T, sep = ",",
                  col.names = c("Var1", "Var2", "Var3"),
                  na.strings = c("Zico", "Maradona"))
df1

str(df1)
df1 <- read.table("pedidos.txt", header = TRUE, sep = ",",
                  col.names = c("Var1", "Var2", "Var3"),
                  na.strings = c("Zico", "Maradona"), stringsAsFactors = F)
df1
str(df1)

# Importando arquivo com read.csv() / Importing archives with read.csv()
df2 <- read.csv("pedidos.txt")
df2
dim(df2)

df3 <- read.csv2("pedidos.txt")
df3
dim(df3)

df3 <- read.csv("pedidos.txt", sep = ",")
df3
dim(df3)

# Importando arquivo com read.delim () / Importing archive with read.delim()
df4 <- read.delim("pedidos.txt")
df4
dim(df4)

df4 <- read.delim("pedidos.txt", sep = ",")
df4
dim(df4)

# Importando | Exportando / Importing | Exporting
# Gerando arquivo / Creating archive
write.table(mtcars, file = "mtcars.txt")
dir()

dir()
df_mtcars <- read.table("mtcars.txt")
df_mtcars
dim(mtcars)

write.table(mtcars, file = "mtcars2.txt", sep = "|",
            col.names = NA, qmethod = "double")
list.files()
read.table("mtcars2.txt")
df_mtcars2 <- read.table("mtcars2.txt")
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = "|")
df_mtcars2

# Importando arquivos da internet / Importing internet's files
df_pedidos <- read.table("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/pedidos.txt", sep = ",")
df_pedidos





































