###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Tipos de dados / Data types

# Numeric - todos os dados criados em R são do tipo numérico
# Numeric - all data created in R are numeric type

num = 2.5   # atribuindo valores / assigning values
num

num2 = 4    # atribuindo valores / assigning values
num2

x = -123
x
class(x)    # verifica o tipo do obejeto / verify object type

# Conversão de tipos numeric / conversion of numeric types
is.integer(num2)
y = as.integer(num2)
class (y)

x2 = 3.14
x2

y2 = as.integer(3.14)
y2

as.integer('4.27')
as.integer("Joe")
as.integer('Joe')
as.integer(TRUE)


# Character
char1 = "A"
char1

char2 = "bolha"
char2


# Complex
compl = 2.5 + 4i
compl
class(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

# Logic
x = 1; y = 2
z = x > y
z
class(z)


u = TRUE; v = FALSE
class(u)
u & v
u | v
!u

# Operações com número 0 / operations with number zero
5/0
0/5

# Erro
"Joe"/5 











































