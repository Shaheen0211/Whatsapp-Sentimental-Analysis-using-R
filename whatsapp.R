require("syuzhet")
texts<-readLines("D:/R/WhatsApp Chat with SKI BOOTCAMP 2020 BATCH.txt")
texts
sentiment<-get_nrc_sentiment(texts)
sentiment
totalsentiment<-data.frame(colSums(sentiment[,c(1:10)]))
totalsentiment
names(totalsentiment)<-"count"
totalsentiment
totalsentiment<-cbind("sentiment"=rownames(totalsentiment),totalsentiment)
totalsentiment
barplot(totalsentiment$count,names.arg=totalsentiment$sentiment,xlab="EMOTIONS",ylab="COUNT",col=rainbow(10),main="SENTIMENTAL ANALYSIS OF OUR GROUP")