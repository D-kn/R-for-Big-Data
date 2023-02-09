#q1
data("airquality")
airquality

#q2
help("airquality")
 
#q3
names(airquality)
#q4
dim(airquality)

#q5
quantile(airquality$Temp)

#q6
sapply(airquality, sd) # !missig values
View(airquality)

apply(na.omit(airquality),MARGIN = 2,FUN = sd)

#q7
cv <- sd(airquality$Temp) / mean(airquality$Temp) * 100
cv
#q8
#8a
airquality[3,]
#8b
airquality[,3]
#8c
airquality[c(1,2,4),]
#8d
airquality[3:6,]
#8e
airquality[, -c(1,2)]
#8f
temp_great<-subset(airquality ,Temp>80)
temp_great
#q9
hist(airquality$Temp, 
     breaks = 15, 
     main = "Histogram of Temperature", 
     xlab = "Temperature")

dim(airquality)
nrow(airquality)
ncol(airquality)
#q10
airquality$VeryWindy <- ifelse(airquality$Wind >= 10, TRUE, FALSE)
View(airquality)
#q11
airquality$VeryWindy <- NULL
#q12
aq <- airquality[!is.na(airquality$Ozone), ]
aq
#Q11
library(ggplot2)
qplot(Temp, Ozone, data = airquality, color = Month) + stat_smooth(method="lm", se=FALSE)
#On obtient une représentation graphique sophistiquée des données
cor(airquality$Temp, airquality$Ozone)
model <- lm(Temp ~ Ozone, data = airquality)
model
