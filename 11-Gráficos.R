###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Gráficos em R / Graphics in R

# Lista de pacotes base carregados / List of base packages loaded
search()

# Demo
demo("graphics")

# Plot básico / Basic plot
x <- 5:7
y <- 8:10
plot(x,y)
?plot


altura <- c(145, 167, 176, 123, 150)
largura <- c(51, 63, 64, 40, 55)

plot(altura, largura)

# Plotting a dataframe
?lynx
plot(lynx)
plot(lynx, ylab = "Plots com Dataframes", xlab = "")
plot(lynx, ylab = "Plots com Dataframes", xlab = "Observações")
plot(lynx, main = "Plots com Dataframes", col = "red")
plot(lynx, main = "Plots com Dataframes", col = "red", col.main = 52,
     cex.main = 1.5)

library(datasets)
hist(warpbreaks$breaks)

airquality & lt; - transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone(ppb)")


# Especificando os parâmetros / Specifying parameters
# col - color plotting
# lty - type of line
# lwd - linewidth
# pch - symbol on the plot
# xlab - x axis label
# ylab - y axis label
# las - as the axes of the labels are oriented
# bg - background color
# mfrow - numbers of plot by lines
# mfcol - numbers of plot by columns

# Funções báscicas de plot / Basic functions of plot
# plot() - scatterplots
# lines() - adding lines to graphic
# points() - adding points to graphic
# text() - adding label to text
# title() -  adding title to graphic

?par
par()
par("pch")
par("lty")


x <- 2:4
plot(x, pch = "c")

par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue","red"), legend = c("Var1", "Var2"))

# Available colors
# png
# Preparando o espaço e as características para salvar o gráfico
png("Gráfico1.png", width = 500, height = 500, res = 72)

plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species,
     main = "Gráfico gerado a partir da Iris")

# Close the channel for save the graph
dev.off()

# pdf
pdf("Gráfico2.pdf")
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species,
     main = "Gráfico gerado a partir do Iris")
dev.off()

# Entendendo as funções do plot / Understanding the functions of the plot
install.packages("plotrix")
library(plotrix)
?plotrix

par(mfrow = c(1,1), col.axis = "red")
plot(1:6, las = 3, xlab = "lty 1:6", ylab = "", main = "Mais opções ao plot")
abline(v = 1, lty = 1, col = "sienna2", lwd = 2)
abline(v = 2, lty = 1, col = "sienna2", lwd = 2)
abline(v = 3, lty = 1, col = "sienna2", lwd = 2)
abline(v = 4, lty = 1, col = "sienna2", lwd = 2)
abline(v = 5, lty = 1, col = "sienna2", lwd = 2)
abline(v = 6, lty = 1, col = "sienna2", lwd = 2)
abline(v = 7, lty = 1, col = "sienna2", lwd = 2)


plot(lynx)
plot(lynx, type = "p", main = "Type p")
plot(lynx, type = "l", main = "Type l")
plot(lynx, type = "b", main = "Type b")
plot(lynx, type = "o", main = "Type o")
plot(lynx, type = "h", main = "Type h")
plot(lynx, type = "s", main = "Type s")
plot(lynx, type = "n", main = "Type n")

# Dois plots juntos / Two plots together
par(mar = c(4,3,3,3), col.axis = "black")

plot(cars$speed, type = "s", col = "red", bty = "n", xlab = "Cars ID", ylab = "")
text(8, 14, "Velocidade", cex = 2, col =  "red")
par(new = TRUE)

plot(cars$dist, type = "s", bty = "n", ann = F, axes = F, col = "darkblue")
axis(side = 4)
text(37, 18, "Distância", cex = 2, col = "darkblue")

title(main = "Velocidade x Distância", cex.main = 3)


# Plots a partir de datasets / Plot by datasets
df <- read.csv("pibpercap.csv", stringsAsFactors = F)
df_1982 <- subset(df, ano = 1982)
plot(expectativa ~ pibpercap, data = df_1982, log = "x")

head(df)
mycol <- c(Asia = "tomato", Europe = "chocolate4", Africa = "dodgerblue2",
           Americas = "darkgoldenrod1", Oceania = "green4")

plot(expectativa ~ pibpercap, data = df_1982, log = "x", col = mycol[continente])


mycex <- function(var, r, f = sqrt){
   x = f(var)
   x_scaled = (x - min(x))/(max(x) - min(x))
   r[1] + x_scaled * (r[2] - r[1])
}


plot(expectativa ~ pibpercap, data = df_1982, log = "x",
     col = mycol[continente], cex = mycex(pop, r = c(0.2, 10)))




















