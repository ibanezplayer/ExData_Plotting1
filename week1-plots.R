## Use these 2 commands to set dir and load code
#setwd("C:\\Stacey\\R\\Coursera\\Analyzing Data\\Week 1")
#source("week1-plots.R")

##load the data
d<-read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";")
##convert the date
d$Date<-as.Date(d$Date,"%d/%m/%Y")
#get a subset of the data for the required dates
s<-subset(d,Date %in% as.Date(c("2007-02-01","2007-02-02")))

##create a png of Plot 1
png("Plot 1.png")
hist(s$Global_active_power,col="red",xlab="Global Active Power",ylab="Frequency",main="Global Active Power")
dev.off()


##create a png of Plot 2
png("Plot 2.png")
plot(s$Time,s$Global_active_power,ylab="Global Active Power (kilowatts)")
dev.off()

##create a png of Plot 3
png("Plot 3.png")
plot(s$Time,s$Sub_metering_1,ylab="Energy Sub Metering",type="n")
lines(s$Time,s$Sub_metering_1,ylab="",col="black")
lines(s$Time,s$Sub_metering_2,ylab="",col="red")
lines(s$Time,s$Sub_metering_3,ylab="",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()

