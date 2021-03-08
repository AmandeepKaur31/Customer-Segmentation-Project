library(dplyr)
library(tidyr)
Customer_data<-read.csv("/home/khalsa/Desktop/Data_Science/customer_segmentation_project/Customers.csv")
Customer_data
nrow(Customer_data)
ncol(Customer_data)
length(Customer_data$Gender.Length)
count(Customer_data, Gender)
count(Customer_data, Age)
mean(Customer_data$Annual.Income..k..)
mean(Customer_data$Spending.Score..1.100.)
mean(Customer_data$Annual.Income..k.., trim = 0.10)
var(Customer_data$Annual.Income..k..)
var(Customer_data$Spending.Score..1.100.)
sd(Customer_data$Annual.Income..k..)
sd(Customer_data$Spending.Score..1.100.)
median(Customer_data$Annual.Income..k..)
median(Customer_data$Age)
max(Customer_data$Age)
max(Customer_data$Annual.Income..k..)
min(Customer_data$Age)
min(Customer_data$Annual.Income..k..)
#Hypothesis testing
x<-(Customer_data$Annual.Income..k..)
y<-(Customer_data$Spending.Score..1.100.)

#one sample testing
t.test(x)

#two sample testing
t.test(x,y)

#Directional Hypothesis
t.test(x, mu=2, alternative = 'greater')
t.test(y, mu=2, lternative='greater')

#correlation testing
cor.test(x,y)

#summary
summary(Customer_data$Annual.Income..k..)
summary(Customer_data$Spending.Score..1.100.)

#regretion testing
reg<-lm(Annual.Income..k..~Spending.Score..1.100., data = Customer_data)
print(reg)

summary(reg)
