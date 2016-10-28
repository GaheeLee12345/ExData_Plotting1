#reading
setwd("C:/Users/gahee/Documents/2016_Unist/2016_2nd/R/week9")
data=read.table("household_power_consumption.txt",sep=';',skip=66637, nrows = 2880)

data=data %>% select(V3) %>% mutate(V3=as.numeric(as.character(V3)))

#1
hist(data$V3, col="red",main="Global Active Power", xlab="Global Active Power (Killowatts)", ylab="Frequency")
