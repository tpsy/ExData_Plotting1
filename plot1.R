dados <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
period <- dados[dados$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480, height= 480)
plot1 <- as.numeric(period$Global_active_power)
hist(plot1, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

