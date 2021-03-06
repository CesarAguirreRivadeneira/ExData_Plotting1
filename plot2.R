file <- "household_power_consumption.txt"
HousePWCons <- read.table(file = file,header = TRUE, sep=";",na.strings = "?",stringsAsFactors = FALSE,dec = ".",colClasses=c(rep("character",2),rep("numeric",7)))
HousePWCons<-subset(HousePWCons,Date == "1/2/2007" | Date == "2/2/2007")

HousePWCons$Fecha <- strptime(paste(HousePWCons$Date,HousePWCons$Time),format = "%e/%m/%Y %H:%M:%S")

png(file = "plot2.png", width = 480, height = 480)

plot(HousePWCons$Fecha,HousePWCons$Global_active_power,type = "l",xlab="",ylab="Global Active Power (kilowats)")

dev.off()