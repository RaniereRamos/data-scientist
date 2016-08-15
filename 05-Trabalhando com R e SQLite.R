###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Banco de Dados / Database

# Instalar RSQLite / Install RSQLite
install.packages("RSQLite")  # It didn't work
install.packages("RSQLite", repo = "http://nbcgib.uesc.br/mirrors/cran")
library(RSQLite)

# Remover o banco SQLite, caso exista - Não é obrigatório / Remove SQLite base
# system ("del exemplo.db")
system("rm exemplo.db")

# Criando driver e conexão ao banco de dados /
# Creating driver and conexion to database
drv <- dbDriver("SQLite")
con <- dbConnect(drv, dbname = "exemplo.db")
dbListTables(con)

# Criando uma tabela e carregando com dados do dataset mtcars
# Creating a table and loading with data of mtcars dataset
dbWriteTable(con, "mtcars", mtcars)

# Listando uma tabela / List a table
dbListTables(con)
dbExistsTable(con, "mtcars")
dbListFields(con, "mtcars")

# Lendo o conteudo da tabela / Reading a table
dbReadTable(con, "mtcars")

# Criando apenas a definição da tabela / Creating only table definition
dbWriteTable(con, "mtcars3", mtcars[0, ])
dbListTables(con)
dbReadTable(con, "mtcars3")

# Executando consultas no banco de dados / Executing search on database
query <- "select row_names from mtcars"
rs <- dbSendQuery(con, query)
dados <- fetch(rs, n = -1)
dados
class(dados)

# Executando consultas no banco de dados / Executing search on database
query <- "select row_names from mtcars"
rs <- dbSendQuery(con, query)
while (!dbHasCompleted(rs))
{
   dados <- fetch(rs, n = 1)
   print(dados$row_names)
}

# Executando consultas no banco de dados / Executing search on database
query <- "select disp, hp from mtcars where disp > 160"
rs <- dbSendQuery(con, query)
dados <- fetch(rs, n = -1)
dados

# Executando consultas no banco de dados / Executing search on database 
query <- "select row_names, avg(hp) from mtcars group by row_names"
rs <- dbSendQuery(con, query)
dados <- fetch(rs, n = -1)
dados

# Criando uma tabela a partir de um arquivo / Creating a table by an archive
dbWriteTable(con, "tempo", "tempo.txt", sep = ",", header = T)
dbListTables(con)
dbReadTable(con, "tempo")

# Encerrando a conexão / Finishing conexion
dbDisconnect(con)

# Carregando dados no banco de dados / Loading data in database
# http://dados.gov.br/dataset/indice-nacional-de-precos-ao-consumidor-amplo-15-ipca-15
# Criando driver e conexão ao banco de dados
# Creating driver and conexion to database
drv <- dbDriver("SQLite")
con <- dbConnect(drv, dbname = "exemplo.db")

dbWriteTable(con, "indices", "indice.csv", sep = "|", header = T)
dbRemoveTable(con, "indices")
dbWriteTable(con, "indices", "indice.csv", sep = "|", header = T)

dbListTables(con)
dbReadTable(con, "indices")

# Creating a dataframe
df <- dbReadTable(con, "indices")
df
str(df)
sapply(df, class)

hist(df$agosto)
df_mean <- unlist(lapply(df[, c(4, 5, 6, 7, 8)], mean))
df_mean

dbDisconnect(con)






