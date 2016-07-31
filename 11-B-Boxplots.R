###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Boxplots

?boxplot
?sleep

# Permite utilizar as colunas sem especificar o nome do dataset
# Lets you use the columns without specifying the name of dataset
attach(sleep)

# Construção do boxplot / Creating boxplot
sleepboxplot <- boxplot(data = sleep, extra ~ group, main = "Duração do sono",
                col.main = "red", ylab = "Horas", xlab = "Droga")

# Cáculo da média / Averaging
means = by(extra, group, mean)

# Adiciona a média ao gráfico / Adding mean to graphic
points(means, col = "red")

# Bolplot horizontal / Horizontal boxplot
horizontalboxplot <- boxplot(data = sleep, extra ~ group, ylab = "", xlab = "",
                     horizontal = TRUE)

horizontalboxplot <- boxplot(data = sleep, extra ~ group, ylab = "", xlab = "",
                     horizontal = TRUE, col = c("blue", "red"))


















