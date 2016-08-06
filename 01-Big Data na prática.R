###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Big Data na pratica - mapeando areas de crimes / Mapping crimes's areas

install.packages("ggmap")
install.packages("ggplot2")
install.packages("downloader")
library(ggmap)
library(ggplot2)
library(downloader)

# Download and unzip de arquivos / Download and unzip files
url <- "http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/crimes.zip"
arquivo <- "crimes.zip"
download(url, arquivo)
unzip("crimes.zip")

# Criando o dataframa / Creating a dataframe (crime's data of city Seattle - USA)
df <- read.csv("crimes.txt")
head(df)
str(df)
dim(df)

# Criando o plot / Creating a plot
mapa <- qmap("seattle", zoom = 11, source = "stamen", maptype = "toner",
        darken = c(.3, "#BBBBBB"))
mapa

# Mapeando os dados / Mapping data
mapa + geom_point(data = df, aes(x = Longitude, y = Latitude))

# Mapeando os dados e ajustando a escala / Mapping data and scale adjust
mapa + geom_point(data = df, aes(x = Longitude, y = Latitude),
                  color = "darkgreen", alpha = .03, size = 1.1)

# Mapeando os dados e definindo uma camada de intensidade
# Mapping data and define an intensity layer
mapa + stat_density2d(data = df, aes(x = Longitude, y = Latitude,
                     color = ..density..,
                     size = ifelse(..density.. <= 1,0,..density..),
                     alpha = ..density..), geom = "tile", contour = F) +
scale_color_continuous(low = "orange", high = "red", guide = "none") +
scale_size_continuous(range = c(0,3), guide = "none") +
scale_alpha(range = c(0,.5), guide = "none") +
ggtitle("Crimes em Seattle") +
theme(plot.title = element_text(family = "Trebuchet MS", size = 36, face = "bold", hjust = 0, color = "#777777"))


# Big Data na pratica - mapeando areas de bike / mapping bikes's areas
library(ggmap)
library(ggplot2)

# Obtendo os dados / Getting data
url <- "http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/paris.zip"
arquivo <- "paris.zip"
download(url, arquivo)
unzip("paris.zip")

# Gerando o dataframe / Loadind a dataframe
df2 <- read.csv("paris.txt", sep = ",", header = T)
str(df2)
dim(df2)

# Criando o mapa / creating a map
map.paris <- qmap("paris", source = "stamen", zoom = 12, maptype = "toner", darken = c(.3, "#BBBBBB"))

# Unindo mapa e camada de dados / Joining map and data layer
map.paris + geom_point(data = df2, aes(x = longitude, y = latitude,
                      size = available_bike_stands,
                      color = available_bike_stands),
                      alpha = .9, na.rm = T)+
scale_color_gradient(low = "#33CC33", high = "#003300", name = "Número de Bikes disponíveis") +
scale_size(range = c(1,11), guide = "none") +
ggtitle("Número de Bikes Disponíveis em Paris") +
theme(text = element_text(family = "Trebuchet MS", color = "#666666")) +
theme(plot.title = element_text(size = 32, face = "bold", hjust = 0, vjust = .5))









































