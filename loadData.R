## Loading the dataset.
filename <- "household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   na.strings="?",
                   colClasses = c("character", "character", "numeric",
                                  "numeric", "numeric", "numeric"  , 
                                  "numeric", "numeric" , "numeric"))

attach(data)

## Subseting the data only on 2007-02-01 and 2007-02-02

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newDataSet <- data[subset, ]
attach(newDataSet)
x <- paste(Date, Time)

## Formatting the date
newDataSet$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newDataSet) <- 1:nrow(newDataSet)
attach(newDataSet)

