plot3 <- function() {
        require(sqldf)
        file <- c("~/Coursera/Exploratory Data Analysis/household_power_consumption.txt")
        x <- read.csv.sql(file, header = T, sep=";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')" )
        q <- as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
        
        x <- cbind(x,q)
        png(file="~/Coursera/Exploratory Data Analysis/exdata_plotting1/plot3.png")        
        plot(q, x$Sub_metering_1, ylab= "Energy Sub Metering", xlab=NA,pch=NA)
        lines(q, x$Sub_metering_1)
        lines(q, x$Sub_metering_2, col="red")
        lines(q, x$Sub_metering_3, col="blue")
        legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))
        dev.off()
}