# See dataPrep.R for how household_power_consumption.txt is preprocessed
# dataPrep.R creates the data frame pdata and saves it.  load() pops it back into
# existence.
load("~/rprog/ExData_Plotting1/ExData_Plotting1/hpc_feb.Rdata")

png(file = "~/rprog/ExData_Plotting1/ExData_Plotting1/plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

plot(pdata$datetime,pdata$Sub_metering_1,
     col="black", 
     ylab = "Energy Sub Metering", xlab = "", 
     type ="l")
lines(pdata$datetime,pdata$Sub_metering_2, col="red")
lines(pdata$datetime,pdata$Sub_metering_3, col="blue")

legend("topright",
       col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1)

dev.off()

