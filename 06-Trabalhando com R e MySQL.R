###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## MySQL

install.packages("RMySQL") # It didn't work
install.packages("RMySQL", repo = "http://nbcgib.uesc.br/mirrors/cran")
library(RMySQL)
library(ggplot2)
library(dplyr)

# Conexao com o banco de dados / Conexion with database
con <- dbConnect(MySQL(), user = "root", password = "RRdp638300dsa",
                 dbname = "titanicDB", host = "localhost")

# Query
qry <- "select pclass, survived, avg(age) as media_idade from titanic 
       where survived = 1 group by pclass, survived;"

dbGetQuery(con, qry)

# Record dataset in dataframe
dados <- dbGetQuery(con, qry)
head(dados)
class(dados)


# Creating a graph
ggplot(dados, aes(pclass, media_idade)) + geom_bar(stat = "identity")

# Conectando no MySQL com dplyr / Connecting to MySQL with dplyr
con2 <- src_mysql(dbname = "titanicDB", user = "root", password = "RRdp638300dsa", host = "localhost")

dados2 <- con2 %>%
   tbl("titanic") %>%
   select(pclass, sex, age, survived, fare) %>%
   filter(survived == 0) %>%
   collect()

head(dados2)

# Manipulando dados / Manipulating data
dados2 <- con2 %>%
   tbl("titanic") %>%
   select(pclass, sex, survived) %>%
   group_by(pclass, sex) %>%
   summarise(survival_ratio = mean(survived)) %>%
   collect()

ggplot(dados2, aes(pclass, survival_ratio, color = sex, group = sex)) + 
   geom_point(size = 3) + geom_line()

# Sumarizando os dados / summarising data
dados2 <- con2 %>%
   tbl("titanic") %>%
   filter(fare > 150) %>%
   select(pclass, sex, age, fare) %>%
   group_by(pclass, sex) %>%
   summarise(avg_age = mean(age),
             avg_fare = mean(fare))

head(dados2)

# --> Para outros bancos de dados, use RODBC / For others database, use RODBC





























