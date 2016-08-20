###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## R e MongoDB
# Criando uma colecao no MongoDB / Creating a collection on MongoDB
# ./mongoimport --db users --collection contatos --file /opt/DSA/RFundamentos/Parte3/zips.json

# Instalacao do pacote / Installing package
# RMongo (need JAVA)
# RMongoDB (without dependencies)

install.packages("rmongodb")    # It didn't work
install.packages("rmongodb", repo = "http://nbcgib.uesc.br/mirrors/cran")
library(rmongodb)

# Creating a connection
help("mongo.create")
mongo <- mongo.create()
mongo

# Checking connection
mongo.is.connected(mongo)

# List Mongo's databases
if (mongo.is.connected(mongo) == TRUE){
   mongo.get.databases(mongo)
}

# Armazenando o nome de uma das colecoes / 
# Storing the name of one of the collections
coll <- "users.contatos"

# Contando os registros em uma colecao / Counting records in a collection
help("mongo.count")
mongo.count(mongo,coll)

# Buscando um registro em uma colecao / Searching a record in a collection
mongo.find.one(mongo,coll)

# Obtendo um vetor de valores distintos das chaves de uma colecao
# Getting a vector of distinct values of the keys of a collection
res <- mongo.distinct(mongo, coll, "city")
head(res)

# Obtendo um vetor de valores distintos das chaves de uma colacao e gerando histograma
# Getting a vector of distinct values of the keys of a collection and making a hist
pop <- mongo.distinct(mongo, coll, "pop")
hist(pop)

# Contando os elementos / Counting elements
nr <- mongo.count(mongo, coll, list("pop" = list("$lte" = 2)))
print(nr)

# Buscando todos os elementos / Searching all elements
pops <- mongo.find.all(mongo, coll, list("pop" = list("$lte" = 2)))
head(pops,2)

# Encerrando a conexao / Closing the connection
mongo.destroy(mongo)


# Criando e validando um arquivo json
library(jsonlite)
json_arquivo <- '{"pop":{"$lte":2}, "pop":{"$gte":1}}'
cat(prettify(json_arquivo))

validate(json_arquivo)



























