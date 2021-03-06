kbRawData <- read.csv("c://rproject//kb//household_power_consumption.txt",
 sep=";",
 dec=".",
 na.strings="?",
 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
 )
kbdata <- kbRawData[(kbRawData$Date == "1/2/2007" | kbRawData$Date == "2/2/2007"),]

kbdata$unixTime = strptime(paste(kbdata$Date, kbdata$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480)

plot(c(kbdata$unixTime,kbdata$unixTime,kbdata$unixTime), c(kbdata$Sub_metering_1,kbdata$Sub_metering_2,kbdata$Sub_metering_3), type="n", ylab="Energy sub metering", xlab="")
lines(kbdata$unixTime, kbdata$Sub_metering_1, col="black")
lines(kbdata$unixTime, kbdata$Sub_metering_2, col="red")
lines(kbdata$unixTime, kbdata$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black", "red", "blue"))
dev.off()
