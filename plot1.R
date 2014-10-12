## Use these 2 commands to set dir and load code
#setwd("C:\\Stacey\\R\\Coursera\\Analyzing Data\\Week 1")
#source("plot1.R")

##load the data
if(!exists("d"))
{
	d<-read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";")
	##convert the date
	d$Date<-as.Date(d$Date,"%d/%m/%Y")
	#get a subset of the data for the required dates
	s<-subset(d,Date %in% as.Date(c("2007-02-01","2007-02-02")))
}

##create a png of Plot 1
png("Plot 1.png")
hist(s$Global_active_power,col="red",xlab="Global Active Power",ylab="Frequency",main="Global Active Power")
dev.off()


