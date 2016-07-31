###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Scatterplots

# Define os dados / Define the data
set.seed(67)      # generate random data

# Creating data distribution
x <- rnorm(10,5,7)
y <- rpois(10,7)
z <- rnorm(10,6,7)
t <- rpois(10,9)

# Cria o plot / Create a plot
plot(x, y, col = 123, pch = 10, main = "Multi Scatterplot", col.main = "red",
     cex.main = 1.5, xlab = "indep", ylab = "depend")

# Adiciona outros dados / Adding another data
points(z, t, col = "blue", pch = 4)

# Adiciona outros dados / Adding another data
points(y, t, col = "777", pch = 9)


## Você nao precisa ficar reconstruindo seu gráfico. Basta adicionar camadas

# Cria legenda / Create legend
legend(-6, 5.9, legend = c("Nível1", "Nível2", "Nível3"),
       col = c(123, "blue", 777), pch = c(10,4,9), cex = 0.65, bty = "n")







