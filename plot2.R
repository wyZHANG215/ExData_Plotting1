## Plot 2
plot(HPC$Global_active_power~HPC$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Save file
dev.copy(png,"plot2.png", width=480, height=480)

## Close device
dev.off()