#Q1

#1.reading text file
file<-"C:/Users/Azimcool.000/Downloads/article.txt"
text_file<-readLines(file)


#2.Displaying few first lines 
head(text_file)

text_file1 <- paste(text_file, collapse = " ")
head(text_file1)

#3.cleaning

#To lowercases
clean_text <- tolower(text_file1)
head(clean_text)

#removing Punctuation

clean_text1 <- gsub(pattern = "\\W", replace = " " ,clean_text)
head(clean_text1)

#Removing digits

clean_text2 <- gsub(pattern = "\\d", replace = " ", clean_text1)
head(clean_text2)

#removeing single letters

clean_text3  <- gsub(pattern = "\\b[A-z]\\b{1}", replace = " ", clean_text2)
head(clean_text3)

library(NLP)
library(tm)

#removing white Spaces

clean_text4 <- stripWhitespace(clean_text3)
#final clean output
head(clean_text4)


#4.The number of time word repeated in the document

clean_text5 <- strsplit(clean_text4, " ")
head(clean_text5)
words_freq<-table(clean_text5)
head(words_freq)

#5.The number of time each word repeated. 
word_freq1 <- cbind(names(words_freq), as.integer(words_freq))
head(word_freq1)

#6.colorful word cloud

library(RColorBrewer)
library(wordcloud)

class(clean_text5)
word_cloud <- unlist(clean_text5)
wordcloud(word_cloud)

wordcloud(word_cloud,min.freq = 5 , random.order = FALSE, scale=c(3, 0.5))
#colouring
wordcloud(word_cloud,min.freq = 3, max.words=1000, random.order=F, rot.per=0.2, colors=brewer.pal(5, "Dark2"), scale=c(4,0.2))


