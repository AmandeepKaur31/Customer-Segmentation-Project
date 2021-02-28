library(dplyr)
library(tidyr)
data <- read.csv("/home/khalsa/Desktop/Data_Science/customer_segmentation_project/Customers.csv")
data
nrow(data)
ncol(data)
select(data,Gender)
data%>%
  pivot_wider(names_from=Annual.Income..k.., values_from=Spending.Score..1.100.)
data%>%
  separate(col=Gender, into=c("male", "female"), convert=TRUE)
data%>%
  unite(col="new", Annual.Income..k.., Spending.Score..1.100.)
