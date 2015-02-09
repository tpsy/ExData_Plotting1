dados <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

period <- dados[dados$Date %in% c("1/2/2007","2/2/2007"),]

temp <- paste(period$Date, period$Time, sep = " ")

datahora <- strptime(temp, "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height= 480)
plot31 <- as.numeric(period$Sub_metering_1)
plot32 <- as.numeric(period$Sub_metering_2)
plot33 <- as.numeric(period$Sub_metering_3)
plot(datahora,plot31, ylab = "Energy sub metering", xlab = "", type = "n")
lines(datahora, plot31, ylab = "Global Active Power (kilowatts)", type = "l")
lines(datahora, plot32, ylab = "Global Active Power (kilowatts)", type = "l", col = "red")
lines(datahora, plot33, ylab = "Global Active Power (kilowatts)", type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=1, lwd=1)
dev.off()

