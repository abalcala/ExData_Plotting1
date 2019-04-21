library(lubridate)
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
hpc$Date<-as.Date(hpc$Date,"%d/%m/%Y")
hpc1<-hpc[which(hpc$Date>="2007/02/01" & hpc$Date<="2007/02/02"),]
dev.cur()
png("plot1.png",height=480, width=480)
hist(as.numeric(hpc1$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
