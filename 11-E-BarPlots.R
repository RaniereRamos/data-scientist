###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Bar Plots

?barplot

# Preparando os dados / Preparing data
casamentos <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67),
              nrow = 3, byrow = TRUE)

# Nomeando a matriz / Named the matrix
colnames(casamentos) <- c("0", "1 - 150", "151 - 300", "> 300")
rownames(casamentos) <- c("Casado", "Divorciado", "Solteiro")

# Construindo um plot / Creating a plot
barplot(casamentos)
barplot(casamentos, beside = T)  # Bar side by side

# Transposta da matriz / Transposed matrix
barplot(t(casamentos), beside = T)








