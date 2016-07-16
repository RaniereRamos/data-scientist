###############################################################################
#                                                                             #        
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Matrizes / Matrix

# Criando matrizes / Creating matrix
# Número de linhas / Number os lines

matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)

# Número de colunas / Number of columns
matrix (c(1,2,3,4,5,6), nc = 2)

# Help
?matrix

# Matrizes precisam ter um número de elementos que seja múltiplo
# Matrices must have a number of rows that it's multpile or sub-multiple
matrix (c(1,2,3,4,5), nc = 2)

# Criando matrizes a partir de vetores e preenchendo a partir de linhas
# Creating matrices by vectors and index by rows

meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)

# Fatiando a matriz / Slicing matrix
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[ ,2]

# Criando uma matriz diagonal / Creating a diagonal matrix
matriz = 1:3
diag(matriz)

# Extraindo vetor de uma matriz diagonal / Extracting vector of diagonal matrix
vetor = diag(matriz)
diag(vetor)


# Transposta da matriz / Transpost matrix

W <- matrix(c(2,4,8,12), nr = 2, ncol = 2)
W
t(W)
U <- t(W)
U

# Obtendo uma matrix inversa / Obtain an inverse matrix
solve(W)

# Multiplicação de matrizes / Matrix multiplication
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplincando matriz com vetor / Multiplying matrix with vector
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
x * y

# Nomeando uma matrix / named a matrix
mat3 <- matrix(c('Futebol','Natação','Campo','Piscina'), nr = 2)
mat3
dimnames(mat3) = (list(c("Linha1","Linha2"),c("Coluna1","Coluna2")))
mat3

# Identificando linhas e colunas no momento de criação da Matriz
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1","Linha 2"),
    c("Coluna 1", "Coluna 2")))

# Combinando matrizes / Combining matrices
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr =2)
mat5
cbind(mat4,mat5)
rbind(mat4,mat5)    # Muito útil para juntar base de dados de dif. períodos

# Desconstruindo a matriz / desconstructing the matrix
c(mat4)     # Transformando uma matriz em um vetor





























































































