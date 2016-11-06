# upload data
setwd("C:/Users/Professor Shadow/Desktop/Chicago/explots")
datafile <- "household_power_consumption.txt"
df <- read.table(datafile,header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE)

#subset dataframe between dates 01/02/2007 and 02/02/2007
df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]

#plot the graph to PNG file
png("plot1.png", width=480, height = 480)
with(df, hist(Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red",main = "Gobal Active Power"))
dev.off()
