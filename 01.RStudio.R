###############################################################################
#                                                                             #        
# CURSO:  Forma��o Cientista de Dados        PLATAFORMA: Data Science Academy #
# M�DULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Explorando o 01-RStudio.R / Exploring the 01-RStudio archive

# Nome dos Contributors / contributor's names
contributors()

#Licen�a / license
license()

# Informa��es sobre a sess�o / Information about session
sessionInfo()

# Imprimir na tela / print on the screen
print('R - Umas das principais ferramentas do Cientista de Dados')

# Criar gr�ficos / create graphics
plot(1:30)
hist(rnorm(10))

# Instalar pacotes / Install packages
install.packages("randomForest")        # machine learning algorithms
install.packages("ggplot2")

# Carregar o pacote / load packages
library(randomForest)
library(ggplot2)

# Descarregar o pacote / remove package
detach(package:randomForest)

# Se souber o nome da fun��o / If you know the function's name
help(mean)
?mean

# Se n�o souber o nome da fun��o / If you don't know the function's name
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')



















