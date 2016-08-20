###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## DPLYR
# Transformacao de dados / Transformation of data
install.packages("readr")
install.packages("dplyr")
library(readr)
library(dplyr)

# Suprimindo mensagens de warning / Suppressing warning messages
searchpaths()
suppressMessages(library(dplyr))


# Carregando o dataset / Loading dataset
df_sono <- read_csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/sono.csv")
head(df_sono)
class(df_sono)
str(df_sono)

glimpse(df_sono)

# A funcao "glimpse" permite criar uma coluna apenas para visualizacao
glimpse(mutate(df_sono, peso_libras = sono_total / 0.45359237))

count(df_sono, cidade)
hist(df_sono$sono_total)

# Mostrar o autocomplete / show autocomplete
?sample_n
sample_n(df_sono, size = 10)

# Select()
sleepdata <- select(df_sono, nome, sono_total)
head(sleepdata)
class(sleepdata)
select(df_sono, nome)
select(df_sono, nome:cidade)

# Filter()
filter(df_sono, sono_total >= 16)
filter(df_sono, sono_total >= 16, peso >= 80)
filter(df_sono, cidade %in% c("Recife", "Curitiba"))

# Arrange() - o sinal %>% concatena funcoes
df_sono %>% arrange(cidade) %>% head

df_sono %>%
   select(nome, cidade, sono_total) %>%
   arrange(cidade, sono_total) %>%
   head

df_sono %>%
   select(nome, cidade, sono_total) %>%
   arrange(cidade, sono_total) %>%
   filter(sono_total >= 16)

df_sono %>%
   select(nome, cidade, sono_total) %>%
   arrange(cidade, desc(sono_total)) %>%
   filter(sono_total  >= 16)

# Mutate()
head(df_sono)
df_sono %>%
   mutate(novo_indice = sono_total / peso) %>%
   head
head(df_sono)

# Create 2 columns 
df_sono %>%
   mutate(novo_indice = sono_total / peso, peso_libras = peso / 0.45359237) %>%
   head

# Summarize()
df_sono %>%
   summarise(media_sono = mean(sono_total))

df_sono %>%
   summarise(media_sono = mean(sono_total),
             min_sono = min(sono_total),
             max_sono = max(sono_total),
             total = n())

# group_by()
df_sono %>%
   group_by(cidade) %>%
   summarise(avg_sono = mean(sono_total),
             min_sono = min(sono_total),
             max_sono = max(sono_total),
             total = n())

# Pipe operator: %>%
head(select(df_sono, nome, sono_total))

df_sono %>%
   select(nome, sono_total) %>%
   head

df_sono %>%
   mutate(novo_indice = round(sono_total * peso)) %>%
   arrange(desc(novo_indice)) %>%
   select(cidade, novo_indice)
df_sono

# Instalando pacote hflights (dados de voos de Houston)
# Installing hflights package (Houston flights data)

install.packages("hflights")
library(hflights)
?hflights

# Criando um objeto tbl / Creating a tbl object
# a tbl object is a evolution to dataframe
?tbl_df
flights <- tbl_df(hflights)
flights

# Resumindo os dados / Summarize data
str(hflights)
glimpse(hflights)

data.frame(head(flights))

flights[flights$Month == 1 & flights$DayofMonth == 1, ]

filter(flights, Month == 1, DayofMonth == 1)
filter(flights, UniqueCarrier == "AA" | UniqueCarrier == "UA")
filter(flights, UniqueCarrier %in% c("AA", "UA"))
select(flights, Year:DayofMonth, contains("Taxi"), contains("Delay"))

flights %>%
   select(UniqueCarrier, DepDelay) %>%
   arrange(DepDelay)

flights %>%
   select(Distance, AirTime) %>%
   mutate(Speed = Distance / AirTime * 60)

head(with(flights, tapply(ArrDelay, Dest, mean, na.rm = TRUE)))
head(aggregate(ArrDelay ~ Dest, flights, mean))

flights %>%
   group_by(Month, DayofMonth) %>%
   tally(sort = TRUE)






























