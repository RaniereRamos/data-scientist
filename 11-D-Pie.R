###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Gráfico de Pizza / Pie chart
?pie

# Criando as fatias / Creating slices
fatias <- c(40,20,40)

# Nomeando os labels / Naming labels
paises <- c("Brasil", "Argentina", "Chile")

# Unindo países e fatias / Concatenate "paises and fatias)
paises <- paste(paises, fatias)

# to further specify the labels
paises = paste(paises, "%", sep = "")

colors()

# Construindo um gráfico / Creating a graphic
pie(fatias, labels = paises, col = c("darksalmon", "gainsboro", "lemonchiffon4"),
    main = "Distribuição de vendas")

# Trabalhando com dataframes / Working with dataframes
?iris
attach(iris)
Values = table(Species)
labels = paste(names(Values))
pie(Values, labels = labels, main = "Distribuição de Espécies")

# 3D
library(plotrix)

pie3D(fatias, labels = paises, explode = 0.05,
      col = c("steelblue1", "tomato2", "tan3"),
      main = "Distribuição de Vendas")



























