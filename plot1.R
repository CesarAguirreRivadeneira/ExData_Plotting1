file <- "household_power_consumption.txt"

HousePWCons <- read.table(file = file,header = TRUE, sep=";",na.strings = "NA",stringsAsFactors = FALSE,dec = ".",colClasses=c(rep("character",2),rep("numeric",7)))
HousePWCons<-subset(HousePWCons,Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot1.png", width = 480, height = 480)
hist(HousePWCons$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
#dev.print(png, file = "plot1.png", width = 480, height = 480)
dev.off()
