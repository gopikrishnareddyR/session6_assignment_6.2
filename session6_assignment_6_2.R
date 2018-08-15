#session6_assignment_6.2
#1. Import the Titanic Dataset from the link Titanic Data Set. 
 #Perform the following: 
library(ggplot2)
library(ggthemes)
library(scales)
library(dplyr)
library(mice)
library(randomForest)
 
getwd()
path<-"C:/Users/Swapna/Documents/R files test"
setwd(path)
library(readr)
train<-read.csv("C:/Users/Swapna/Documents/R files test/train.csv", header=T, sep = ",")
View(train)
test<-read.csv("C:/Users/Swapna/Documents/R files test/tesst.csv", header=T, sep = ",")
  
#a. Is there any difference in fares by different class of tickets?  
   #Note - Show a boxplot displaying the distribution of fares by class 

tapply(full$Fare,full$Pclass, mean)
boxplot(full$Fare, table(full$Pclass))
boxplot(full$Fare,full$Pclass, xlab = "class",
        ylab = "fares", main = "Fares by Class")
 
 #b. Is there any association with Passenger class and gender? 
   #Note - Show a stacked bar chart 

counts <- table(full$Pclass, full$Sex)
barplot(counts, main="Association between passenger class and gender",
           xlab="Passenger Gender",
           col=c("blue","orange"),
           legend = rownames(counts))