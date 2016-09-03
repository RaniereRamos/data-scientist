###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Subsetting

# Muitas das tecnicas abaixo podem ser realizadas com a aplicacao das funcoes
# subset(), merge(), plyr::arrange()
# Mas conhecer estas notacoes e fundamental para compreender com funcionam

## Vetores / Vectors
x <- c(6.2, 8.1, 5.5, 2.9)
x[]

# Indices positivos - Elementos em posicoes especificas
# Positive indices - elements in specific positions

x[c(1, 3)]     # Busque elementos da posicao 1 e 3
x[c(1, 1)]     # Busque o elemnto 1 duas vezes
x[order(x)]    # Ordena o vetor do menor para o maior

# Indices negativos - Ignora elementos em posicoes especificas
# Negative indices - Bypasses elements in specific positions

x[-c(1, 3)]
x[-c(1,4)]

# Vetor logico para gerar subsetting / Logical vector to generate subsetting

x[c(TRUE, FALSE)]
x[c(TRUE, FALSE, TRUE, FALSE)]

# Vetor de caracteres / Characters of vector
y <- setNames(x, letters[1:4])
y
y[c("d", "c", "a")]
y[c("a","a","a")]

# Matrizes / Matriz
mat <- matrix(1:9, nrow = 3)
colnames(mat) <- c("A", "B", "C")
mat
mat[1:2, ]
mat[1:2, 2:3]
 
# Funcao outer() permite que uma matriz se comporte como vetores independentes
# outer function() allows that a matrix behavior like independent vectors

?outer
vals <- outer(1:5, 1:5, FUN = "paste", sep =  ",")
vals
vals[c(4, 15)]

# Dataframes
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df[df$x == 2, ]
df[c(1,3), ]
df[c("x", "z")]
df[ , c("x", "z")]
str(df["x"])
str(df[ , "x"])

# Removendo colunas de dataframes / Removing columns of dataframes
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df$z <- NULL   # Zero os valores da coluna (exclusao dos dados)
df
df[setdiff(names(df), "z")]  # Apenas nao traz os valores 

# Operadores [], [[]] e $
a <- list(x = 1, y = 2)
a
a[1]
a[[1]]
a[["x"]]

b <- list(a = list(b = list(c = list(d = 1))))
b
b[[c("a", "b", "c", "d")]]
b[["a"]][["b"]][["c"]][["d"]]

# x$y e equivalente  x[["y", exact = FALSE]]
var <- "cyl"
mtcars$var
mtcars[[var]]

x <- list(abc = 1)
x$a
x[["a"]]

# Subsetting e atribuicao
x <- 1:5
x
x[c(1,2)] <- 2:3
x

x[-1] <- 4:1
x

# This is subsetting
head(mtcars)
mtcars[] <- lapply(mtcars, as.integer)
mtcars

# This is NOT subsetting
mtcars <- lapply(mtcars, as.integer)
mtcars


# Lookup tables
x <- c("m", "f", "u", "f", "f", "m", "m")
lookup <- c(m = "Male", f = "female", u = NA)
lookup[x]
unname(lookup[x])

# Usando operadores logicos / Logical operators
x1 <- 1:10 %% 2 == 0
x1
which(x1)
x2 <- which(x1)
x2
y1 <- 1:10 %% 5 == 0
y2 <- which(y1)
y2
intersect(x2, y2)
x1 & y1
union(x2, y2)
setdiff(x2, y2)























