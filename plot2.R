kbRawData <- read.csv("c://rproject//kb//household_power_consumption.txt",
 sep=";",
 dec=".",
 na.strings="?",
 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
 )
kbdata <- kbRawData[(kbRawData$Date == "1/2/2007" | kbRawData$Date == "2/2/2007"),]
kbdata$unixTime = strptime(paste(kbdata$Date, kbdata$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
plot(kbdata$unixTime, kbdata$Global_active_power, type = "n", ylab = "Global Active Power (kilowatt)", xlab="")
lines(kbdata$unixTime, kbdata$Global_active_power)
dev.off()
