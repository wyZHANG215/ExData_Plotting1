getwd()

## unzip the data
zip_file <- "./data/exdata_data_household_power_consumption.zip"
unzip(zip_file, exdir = './data')

## load data (only from 2007-02-01 to 2007-02-02)
hpc_file <- "./data/household_power_consumption.txt"
HPC  <- read.table(hpc_file, header=TRUE, sep=";", na.strings = "?")
head(HPC)
tail(HPC)
str(HPC)

## subset data
HPC <- subset(HPC, Date == "1/2/2007" | Date == "2/2/2007")

## remove incomplete observation
HPC <- HPC[complete.cases(HPC),]

## Format date to Type Date
HPC$Date <- as.Date(HPC$Date, "%d/%m/%Y")

## combine date and time
DateTime <- paste(HPC$Date, HPC$Time)
HPC <- cbind(DateTime, HPC)

## Format dateTime Column
HPC$DateTime <- as.POSIXct(DateTime)

str(HPC)