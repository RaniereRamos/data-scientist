###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Split-Apply-Combine - plyr
install.packages("plyr")
install.packages("gapminder") # Pacotes com dados para analise estatistica
# https://www.gapminder.org

library(plyr)
library(gapminder)

?ddply
# Split-Apply-Combine
df <- ddply(gapminder, ~ continent,
            summarize,
            max_le = max(lifeExp))
str(df)
head(df)
levels(df$continent) # Verifica os niveis da variavel cateforica

# Split-Apply-Combine
ddply(gapminder, ~ continent,
      summarize,
      n_uniq_countries = length(unique(country)))

ddply(gapminder, ~ continent,
      function(x) c(n_uniq_countries = length(unique(x$country))))

ddply(gapminder, ~ continent,
      summarize,
      min = min(lifeExp),
      max = max(lifeExp),
      median = median(gdpPercap))

# Usando um dataset do ggplot / Using a ggplot's dataset
library(ggplot2)
data(mpg)
str(mpg)
?mpg

# Trabalhando com um subset do dataset / Working with a subset of dataset
data <- mpg[ ,c(1,7:9)]
str(data)

# Sumarizando e agregando dados / Summarizing and joining data
ddply(data, .(manufacturer),
      summarize,
      avgcty = mean(cty))

# Varias funcoes em uma unica chamada / Many functions once a time
ddply(data, .(manufacturer),
      summarize,
      avgcty = mean(cty),
      sdcty = sd(cty),
      maxhwy = max(hwy))

# Sumarizando os dados pela combinacao de variaveis / fatores
ddply(data, .(manufacturer, drv),
      summarize,
      avgcty = mean(cty),
      sdcty = sd(cty),
      maxhwy = max(hwy))

# *** Obs ***
# Os pacotes reshape / reshape2 sao formas elegantes de agrupar diversas
# variaveis ao mesmo tempo

# Perceba a diferenca entre summarize e transform
ddply(data, .(drv), summarize, avgcty = mean(cty))
ddply(data, .(drv), transform, avgcty = mean(cty))


























