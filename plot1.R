install.packages(data.table)
library(data.table)
data<-fread("household_power_consumption.txt",sep=";",na.strings="NA",colClasses="character")
newdata1<-data[data$Date=="1/2/2007",]
newdata2<-data[data$Date=="2/2/2007",]
newdata<-rbind(newdata1,newdata2)
newdata$Global_active_power<-as.numeric(newdata$Global_active_power)
par(mar=c(5,7,5,5))
hist(newdata$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power(kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
