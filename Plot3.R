data <- read.csv2("household_power_consumption.txt", stringsAsFactors=F)  # read data
data <- data[ grepl("^[1-2]/2/2007", data$Date),]  # subset data
str(data)

v1 <- data[,1]
v2 <- data[,2]
v3 <- paste(v1, v2)


v7 <- data[,7]
v8 <- data[,8]
v9 <- data[,9]
v7 <- as.numeric(v7)
v8 <- as.numeric(v8)
v9 <- as.numeric(v9)

plot(strptime(v3,"%d/%m/%Y %H:%M:%S"), v7, type="l", ylab = "Energy sub metering", xlab="")
points(strptime(v3,"%d/%m/%Y %H:%M:%S"), v8, type="l", col = "red")
points(strptime(v3,"%d/%m/%Y %H:%M:%S"), v9, type="l", col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty=c(1,1,1))
dev.copy(png, file = "plot3.png", width=480, height=480)
dev.off()




