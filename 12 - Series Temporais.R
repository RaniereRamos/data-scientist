###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Analise de Series Temporais / Analysis of Time Series
# Repositorios de dados de series temporais / Repos of Time Series data 
# http://robjhyndman.com/tsdldata

?scan
reis <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat", skip = 3)
reis
class(reis)

# Transformando os dados em series temporais 
# Transforming the data into Time Series
tseries <- ts(reis)
tseries
class(tseries)
plot(tseries)


nascimentos <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat")
tsnascimentos <- ts(nascimentos, frequency = 12, start = c(1946, 1))
tsnascimentos
plot.ts(tsnascimentos)

# Pacote forecast / Forecast package
install.packages("forecast")
library(xts)
library(forecast)

# Cotacao de acoes da IBM / IBM shares from quotation
url <- "http://ichart.finance.yahoo.com/table.csv?s=IBM&a=00&b=2&c=1990&d=05&e=26&f=2016&g=d&ignore=.csv"

# Lendo o conteudo da url para um dataframe / Reading the contents of the URL
IBM.df <- read.table(url, header = TRUE, sep = ",")

# Visualizando as primeiras linhas do dataframe
# Visualizing the first rows on dataframe
head(IBM.df)

# Covertendo o dataframe em serie temporal
# Converting the dataframe in a Time Series
IBM <- xts(IBM.df$Close, as.Date(IBM.df$Date))
head(IBM)

# Construindo um plot / Building a plot
plot(IBM)

# Criando um subset do conjunto de dados de series temporais
# Creating a subset of dataframe at Times Series
IBM.2014 <- window(IBM, start = "2014-01-01", end = "2015-01-01")

# Ploting
plot(IBM.2014)




























