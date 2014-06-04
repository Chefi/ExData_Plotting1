data <- read.csv2("household_power_consumption.txt", stringsAsFactors=F) #read data 
data <- data[ grepl("^[1-2]/2/2007", data$Date),]  #subset data
str(data)

v3 <- as.numeric(data[,3])
hist(v3, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()



