# See dataPrep.R for how household_power_consumption.txt is preprocessed
# dataPrep.R creates the data frame pdata and saves it.  load() pops it back into
# existence.
load("~/rprog/ExData_Plotting1/ExData_Plotting1/hpc_feb.Rdata")

png(file = "~/rprog/ExData_Plotting1/ExData_Plotting1/plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

plot(pdata$datetime,pdata$Global_active_power,  
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     type="l")

dev.off()
