data <- read.csv2("household_power_consumption.txt", stringsAsFactors=F)  #read data
data <- data[ grepl("^[1-2]/2/2007", data$Date),] #subset data
str(data)


v1 <- data[,1]
v2 <- data[,2]
v3 <- paste(v1, v2)
plot(strptime(v3,"%d/%m/%Y %H:%M:%S"), as.numeric(data[,3]), type="l",  ylab = "Global Active Power (kilowatts)", xlab="")
dev.copy(png, file = "plot2.png", width=480, height=480)
dev.off()

