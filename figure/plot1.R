data <- read.csv2("household_power_consumption.txt")
select.data <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
rm(data)
select.data$Global_active_power <- as.numeric(as.character(select.data$Global_active_power))
select.data$Global_reactive_power <- as.numeric(as.character(select.data$Global_reactive_power))
select.data$Voltage <- as.numeric(as.character(select.data$Voltage))
select.data$Global_intensity <- as.numeric(as.character(select.data$Global_intensity))
select.data$Sub_metering_1 <- as.numeric(as.character(select.data$Sub_metering_1))
select.data$Sub_metering_2 <- as.numeric(as.character(select.data$Sub_metering_2))
select.data$Sub_metering_3 <- as.numeric(as.character(select.data$Sub_metering_3))
select.data$Date <- strptime(paste(select.data$Date, select.data$Time), "%d/%m/%Y %H:%M:%S")
select.data$Time <- NULL


png("plot1.png")
hist(select.data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()