###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## ggplot2

# Um sistema gráfico completo, alterntivo ao sistema básico de gráficos do R
# Oferece mais opções de modificação, legendas prontas, formatação mais sólida

# A complete graphics system, an alternative to the basic system or R graphics
# It provides more modification options, ready legends, more solid format

install.packages("ggplot2")
library(ggplot2)

# Plotando um gráfico básico com qplot() / Plotting a basic graphic qplot()
install.packages("reshape2")
require(reshape2)

data(tip, package = "reshape2")
qplot(total_bill, tip, data = tips, geom = "point")


# Camada 1 / Layer 1
camada1 <- geom_point(mapping = aes(x = total_bill, y = tip, color = sex),
           data = tips, size = 3)

ggplot() + camada1
?aes
??aes        # Similar HelpSearch()

# Construindo um modelo de regressão / Creating a regression model
modelo_base <- lm(tip ~ total_bill, data = tips)
modelo_fit <- data.frame(total_bill = tips$total_bill, predict(modelo_base,
            interval = "confidence"))

head(modelo_fit)


# Camada 2 / Layer 2
camada2 <- geom_line(mapping = aes(x = total_bill, y = fit), data = modelo_fit,
           color = "darkred")

ggplot() + camada1 + camada2

# Camada 3 / Layer 3
camada3 <- geom_ribbon(mapping = aes(x = total_bill, ymin = lwr, ymax = upr),
           data = modelo_fit, alpha = 0.3)

ggplot() + camada1 + camada2 + camada3


# Versão final otimizada / Final version optimized
ggplot(tips, aes(x = total_bill, y = tip)) + geom_point(aes(color = sex)) +
      geom_smooth(method = "lm")


myplot <- ggplot(tips, aes(x = total_bill, y = tip)) +
          geom_point(aes(color = sex)) + geom_smooth(method = "lm")

class(myplot)
print(myplot)


# ScatterPlot com linha de regressão / Scatterplot with regression line
# Dados / Data
data = data.frame(cond = rep(c("Obs 1", "Obs 2"), each = 10), var1 = 1:100 +
        rnorm(100, sd = 9), var2 = 1:100 + rnorm(100, sd = 16))

# Plot
ggplot(data, aes(x = var1, y = var2)) + geom_point(shape = 8) +
      geom_smooth(method = lm, color = "red", se = FALSE)

?lm

# Bar plot
# Dados / Data
data <- data.frame(grupo = c("A", "B", "C", "D"), valor = c(33,62,56,67),
         num_obs = c(100,500,459,342))

# Gerando a massa de dados / Generate a mass data
data$right <- cumsum(data$num_obs) + 30 * c(0:(rnorm(data)-1))
data$left <- data$right - data$num_obs

# Plot
ggplot(data, aes(ymin = 0)) +
      geom_rect(aes(xmin = left, xmax = right, ymax = valor, colour = grupo, fill = grupo)) + xlab("Número de obs") + ylab("Valor")

# Usando o mtcars / Using mtcars dataset
head(mtcars)
ggplot(data =  mtcars, aes(x = disp, y = mpg)) + geom_point()


# Outro aspecto que pode ser mapeado nesse gráfico é a cor dos pontos
# Anotger aspect that can be mapped is the color of points
ggplot(data = mtcars, aes(x = disp, y = mpg, colour = as.factor(am))) +
      geom_point()

# No entanto, também podemos mapear uma variável contínua à cor
ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl)) + geom_point()

# Também podemos mapear o tamanho dos pontos à uma variável
# A legenda é inserida no gráfico automaticamente

# We can also measure the size of the dots to a variable
# The legend is automatically inserted in the chart
ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl, size = wt)) + geom_point()

# Os geoms definem qual a forma geométrica será utilizada para a visualização
# The geoms define what geometric shape will be use to visualization
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) + geom_boxplot()

# Histogramas / Histograms
ggplot(mtcars, aes(x = mpg), binwidth = 30) + geom_histogram()

# Gráfico de barras / Bar graph
ggplot(mtcars, aes(x = as.factor(cyl))) + geom_bar()

# Personalizando os gráficos / Customizing graphs
colors()
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, colour = as.factor(cyl))) +
      geom_boxplot()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, fill = as.factor(cyl))) +
      geom_boxplot()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) +
      geom_boxplot(color = "blue", fill = "seagreen4")


# Podemos alterar os eixos / We can change the axis
ggplot(mtcars, aes(x = mpg)) + geom_histogram() +
      xlab("Milhas por galão") + ylab("Frequência")

# Alterar os limites do gráfico / Change graphics limits
ggplot(mtcars, aes(x = mpg)) + geom_histogram() + xlab("Milhas por galão") +
      xlim(c(0,40)) + ylim(c(0,8))

# Legendas / Legends
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + geom_bar()
      + labs(fill = "cyl")

# Trocando a legenda de posição / Change legend position
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + geom_bar()
      + labs(fill = "cyl") + theme(legend.position = "top")

# Sem legenda / Wwithout legend
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + geom_bar()
       + guides(fill = F)


# Facets
ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) + geom_point() + facet_grid(am~.)
ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) + geom_point() + facet_grid(.~am)


# Plots diferentes juntos (diferente do facet) / different plots together
install.packages("gridExtra")
library(gridExtra)
library(ggplot2)

# Diamonds dataset
data(diamonds)

# Histograma como plot1 / Histogram like plot1
plot1 <- qplot(price, data = diamonds, binwidth = 1000)

# Scatterplot como plot2 / Scatterplot like plot2
plot2 <- qplot(carat, price, data = diamonds, colour = cut)

# Combina os 2 plots na mesma área / Combine 2 plots in the same area
grid.arrange(plot1, plot2, ncol = 1)

# Gráficos de densidade / Density graphics
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
      geom_density(adjust = 1.5)

ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
      geom_density(adjust = 1.5, alpha = 0.2)

ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
      geom_density(adjust = 1.5, position = "fill")


# Facets com reshape / Facets with reshape
install.packages("plotly")
library(reshape2)
library(plotly)

sp <- ggplot(tips, aes(x = total_bill, y = tip/total_bill)) + geom_point()
sp + facet_grid(sex ~ .)
ggplotly()
sp + facet_grid(. ~ sex)
ggplotly()
sp + facet_wrap(~ day, ncol = 2)
ggplotly()


ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~manufacturer)
ggplotly()




































