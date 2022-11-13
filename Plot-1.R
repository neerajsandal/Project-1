file <- read.table('household_power_consumption.txt', header = TRUE ,sep = ";", dec = ".", na.strings = "?")
file <- file[file$Date %in% c("1/2/2007","2/2/2007"),]
hist(file[, 3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")