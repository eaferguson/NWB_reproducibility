
# Clear workspace
rm(list=ls())

# Read in case data
case_data <- read.csv("case_data.csv")

# Identify categorical variables
case_data[,c("urban")] <- as.factor(case_data[,c("urban")]) 
case_data[,c("coastal")] <- as.factor(case_data[,c("coastal")]) 

# Plot cases against possible explanatory variables and save as pdf
pdf("exploratory_plots.pdf", width=7, height=6)
par(mfrow=c(2,2), mar=c(5,5,1,1))

# Cases against dogs
plot(case_data$cases~case_data$dogs,
     ylab="Cases",xlab="Dogs",cex.lab=1.2,
     pch=19, col="blue",bty="l")

# Cases against urban status
plot(case_data$cases~case_data$urban, 
     ylab="Cases",xlab="Urban",cex.lab=1.2,
     pch=19,col=c("blue","orange"))

# Cases against coastal status
plot(case_data$cases~case_data$coastal, 
     ylab="Cases",xlab="Coastal",cex.lab=1.2,
     pch=19,col=c("blue","orange"))

# Close pdf
dev.off()


