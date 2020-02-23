file <- "household_power_consumption.txt"
HousePWCons <- read.table(file = file,header = TRUE, sep=";",na.strings = "?",stringsAsFactors = FALSE,dec = ".",colClasses=c(rep("character",2),rep("numeric",7)))
HousePWCons<-subset(HousePWCons,Date == "1/2/2007" | Date == "2/2/2007")

HousePWCons$Fecha <- strptime(paste(HousePWCons$Date,HousePWCons$Time),format = "%e/%m/%Y %H:%M:%S")

png(file = "plot3.png", width = 480, height = 480)


with(HousePWCons, {
    plot(Fecha,Sub_metering_1,type = "l",xlab="",ylab="Energy sub metering")
    lines(Fecha,Sub_metering_2,type = "l",col="red")
    lines(Fecha,Sub_metering_3,type = "l",col="blue")
    })
legend("topright",lty=1,lwd=1 ,col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()