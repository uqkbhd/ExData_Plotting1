kbRawData <- read.csv("c://rproject//kb//household_power_consumption.txt",
 sep=";",
 dec=".",
 na.strings="?",
 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
 )
kbdata <- kbRawData[(kbRawData$Date == "1/2/2007" | kbRawData$Date == "2/2/2007"),]
png(filename = "plot1.png", width = 480, height = 480)
hist(kbdata$Global_active_power, col="red", xlab = "Global Active Power (kilowatt)", main = "Global Active Power")
dev.off()