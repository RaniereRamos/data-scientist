###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Trabalhando com arquivos csv / Working with csv files

# Usando o pacote readr / Using readr package
install.packages("readr")
library(readr)

# Abre o prompt para escolher o arquivo / Open the prompt to choose archive
meu_arquivo <- read_csv(file.choose())
meu_arquivo <- read_delim(file.choose(), sep = "|")

# Importando arquivos / Importing archives
df1 <- read_table("temperaturas.txt",
                 col_names = c("DAY", "MONTH", "YEAR", "TEMP"))
head(df1)
str(df1)

# Read all line the archive
read_lines("temperaturas.txt", skip = 0, n_max = -1L)
read_file("temperaturas.txt")

# Exportando e importando / Exporting and importing
write_csv(iris, "iris.csv")
dir()

# col_integer():
# col_double():
# col_logical():
# col_character():
# col_factor():
# col_skip():
# col_date() (alias = "D"), col_datetime() (alias = "T), col_time() ("t")

# Choosing data type before data importing
df_iris <- read_csv("iris.csv", col_types = list(Sepal.Length = col_double(),
           Sepal.Width = col_double(), Petal.Length = col_double(),
           Petal.Width = col_double(),
           Species = col_factor(c("setosa", "versicolor", "virginica"))))

dim(df_iris)
str(df_iris)

# Importing of internet
df_cad <- read_csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/cadastro.csv")
head(df_cad)

install.packages("dplyr")
library(dplyr)

df_cad <- tbl_df(df_cad)
head(df_cad)
View(df_cad)

# Creating a backup file
write.csv(df_cad, "df_cad_bkp.csv")

# Importando vários arquivos simultaneamente / Importing multiple file simultaneously
# Ideia: salvar as bases de dados no mesmo lugar e importar tudo de uma vez
# Esse comando pode nos ajudar muito
list.files()
lista_arquivos <- list.files("C:/Raniere/Formacao Cientista de Dados/01 - Big Data Analytics com R e Microsoft Azure/04- Usando R  para importação e limpeza de dados", full.names = TRUE)
class(lista_arquivos)
lista_arquivos

lista_arquivos2 <- lapply(lista_arquivos, read_csv)

# Show me the problems
problems(lista_arquivos2)

# Parsing - Veryfing if the date is in a ideal format to work like an object
parse_date("01/02/15", "%m/%d/%y")
parse_date("01/02/15", "%d/%m/%y")
parse_date("01/02/15", "%y/%m/%d")

# Defining locale agree with country
locale("en")
locale("fr")
locale("pt")

# New package to work with bigdata
# Ongoing project
# http://www.bigmemory.org
install.packages("bigmemory")
library(bigmemory)
?bigmemory
bigdata <- read.big.matrix(filename = "cadastro.csv", sep = ",", header = TRUE, skip = 1)




































