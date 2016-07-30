###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Expressões regulares / Regular expressions

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, ...)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, ... )
# sub(pattern, replacement, x, ingnore.case = FALSE, perl = FALSE, ...)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, ...)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, ...)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, ..)


str <- c("Expressões", "regulares", "em linguagem R",
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos", "como por exemplo",
         "10992451280")

length(str)
str


# grep() - Buscar padrões no vetor / Look for patterns in vector
grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = F)   # \\d - encontra dígitos / Look fo numbers
grep("\\d", str, value = T)


# grepl() - Retorna um vetor de valores lógicos
grepl("\\d+", str)   # Procurar o que começa e termina com dígito
grepl("\\D", str)    # Procurar posições onde não há dígitos


# gsub() - Substitui caracteres encontrados de acordo com padrão especificado
gsub("em", "|", str)
gsub("ex", "EX", str, ignore.case = T)


# sub() - Substitui o primeiro padrão que encontrar em cada vetor
sub("em", "EM", str)

# regexpr()
frase <- "Isso é uma string."
regexpr(pattern = "u", frase)


# gregexpr()
gregexpr(pattern = "u", frase)

str2 <- c("2678 é maior que 45 - @???!&$", "Vamos escrever 14 scripts R")
str2

# gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)      # remove spaces
gsub("[iot]", "Q", str2)   # replace characters
gsub("[[:punct:]]", "", str2) # remove punctuation
gsub("[^@]", "", str2)























