## plot 1
hist(HPC$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## Save file
dev.copy(png,"plot1.png", width=480, height=480)

## close device
dev.off()