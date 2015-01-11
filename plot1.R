## Checking current working directory
if (!"loadData.R" %in% list.files()) {
  setwd("~/Desktop/ExploratoryDataAnalysis/Assignment1/")
} 
source("loadData.R")
png(filename = "plot1.png", 
    width = 480, height = 480)
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()