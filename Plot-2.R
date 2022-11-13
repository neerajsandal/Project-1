sourcefile <- "household_power_consumption.txt"
Sys.setlocale("LC_TIME", "English")
data <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".", na.strings = "?")
date_converted <- as.Date(data[, 1], format = "%d/%m/%Y")
time_converted <- strptime(data[, 2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date_converted, data[, 2]))
plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
