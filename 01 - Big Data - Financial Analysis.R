###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Big Data na prática - Buscando dados para Análise Financeira
## Big Data in practice - Fetching data for Financial Analysis

# http://www.quantmod.com

# Instalar e carregar pacotes / Installing and loading packages

install.packages("quantmod")  # Specific package for financial analysis
install.packages("xts")   # Temporal data manipulation
install.packages("moments") # Statistical Analysis of Time Series
library(quantmod)
library(xts)
library(moments)

# Selecao do periodo de analise / Selecting the analysis period
# Defining a start data and end data
startDate = as.Date("2016-01-01")
endDate = as.Date("2016-06-21")

# Download de dados do periodo / Data download the period
?getSymbols

# Select data Petrobras on yahoo source in the period
getSymbols("PETR4.SA", src = "yahoo", from = startDate, to = endDate)

# Checando o tipo de dado retornado / Checking the type of data returned
class(PETR4.SA)
is.xts(PETR4.SA)

# Mostra os primeiros registros para as acoes da Petrobras
# Show the first records to Petrobras stocks
head(PETR4.SA)

# Analisando os dados de fechamento / Analyzing the closing data of financial
PETR4.SA.Close <- PETR4.SA [ , "PETR4.SA.Close"]
is.xts(PETR4.SA.Close)
?Cl
head(Cl(PETR4.SA),5)

# Agora vamos plotar o gráfico da Petrobras
# Now we'll plotting a Petrobras graph
?candleChart
candleChart(PETR4.SA)

# Plot de fechamento / Plot of endday stocks
plot(PETR4.SA.Close, main = "Fechamento Diário das Ações da Petrobrás", 
     col = "red", xlab = "Data", ylab = "Preço", major.ticks = "month",
     minor.ticks = FALSE)

# Adicionando as bandas de bollinger ao gráfico, com média de 20 
# Bollinger band
# Como o desvio padrão é uma medida de volatilidade,
# Bollinger Bands ajustam-se às condições de mercado. Mercados mais volateis
# possuem as bandas mais distantes da média, enquanto mercados menos volateis
# bandas mais próximas da média
??addBBands
addBBands(n = 20, sd = 2)

# Calculando logs diários / Calculating daily logs
?log
PETR4.SA.ret <- diff(log(PETR4.SA.Close), lag = 1)

# Remove valores NA na posição 1 / Remove NA values on position 1
PETR4.SA.ret <- PETR4.SA.ret[-1]

# Plotar a taxa de retorno / Plottinf the rate of return
plot(PETR4.SA.ret, main = "Fechamento Diário das Ações da Petrobras", 
     col = "red", xlab = "Data", ylab = "Retorno", major.ticks = "months",
     minor.ticks = FALSE)

# Calculando algumas medidas estatísticas
statNames <- c("Mean", "Standard Deviation", "Skewness", "Kurtosis")
PETR4.SA.stats <- c(mean(PETR4.SA.ret), sd(PETR4.SA.ret), skewness(PETR4.SA.ret),
                    kurtosis(PETR4.SA.ret))

names(PETR4.SA.stats) <- statNames
PETR4.SA.stats

# Salvando os dados em um arquivo .rds (arquivo em formato binario do R)
# Saving data in an archive .rds (file in binary format to R)
getSymbols("PETR4.SA", source = "yahoo")
saveRDS(PETR4.SA, file = "PETR4.SA.rds") # Save data in binary format
Ptr = readRDS("PETR4.SA.rds")
dir()
head(Ptr)


















