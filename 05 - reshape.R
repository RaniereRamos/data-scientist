###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Remodelando os dados com reshape / Remodeling data to reshaping

# Pivot (transposta da matriz) / Pivot (transposed matrix)
mtcars
t(mtcars)

# Reshape
head(iris)
str(iris)
library(lattice)

# Distribuindo os dados verticalmente (long)/ Distributing the data vertically
iris_modif <- reshape(iris,
                       varying = 1:4,
                       v.names = "Medidas",
                       timevar = "Dimensoes",
                       times = names(iris)[1:4],
                       idvar = "ID",
                       direction = "long")
head(iris_modif)
iris_modif

bwplot(Medidas ~ Species | Dimensoes, data = iris_modif)

iris_modif_sp <- reshape(iris,
                         varying = list(c(1,3), c(2,4)),
                         v.names = c("Comprimento", "Largura"),
                         timevar = "Parte",
                         times = c("Sepal", "Petal"),
                         idvar = "ID",
                         direction = "long")
head(iris_modif_sp)
head(iris)

xyplot(Comprimento ~ Largura | Species, groups = Parte,
       data = iris_modif_sp, auto.key = list(space = "right"))

xyplot(Comprimento ~ Largura | Parte, groups = Species,
       data = iris_modif_sp, auto.key = list(space = "right"))


# Reshape2
install.packages("reshape2")
library(reshape2)

# Criando um dataframe / Creating a dataframe
df <- data.frame(nome = c("Zico", "Pele"),
                 chuteira = c(40,42),
                 idade = c(34, NA),
                 peso = c(93, NA),
                 altura = c(175, 178))
df

# "Derretendo" o dataframe - Funcao melt() / "Melting" dataframe
df_wide <- melt(df, id = c("nome", "chuteira"))
df_wide

# Removing NA
df_wide = melt(df, id = c("nome", "chuteira"), na.rm = TRUE)
df_wide

# "Esticando" o dataframe / "Longing" the dataframe
dcast(df_wide, formula = chuteira + nome ~ variable)
dcast(df_wide, formula = nome + chuteira ~ variable)
dcast(df_wide, formula = nome ~ variable)
dcast(df_wide, formula = ... ~ variable)

# Aplicando o reshape2
names(airquality) <- tolower(names(airquality))
head(airquality)
dim(airquality)

# Funcao melt() - wide
?melt
df_wide <- melt(airquality)
class(df_wide)
df_wide
head(df_wide)
tail(df_wide)

# Inserindo mais duas variaveis / Inserting more two variables
df_wide <- melt(airquality, id.vars = c("month", "day"),
                variable.name = "climate_variable",
                value.name = "climate_value")

head(df_wide)

# Funcao dcast() - long
df_wide <- melt(airquality, id.vars = c("month", "day"))
df_long <- dcast(df_wide, month + day ~ variable)
head(df_long)
head(airquality)



















