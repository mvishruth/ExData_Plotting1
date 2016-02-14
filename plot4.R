setwd("C:\\GitHub\\ExData_Plotting1")
getwd()

power <- read.table("./household_power_consumption.txt",
                    header=TRUE,
                    sep=";",
                    na.strings="?")

power$DateTime <-paste(power$Date,power$Time)
power$DateTime = as.POSIXlt(power$DateTime,format="%d/%m/%Y %H:%M:%S")

power1<-subset(power,DateTime$year==107 & DateTime$mon==1 & (DateTime$mday==1 | DateTime$mday==2))

png(file = "plot3.png", bg = "transparent")

plot(y = power1$Sub_metering_1 ,x=power1$DateTime,type="l",col="black",xlab = "",ylab = "Energy Sub Metering")
lines(y = power1$Sub_metering_2 ,x=power1$DateTime,col="red")
lines(y = power1$Sub_metering_3 ,x=power1$DateTime,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",
        col=c("black","red","blue"),lwd=2,cex=0.7)

dev.off()

