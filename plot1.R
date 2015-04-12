# build plot 1
# start with data file filtered for the two dates in Feb
filename <- "/Users/bob/Documents/projects/courseraDS/ExploratoryDataAnalysis/Project1/ExData_Plotting1/feb.txt"
outputpath <- "/Users/bob/Documents/projects/courseraDS/ExploratoryDataAnalysis/Project1/ExData_Plotting1/"
feb <- read.table(filename, sep = ";", na.strings = "?")
names(feb) <- c("Date","Time","Global_active_power","Global_reactive_power",
                "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2",
                "Sub_metering_3")
#strptime() and as.Date()
# use %d for day, %m for month and %Y for year with century.
#
feb$beautyDate <- as.Date(feb[,1], "%d/%m/%Y")
# plot 1
# save as png 480 x 480 is the default
png(file = paste(outputpath , "plot1.png"))
hist(as.numeric(feb$Global_active_power), freq = TRUE, breaks = 5, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowats)",
     col = "red")
dev.off()


