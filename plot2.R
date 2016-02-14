setwd("C:\\GitHub\\ExData_Plotting1")
getwd()

power <- read.table("./household_power_consumption.txt",
                    header=TRUE,
                    sep=";",
                    na.strings="?")

power$DateTime <-paste(power$Date,power$Time)
power$DateTime = as.POSIXlt(power$DateTime,format="%d/%m/%Y %H:%M:%S")

power1<-subset(power,DateTime$year==107 & DateTime$mon==1 & (DateTime$mday==1 | DateTime$mday==2))

png(file = "plot2.png", bg = "transparent")

plot(y = power1$Global_active_power ,x=power1$DateTime,type="l",
     ylab="Global Active Power(Kilowatts)",xlab="")

dev.off()

