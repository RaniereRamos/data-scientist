###############################################################################
#                                                                             #
# CURSO:  Formacao Cientista de Dados        PLATAFORMA: Data Science Academy #
# MODULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Manipulação de arquivos Excel / Excel file handling

# Instalar o Java - JRE / Install Java
# http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html

Sys.setenv(JAVA_HOME = "/Library/Java/JavaVirtualMachines/java")
Sys.getenv("JAVA_HOME")
system("java-version")
options(java.home = "/Library/Java/JavaVirtualMachines/jdk1")

# Mac e Linux
# sudo R CMD javareconf
# sudo ln -f -s $(/usr/libexec/java_home)/jre/lib/server/lib

# Requer Java
# XLConnect
# xlsx
# rJava

# Requer Perl
# gdata

# readxl

install.packages("rJava", type = "source")
install.packages("xlsx")
install.packages("XLConnect")
install.packages("readxl")
install.packages("gdata")
library(rJava)
library(xlsx)
library(XLConnect)
library(readxl)
library(gdata)

# Pacote readxl / readxl package
# Lista as worksheet no arquivo Excel
excel_sheets("UrbanPop.xlsx")    # read all worksheets

# Lendo a planilha do Excel / Reading a worksheet
read_excel("UrbanPop.xlsx")
head(read_excel("UrbanPop.xlsx"))
read_excel("UrbanPop.xlsx", sheet = "Period2")
read_excel("UrbanPop.xlsx", sheet = 3)
read_excel("UrbanPop.xlsx", sheet = 4)

# Importando uma worksheet para um dataframe / Importing a worksheet to dataframe
df <- read_excel("UrbanPop.xlsx", sheet = 3)
head(df)

# Importando todas as worksheets / Importing all worksheets
df_todas <- lapply(excel_sheets("UrbanPop.xlsx"), read_excel, path = 'UrbanPop.xlsx')
df_todas
class(df_todas)

# Pacote XLConnect / XLConnect package
arq1 <- loadWorkbook("UrbanPop.xlsx")
df1 <- readWorksheet(arq1, sheet = "Period1", header = TRUE)
df1
class(df)

# Pacote xlsx / xlsx package
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 1)
df2

df3 <- read.xlsx2("UrbanPop.xlsx", sheetIndex = 1, startRow = 2, colIndex = 2)
df3

df4 <- readWorksheetFromFile("UrbanPop.xlsx", sheet = 1, startRow = 4, endCol = 2)
df4


# Save your work in an excel file (great ideia for my work - reduce data)
write.xlsx(df4, "df4.xlsx", sheetName = "Data Frame")
dir()


# Pacote gdata / gdata package
arq1 <- xls2csv("df4.xlsx", sheet = 1, na.strings = "EMPTY")
arq1











































