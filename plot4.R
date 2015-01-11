## Checking current working directory
if (!"loadData.R" %in% list.files()) {
  setwd("C:/Users/Ale/Desktop/ExploratoryDataAnalysis/Assignment1/")
} 
source("loadData.R")
png(filename = "plot4.png", 
    width = 480, height = 480)
par(mfrow = c(2, 2))
## Top-left
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## Top-right
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
## Bottom-left
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
# Adding legend
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
## Bottom-right
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()