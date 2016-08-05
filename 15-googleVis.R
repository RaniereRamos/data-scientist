###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## googleVis - Visualizações Interativas

# Baseado no Google Chart (visualização de dados na web)
# googleVis é um pacote que fornece interface entre R e o Google Charts
# Utiliza JavaScript e arquivos JSON. Os dados são transformados em formato JSON
# O resultado é gerado em HTML5 ou Flash
# Pode-se criar os mais variados tipos de gráficos e mapas. Inclusive Google Maps
# Você pode incorporar os gráficos criados em páginas HTML ou apps
# Verificar termos de uso, antes de utilizar

install.packages("googleVis")
library(googleVis)
?googleVis

# Criando um dataframe / Creating a dataframe
df <- data.frame(Pais = c("BR", "CH", "AR"),
                        Exportacoes = c(10,13,14), Importacoes = c(23,12,32))

# Gráfico de linha/ Line graph
Line <- gvisLineChart(df)
plot(Line)

# Gráfico de Barras / Bar graph
Column <- gvisColumnChart(df)
plot(Column)

# Gráficos de barra horizontais / Horizontal bar graphs
Bar <- gvisBarChart(df)
plot(Bar)

# Gráficos de Pizza / Pie chart
Pie <- gvisPieChart(CityPopularity)
plot(Pie)

# Gráficos combinados / combined graphs
Combo <- gvisComboChart(df, xvar = "Pais",
         yvar = c("Exportacoes", "Importacoes"),
         options = list(seriesType = "bars", series = '{1: {type:"line"}}'))

plot(Combo)

# Scatter Chart
Scatter <- gvisScatterChart(women, options = list(legend = "none",
           lineWidth = 2, pointSize = 0, title = "Women",
           vAxis = "{title:'weight(lbs)'}",
           hAxis = "{title:'height (in)'}", width = 300, height = 300))

plot(Scatter)

# Bubble
Bubble <- gvisBubbleChart(Fruits, idvar = "Fruit", xvar = "Sales", yvar = "Expenses", colorvar = "Year", sizevar = "Profit", options = list(hAxis = '{minValue:75, maxValue:125}'))
plot(Bubble)

# Customizando / Customizing
M <- matrix(nrow = 6, ncol = 6)
M[col(M) == row(M)] <- 1:6
dat <- data.frame(X = 1:6, M)
SC <- gvisScatterChart(dat, options = list(title = "Customizing points",
      legend = "right", pointsSize = 30, series = "{
      0: {pointShape: 'circle'},
      1: {pointShape: 'triangle'},
      2: {pointShape: 'square'},
      3: {pointShape: 'diamond'},
      4: {pointShape: 'star'},
      5: {pointShape: 'polygon'},
      }"))

plot(SC)


# Gauge
Gauge <- gvisGauge(CityPopularity, options = list(min = 0, max = 800,
      greenFrom = 500, greenTo = 800, yellowFrom = 300, yellowTo = 500,
      redFrom = 0, redTo = 300, width = 400, height = 300))

plot(Gauge)

# Mapas / Maps
Intensity <- gvisIntensityMap(df)
plot(Intensity)

# Geo Chart
Geo <- gvisGeoChart(Exports, locationvar = "Country", colorvar = "Profit",
                    options = list(projection = "kavrayskiy-vii"))

plot(Geo)

# Google Maps
AndrewMap <- gvisMap(Andrew, "LatLong", "Tip",
             options = list(showTip = TRUE,
             showLine = TRUE,
             enableScrollWheel = TRUE,
             mapType = "terrain",
             useMapTypeControl = TRUE))

plot(AndrewMap)

# Dados em gráfico. Nível de analfabetismo nos EUA
# Data in graphic. Illiteracy at USA
require(datasets)
states <- data.frame(state.name, state.x77)
GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
             options = list(region = "US",
             displayMode = "regions", resolution = "provinces",
             width = 600, height = 400))

plot(GeoStates)



























