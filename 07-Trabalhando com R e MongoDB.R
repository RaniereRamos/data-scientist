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

























