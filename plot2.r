plot2 <- function() {
        require(sqldf)
        file <- c("~/Coursera/Exploratory Data Analysis/household_power_consumption.txt")
        x <- read.csv.sql(file, header = T, sep=";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')" )
        q <- as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
        
        x <- cbind(x,q)
        png(file="~/Coursera/Exploratory Data Analysis/exdata_plotting1/plot2.png")        
        plot(q, x$Global_active_power, ylab= "Global Active Power (kilowats)", xlab=NA,pch=NA)
        lines(q, x$Global_active_power)
        dev.off()
}