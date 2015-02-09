dados <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

period <- dados[dados$Date %in% c("1/2/2007","2/2/2007"),]

temp <- paste(period$Date, period$Time, sep = " ")

datahora <- strptime(temp, "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height= 480)
plot2 <- as.numeric(period$Global_active_power)
plot(datahora, plot2, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()

