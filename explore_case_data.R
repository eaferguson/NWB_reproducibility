
rm(list=ls())

case_data <- read.csv("case_data.csv")

par(mfrow=c(3,2), mar=c(5,5,1,1))

# Cases against dogs
plot(case_data$cases~case_data$dogs,
     ylab="Cases",xlab="Dogs",cex.lab=1.2,
     pch=19, col="blue",bty="l")

# Cases against urban status
plot(case_data$cases~case_data$urban, 
     ylab="Cases",xlab="Urban",cex.lab=1.2,
     bty="l",pch=19,col=c("blue","orange"))

# Cases against coastal status
plot(case_data$cases~case_data$coastal, 
     ylab="Cases",xlab="Coastal",cex.lab=1.2,
     bty="l",pch=19,col=c("blue","orange"))

