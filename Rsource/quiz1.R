x<-4
class( x <- c(4, "a", TRUE))
u<-c("elo",4,c(1,3))
class(u)
x <- list(2, "a", "b", TRUE)
x[[2]]
x<-1:4
y<-2
x+y

 x <- list(2, "a", "b", TRUE)
x[[1]]
class(x[[1]])
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x >= 11] <- 4
x

wd<-getwd()
hw1_data<-read.csv(paste(wd,'/sheets/hw1_data.csv', sep = ''))

hw1_data[c(1,2),]

nrow(hw1_data)

hw1_data[c(152,153),]

hw1_data[47,1]

v1<-which(is.na(hw1_data[,1]))

length(v1)

v2<-hw1_data[,1]
v3<-subset(v2, !is.na(v2))
v3
mean(v3)

data_s1<-subset(hw1_data, hw1_data$Ozone >31 & hw1_data$Temp > 90 )
mean(data_s1$Solar.R)

data_s2<-subset(hw1_data, hw1_data$Month ==6)
mean(data_s2$Temp)

data_s3<-subset(hw1_data, hw1_data$Month == 5)


