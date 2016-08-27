###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Importando de outros softwares estatísticos 
## Importing from other statistical software

install.packages("haven")  # Data import package
library(haven)

# SAS
vendas <- read_sas("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/vendas.sas7bdat")
?read_sas
class(vendas)
print(vendas)
str(vendas)

# Stata
df_stata <- read_dta("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/mov.dta")
class(df_stata)
str(df_stata)

# Convert values in date column to dates
df_stata$Date <- as.Date(as_factor(df_stata$Date))
str(df_stata)
plot(df_stata)

# SPSS
pessoas <- read_sav("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/pessoas.sav")
class(pessoas)
head(pessoas)

# Foreign package
install.packages("foreign")
library(foreign)

# Stata
florida <- read.dta("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/florida.dta")
tail(florida)
class(florida)

# SPSS
# http://cw.routledge.com/textbooks/9780415372985/resources/datasets.asp

dados <- read.spss("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/international.sav")
class(dados)
head(dados)
df <- data.frame(dados)
df
head(df)

# Criando um boxplot / Creating a boxplot
boxplot(df$gdp)

# Se você estiver familiarizado com estatistica, você vai ter ouvido falar de Correlacao
# É uma medida para avaliar a dependência linear entre duas variaveis.
# Ela pode variar entre -1 e 1
# Se próximo de 1, significa que há uma forte associacao positiva entre as variaveis
# Se próximo de -1, existe uma forte associacao negativa:
# Quando a correlacao entre duas variaveis é 0, essas variaveis sao possivelmente indep.
# Ou seja, nao ha nenhuma associacao entre X e Y

# Coeficiente de Correlacao. Indica uma associacao negativa entre GDP e alfabetizacao feminina
cor(df$gdp, df$f_illit)

# ***** IMPORTANTE ******
# Correlacao nao implica causalidade
# A Correlacao, isto e, a ligacao entre dois eventos, nao implica necessariamente
# uma relacao de causalidade, ou seja, que um dos eventos tenha causado a ocorrencia
# do outro. A correlacao pode no entanto indicar possiveis causas ou areas para um
# estudo mais aprofundado, ou por outras palavras, a correlacao pode ser uma pista.













