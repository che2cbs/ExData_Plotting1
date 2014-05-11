pdata <- read.csv2("~/Downloads/household_power_consumption.txt", 
                   na.strings = "?", as.is = c(TRUE))
pdata$datetime <- strptime(paste(pdata$Date,pdata$Time),"%d/%m/%Y %H:%M:%S")
pdata$Date <- as.Date(pdata$Date,"%d/%m/%Y")
pdata <- pdata[pdata$Date %in% as.Date(c("2007-02-01","2007-02-02")),]

pdata$Global_active_power <- as.numeric(pdata$Global_active_power)
pdata$Sub_metering_1 <- as.numeric(pdata$Sub_metering_1)
pdata$Sub_metering_2 <- as.numeric(pdata$Sub_metering_2)
pdata$Sub_metering_3 <- as.numeric(pdata$Sub_metering_3)
pdata$Voltage <- as.numeric(pdata$Voltage)

save(pdata,file="~/rprog//ExData_Plotting1/hpc_feb.Rdata")