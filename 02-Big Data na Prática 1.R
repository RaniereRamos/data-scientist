###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Big Data na prática 1 - Temperatura média nas cidades brasileiras
## Big data in practice 1 - average temperature in Brazilian cities

# Dataset:
# Berkeley Earth
# http://berkeleyearth.org/data
# TemperaturasGlobais.csv ~ 78 MB (zip) ~ 496 MB (unzip)

# Instalando e carregando pacotes / Instaling and loading packages
install.packages("readr")
install.packages("data.table")
install.packages("dtplyr")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(dtplyr)

# Carregando os dados (Usando um timer para comparar o tempo de carregamento)
# Loading data (using a timer to compare loading's time)

# Usando read.csv2() / using read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))

# Usando read.table() / using read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))

# Usando fread() / using fread()
?fread
system.time(df <- fread("TemperaturasGlobais.csv"))


# Criando subsets dos dados carregados / Creating subsets of loading data
cidadesBrasil <- subset(df, Country == "Brazil")
cidadesBrasil <- na.omit(cidadesBrasil)   # Tirar valores NA da base
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)


# Preaparação e organização / Preparation and organization
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt, format = "%Y-%m-%d")
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)

# Carregando os subsets / loading subsets
# Palmas
plm <- subset(cidadesBrasil, City = "Palmas")
plm <- subset(plm, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

# Curitiba
crt <- subset(cidadesBrasil, City = "Curitiba")
crt <- subset(crt, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

# Recife
recf <- subset(cidadesBrasil, City = "Recife")
recf <- subset(recf, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))


## Construindo os plot / Doing plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, 
         color = as.factor(Year))) +
         geom_smooth(se = FALSE, fill = NA, size = 2) +
         theme_light(base_size = 20) + xlab("Mês") +
         ylab("Temperatura Média") +
         scale_color_discrete("") +
         ggtitle("Temperatura Média ao longo dos anos em Palmas") +
         theme(plot.title = element_text(size = 18))

   
p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, 
         color = as.factor(Year))) +
         geom_smooth(se = FALSE, fill = NA, size = 2) +
         theme_light(base_size = 20) + xlab("Mês") +
         ylab("Temperatura Média") +
         scale_color_discrete("") +
         ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
         theme(plot.title = element_text(size = 18))


p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, 
          color = as.factor(Year))) +
          geom_smooth(se = FALSE, fill = NA, size = 2) +
          theme_light(base_size = 20) + xlab("Mês") +
          ylab("Temperatura Média") +
          scale_color_discrete("") +
          ggtitle("Temperatura Média ao longo dos anos em Recife") +
          theme(plot.title = element_text(size = 18))


# Plotando / Plotting
p_plm
p_crt
p_recf











































































