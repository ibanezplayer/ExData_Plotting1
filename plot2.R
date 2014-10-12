## Use these 2 commands to set dir and load code
#setwd("C:\\Stacey\\R\\Coursera\\Analyzing Data\\Week 1")
#source("plot2.R")

##load the data
if(!exists("d"))
{
	d<-read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";")
	##convert the date
	d$Date<-as.Date(d$Date,"%d/%m/%Y")
	#get a subset of the data for the required dates
	s<-subset(d,Date %in% as.Date(c("2007-02-01","2007-02-02")))
	#get datetime
	s$datetime<-strptime(paste(s$Date,s$Time),"%Y-%m-%d %H:%M:%S")
}
##create a png of Plot 2
png("Plot 2.png")
plot(s$datetime,s$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()
