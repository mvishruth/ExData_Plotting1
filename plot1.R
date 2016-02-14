setwd("C:\\GitHub\\ExData_Plotting1")
getwd()

power <- read.table("./household_power_consumption.txt",
                    header=TRUE,
                    sep=";",
                    na.strings="?")

power$DateTime <-paste(power$Date,power$Time)
power$DateTime = as.POSIXlt(power$DateTime,format="%d/%m/%Y %H:%M:%S")

power1<-subset(power,DateTime$year==107 & DateTime$mon==1 & (DateTime$mday==1 | DateTime$mday==2))

png(file = "plot1.png", bg = "transparent")
hist(power1$Global_active_power,col="red",main = "Global Active Power",xlab="Global Active Power(Kilowatts)")
dev.off()

