#Author: Kesavan Kushalnagar

setwd("D:/R_Scripts")
#get file size
inf <- file.info("capstone/Coursera-SwiftKey/final/en_US/en_US.blogs.txt")
inf$size/1000000

#let's start text mining!
library(tm)

#twitter_db <- readPlain("../capstone/Coursera-SwiftKey/final/en_US/en_US.twitter.txt", "en", "twitter") #Didn't work, time to try a new approach
db <- Corpus(DirSource("capstone/Coursera-SwiftKey/final/en_US/"), readerControl = list(language='lat'))
twitter_db <- Corpus(DirSource("capstone/Coursera-SwiftKey/final/en_US/", pattern = "en_US.twitter.txt"), readerControl = list(language='lat'))
#find the number of lines:
library(stringr)
str_count(string = twitter_db, pattern = "\n")

#Find the longest line
twitter_db <- twitter_db %>% tm_map(stripWhitespace)
adtm <- DocumentTermMatrix(twitter_db)


twitter <- readLines("capstone/Coursera-SwiftKey/final/en_US/en_US.twitter.txt")
blogs <- readLines("capstone/Coursera-SwiftKey/final/en_US/en_US.blogs.txt")
news <- readLines("capstone/Coursera-SwiftKey/final/en_US/en_US.news.txt")
length(twitter)
length(blogs)
length(news)
