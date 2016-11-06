# upload data
setwd("C:/Users/Professor Shadow/Desktop/Chicago/explots")
datafile <- "household_power_consumption.txt"
df <- read.table(datafile,header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE)

#subset dataframe between dates 01/02/2007 and 02/02/2007
df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]

#paste and convert date and time columns to create values for x-axis
datetime <- strptime(paste(df$Date,df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalactivepower <- as.numeric(df$Global_active_power)

#plot the graph to PNG file
png("plot2.png", width=480, height = 480)
plot(datetime,globalactivepower,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()
