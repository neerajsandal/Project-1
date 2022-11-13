sourcefile <- "household_power_consumption.txt"
data <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".", na.strings = "?")
plot(time_axis, data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_axis, data[, 8], col = "red")
lines(time_axis, data[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)
