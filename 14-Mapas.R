###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Mapas / Maps

# ggmap
install.packages("ggmap")
install.packages("mapproj")
library(ggmap)
library(mapproj)

map1 <- get_map(location = "Brazil", zoom = 4)
map2 <- get_map(location = "Europe", zoom = 4)
ggmap(map1)
ggmap(map2)

?ggmap

qmap("Recife")
qmap("L69 3GP", zoom = 16)
qmap("L69 3GP", zoom = 16, maptype = "satellite")


# Estádio Olímpico de Londres
mapImageData1 <- get_map(location = c(lon = -0.016179, lat = 51.538525),
                 color = "color", source = "google", maptype = "satellite",
                 zoom = 17)

ggmap(mapImageData1, extent = "device", ylab = "Latitude", xlab = "Longitude")


mapImageData2 <- get_map(location = c(lon = -0.016179, lat = 51.538525),
                 color = "color", source = "google", maptype = "hybrid",
                 zoom = 15)

ggmap(mapImageData2, extent = "device", ylab = "Latitude", xlab = "Longitude")





#### My home #######
home_map <- get_map(location = c(lon = -48.84721845, lat = -26.31526205),
                   color = "color", source = "google", maptype = "satellite",
                   zoom = 18)

ggmap(home_map, extent = "device", ylab = "Latitude", xlab = "Longitude")


# Mapas / Maps
install.packages("mapdata")
install.packages("maps")
library(mapdata)
library(maps)

map("worldHires", "Canada", xlim = c(-141,-53), ylim = c(40,85),
   col = "gray90", fill = TRUE)

?map
help(package = "maps")

# Gráficos de rede, interativos / Interactive network graphs
install.packages("networkD3")
library(networkD3)

data(MisLinks, MisNodes)
forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)

?networkD3

# Criando dados / Creating data
src <- c("A", "A", "A", "A", "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J", "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)

# Plot
simpleNetwork(networkData)

# Heatmap
install.packages("heatmaply")
library(heatmaply)
heatmaply(mtcars, k_col = 2, k_row = 3) %>% layout(margin = list(l = 130, b = 40))

# Gráfico interativo / Interactive Graph
install.packages("dygraphs")
library(dygraphs)

dygraph(nhtemp, main = "Temperaturas") %>% dyRangeSelector(dateWindow = c("1920-01-01", "1960-01-01"))

# rMaps - ainda não disponível para R 3.3.1
# http://rmaps.github.io












