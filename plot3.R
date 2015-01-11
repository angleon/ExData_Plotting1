## Checking current working directory
if (!"loadData.R" %in% list.files()) {
  setwd("C:/Users/Ale/Desktop/ExploratoryDataAnalysis/Assignment1/")
} 
source("loadData.R")
png(filename = "plot3.png", 
    width = 480, height = 480)
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()