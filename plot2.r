library(lubridate)
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
hpc1<-hpc[which(hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007"),]
concat<-paste(hpc1$Date, hpc1$Time, sep=" ")
hpc1$datetime<-dmy_hms(concat)
dev.cur()
png("plot2.png",height=480, width=480)
plot(hpc1$datetime,hpc1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()