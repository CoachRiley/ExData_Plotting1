plot1 <- function() {
        require(sqldf)
        file <- c("~/Coursera/Exploratory Data Analysis/household_power_consumption.txt")
        x <- read.csv.sql(file, header = T, sep=";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')" )
        png(file="~/Coursera/Exploratory Data Analysis/exdata_plotting1/plot1.png")        
        hist(as.numeric(x$Global_active_power), main="Global Active Power", col="red", xlab="Global Active Power (kilowats)")
        dev.off()
}