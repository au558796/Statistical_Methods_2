library(ggplot2)
data=read.delim("CogSciPersonality2016.txt")
adverts=c(5,4,4,6,8)
packets=c(8,9,10,13,15)
advertdata=data.frame(adverts,packets)

ggplot(data, aes(x= adversts, y = packets))+
  geom_point()

plot(adverts, packets)

install.packages("Hmisc"); install.packages("ggm")
install.packages("polycor")


library(boot)
library(ggm)
library(polycor)
library(Hmisc)

install.packages("Rcmdr")

cor( adverts, packets, use = "complete.obs", method = "pearson")

rcorr(adverts, packets, type = "spearman")

examData= as.data.frame(Exam.Anxiety)
cor.test(adverts,packets, alternative = "greater", method = "pearson", conf.level = 0.95)

examData = data$Exam.Anxiety     
dataMatrix = as.matrix(Exam.Anxiety)

examData2 = examData [ , c("Exam", "Anxiety", "Revise")]

cor(dataMatrix)

dataMatrix2 = dataMatrix [, c("Exam" , "Anxiety", "Revise")]

cor(dataMatrix[, c("Exam", "Anxiety", "Revise")])

examData = data.frame(Exam.Anxiety)

examData

cor(examData[, c("Exam", "Anxiety", "Revise")])

examMatrix = as.matrix(examData[,c("Exam", "Anxiety", "Revise")])

Hmisc::rcorr(examMatrix)

cor.test(examData$Anxiety, examData$Exam)

cor.test(examData$Revise, examData$Exam)

cor.test(examData$Revise, examData$Anxiety)

cor(examData2)^2

cor(examData2)^2*100

liarData = read.delim(file.choose(), header = TRUE)

cor(liarData$Creativity, liarData$Position)

rcorr(liarData$Creativity, liarData$Position, type = "spearman")

cor(liarData$Position, liarData$Creativity, method = "spearman")

liarMatrix = as.matrix(liarData[, c("Position", "Creativity")])

rcorr(liarMatrix)

cor.test(liarData$Creativity, liarData$Position, alternative = "less", method = "spearman")

cor(liarData$Position, liarData$Creativity, method = "kendall")

cor.test(liarData$Position, liarData$Creativity, alternative = "less", method = "kendall")

bootTau = function(liarData, i)cor(liarData$Position[i], liarData$Creativity[i], use = "complete.obs", method = "kendall")

bootTau

library(boot)

boot.ci(bootTau)

boot_kendall = boot(liarData, bootTau, 2000)

boot_kendall

boot.ci(boot_kendall)

catData = read.csv("pbcorr.cvs", header = TRUE)

catData = read.csv(file.choose(), header= TRUE)

catData

cor(catData$time, catData$gender, use = "complete.obs", method = "pearson")

cor.test(catData$time, catData$gender, alternative = "greater")

cor.test(catData$time, catData$recode, alternative = "greater")

catFrequencies= table(catData$gender)

prop.table(catFrequencies)

install.packages(polycor)
library(polycor)
library(boot)

polyserial(catData$time, catData$gender)


library(ggm)

pcor(c("Exam", "Anxiety", "Revise"), var(examData2))

pc = pcor(c("Exam", "Anxiety", "Revise"), var(examData2))

pc

pc^2

pcor.test(pc, 1, 103)

rm(a);rm(b); rm(job); rm(rollingstoneAges); rm(TheRollingStones)
