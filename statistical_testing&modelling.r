library(dplyr)
library(rmarkdown)
data <- read.csv("/home/khalsa/Desktop/Data_Science/customer_segmentation_project/Customers.csv")
data

#creating quatiles of a datasets
quantile(data$Annual.Income..k.., 0.25)
quantile(data$Annual.Income..k..)

#testing
mean(data$Annual.Income..k..)
sd(data$Annual.Income..k..)
x <- rnorm(50, mean = 60.56, sd=26.26472)
t.test(x, mu=65)

#meadian testing
wilcox.test(x, conf.int = TRUE)

#testing for normality
shapiro.test(x)

mean(data$Spending.Score..1.100.)
sd(data$Spending.Score..1.100.)
y<-rnorm(50, mean = 50.2, sd = 25.82352)
t.test(y, mu=55)

wilcox.test(y, conf.int = TRUE)

shapiro.test(y)

#correaletion testing between sx & y
cor.test(x, y)

#regretion modal
m<-lm(y~x)
plot(y~x)
abline(m)
