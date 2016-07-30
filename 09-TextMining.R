###############################################################################
#                                                                             #
# CURSO:  Formação Cientista de Dados        PLATAFORMA: Data Science Academy #
# MÓDULO: Big Data Analytics com R           INSTRUTOR:  Daniel Mendes        #
#                                                                             #
###############################################################################


## Text Mining

# Exemplo 1 / Example 1
# Instalar com vetor de pacotes / Installing with packages's vector
install.packages(c("tm", "SnowballC", "wordcloud", "RColorBrewer"))
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

# Carregando o dataset / Loading dataset
# Does not convert string to factors
df <- read.csv("questoes.csv", stringsAsFactors = FALSE)
head(df)

## Modifying the dataset by layers ##
# Criando um Corpus / Creating a Corpus
dfCorpus <- Corpus(VectorSource(df$Question))
class(dfCorpus)

# Convertendo Corpus em um documento de texto plano
# Converting Corpus in a text document plan
dfCorpus <- tm_map(dfCorpus, PlainTextDocument)

# Remove pontuação / remove punctuation
dfCorpus <- tm_map(dfCorpus, removePunctuation)

# Remover palavras específicas do inglês / remove english specific words
dfCorpus <- tm_map(dfCorpus, removeWords, stopwords("english"))

# Neste processo, várias versões de uma palavra são convertidas em um única
# In this process, multiple versions of a word are converted into a single
dfCorpus <- tm_map(dfCorpus, stemDocument)

# Removendo palavras específicas / remove specific words
dfCorpus <- tm_map(dfCorpus, removeWords, c("the", "this", stopwords("english")))

# wordcloud
wordcloud(dfCorpus, max.words = 100, random.order = FALSE)


# Exemplo 2 / Example 2
install.packages("'tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)


# Lendo o arquivo / read the archive
arquivo <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto <- readLines(arquivo)

# Carregando os dados como Corpus / Loadind data how Corpus
docs <- Corpus(VectorSource(texto))

# Pré-processamento
inspect(docs)

# Convert signals (/ - @ - \\|) in space
toSpace <- content_transformer(function(x, pattern) gsub(pattern, "", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "\\|")

# Converter o texto para mnúsculo / Convert text to tiny
docs <- tm_map(docs, content_transformer(tolower))

# Remove números / remove numbers
docs <- tm_map(docs, removeNumbers)

# Remove palavras mais comuns do idioma inglês / remove more common english words
docs <- tm_map(docs, removeWords, stopwords ("english"))

# Você pode definir um vetor de palavras (stopwords) a serem removidas do texto
# You can define a word vector (stopwords) to remove of text
docs <- tm_map(docs, removeWords, c("blabla1", "blabla2"))

# Remove pontuação / remove punctuation
docs <- tm_map(docs, removePunctuation)

# Elimina espaços extras / remove extras spaces
docs <- tm_map(docs, stripWhitespace)

# Text stemming
docs <- tm_map(docs, stemDocument)

## Convert all in a matrix
dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)
head(d, 10)

# wordcloud
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1, max.words = 200,
         random.order = FALSE, rot.per = 0.35, colors = brewer.pal(8, "Dark2"))


# Frequency table
findFreqTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = "freedom", corlimit = 0.3)
head(d, 10)

# Gráficos de barras com as palavras mais frequentes
# Bar charts with the most frequent words
barplot(d[1:10, ]$freq, las = 2, names.arg = d[1:10, ]$word, col = "lightblue",
        main = "Most frequent words", ylab = "Word frequecies")




































