customer_data=read.csv("/home/khalsa/Desktop/Data_Science/customer_segmentation_project/Customers.csv")
str(customer_data)
names(customer_data)

head(customer_data)
summary(customer_data$Age)

sd(customer_data$Age)
summary(customer_data$Annual.Income..k..)
sd(customer_data$Annual.Income..k..)
summary(customer_data$Age)

a=table(customer_data$Gender)
barplot(a,main="Using BarPlot to display Gender Comparision",
        ylab="Count",
        xlab="Gender",
        col=rainbow(2),
        legend=rownames(a))

summary(customer_data$Age)
hist(customer_data$Age,
     col="blue",
     main="Histogram to Show Count of Age Class",
     xlab="Age Class",
     ylab="Frequency",
     labels=TRUE)

boxplot(customer_data$Age,
        col="blue",
        main="Boxplot for Descriptive Analysis of Age")

summary(customer_data$Annual.Income..k..)
hist(customer_data$Annual.Income..k..,
     col="blue",
     main="Histogram for Annual Income",
     xlab="Annual Income Class",
     ylab="Frequency",
     labels=TRUE)

plot(density(customer_data$Annual.Income..k..),
     col="red",
     main="Density Plot for Annual Income",
     xlab="Annual Income Class",
     ylab="Density")

summary(customer_data$Spending.Score..1.100.)
boxplot(customer_data$Spending.Score..1.100.,
        horizontal=TRUE,
        col="#990000",
        main="BoxPlot for Descriptive Analysis of Spending Score")
