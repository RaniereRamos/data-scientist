###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Strings

# String
texto <- "Isso é uma string!"
texto

x = as.character(3.14)
x
class(x)


# Concatenando Strings
nome = "Barack"; sobrenome = "Obama"
paste(nome, sobrenome)
cat(nome, sobrenome)

# Formantando a saida / Formatting output
sprintf("%s governa os EUA há %d anos", "Barack Obama", 8)

# Extraindo parte da string / Extract parts of string
texto <- "Isso é uma string!"
substr(texto, start = 12, stop = 17)
?substr

# Contando o número de caracteres / Counting numbers os characters
nchar(texto)

# Alterando a capitalização / Alternate the text's font
tolower("Histogramas e Elementos de Dados") # Converte texto para minúsculo
toupper("Histogramas e Elementos de Dados") # Converte texto para maiúsculo

# Usando stringr / Using stringr
library(stringr)

# Dividindo uma string em caracteres / dividing a string in characters
# strsplit: função bastante útil para quebrar sua string em caracteres
strsplit("Histogramas e Elementos de Dados", NULL)
?strsplit

# Dividindo uma string em caracteres, após o caracter espaço
# Dividing a string in characters, after the character space
strsplit("Histogramas e Elementos de Dados")

# Trabalhando com strings / Working with strings
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte
             do meu vetor", "Aqui a minha string continua, mas será
             transformada no segundo vetor")

string1     # Imprimindo o texto

string2 <- c("Precisamos testar outras strings - @???!&$",
             "Análise de Dados em R")

string2

# Adicionando 2 strings / Adding  2 strings
str_c(c(string1, string2), sep = "")

# Podemos contar quantas vezes um caracter aparece no texto
# We can count how many times a character appears in text
str_count(string2, "s")


# Localiza a primeira e última posição em que o caracter aparece
# Show the first and last posicion where character appear
str_locate_all(string2, "s")


# Substitui a primeira ocorrência de um caracter
# Replace the first occurrence of a character
str_replace(string2, "\\s", "")


# Substitui todas as ocorrências de um caracter
# Replace all occurrences of a character
str_replace_all(string2, "\\s", "")


# Detectando padrões nas strings / Detecting pattern on strings
string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = string1)
padrao <- "mai20"
grepl(pattern = padrao, x = string1)


# Importando arquivo txt / Import .txt archive
# http://www.gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://www.gutenberg.org/cache/epub/100/pg100.txt")
head(arquivo)
tail(arquivo)

str_count(arquivo, "7")
str_locate_all(arquivo, "7")


# Criando funções para manipular strings
# Creating functions to manipulate strings
strtail <- function(s, n = 1){
    if(n < 0)
        substring(s, 1-n)
    else
        substring(s, nchar(s)-n+1)}

strtail("String de teste", 6)



































































































