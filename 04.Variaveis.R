###############################################################################
#                                                                             #        
# CURSO:  Forma��o Cientista de Dados        PLATAFORMA: Data Science Academy #
# M�DULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Tipos de dados em R / Data types in R
## Criando vari�veis / Creating variables

var1 = 367
var1
mode(var1)
help("mode")
sqrt(var1)

var2 = as.integer(var1)
var2
mode(var2)      # O espa�o de armazenamento � num�rico / storage is numeric
typeof(var2)    # O tipo de vari�vel � inteiro / variable type is integers
help("typeof")

var3 = c("seg", "ter", "qua")
var3
mode(var3)

var4 = function(x) {x+3}
var4
mode(var4)

# Podemos tamb�m mudar o modo do dado / we can change data mode
var5 = as.character(var1)
var5
mode(var5)


# Atribuindo valores a objetos / assigning values to objects
x <- c(4,5,6)
x
c(4,5,6) -> y
y
assign("x", c(1.3,4,-2))


# Verificando o valor em uma posi��o espec�fica /
# Checking the value at a specific position
x[1]

# Verificar objetos / checking objects
ls()
objects()

# Remover objetos / remove objects
rm(x)
x













