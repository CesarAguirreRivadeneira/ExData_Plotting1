file <- "household_power_consumption.txt"
HousePWCons <- read.table(file = file,header = TRUE, sep=";",na.strings = "?",stringsAsFactors = FALSE,dec = ".",colClasses=c(rep("character",2),rep("numeric",7)))
HousePWCons<-subset(HousePWCons,Date == "1/2/2007" | Date == "2/2/2007")

columna <- strptime(paste(HousePWCons$Date,HousePWCons$Time),format = "%e/%m/%Y %H:%M:%S")

png(file = "plot1.png", width = 480, height = 480)


