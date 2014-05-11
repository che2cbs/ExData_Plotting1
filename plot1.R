# See dataPrep.R for how household_power_consumption.txt is preprocessed
# dataPrep.R creates the data frame pdata and saves it.  load() pops it back into
# existence.
load("~/rprog/ExData_Plotting1/hpc_feb.Rdata")

png(file = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

hist(pdata$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylim = c(0,1200))

dev.off()


