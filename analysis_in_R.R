#Reading the data
nrow(data)
ncol(data)
head(data)
tail(data)
str(data)
summary(data)

#Taking care of missing values
colSums(is.na(data))
#No missing values

#Data Visualization
library(ggplot2)
ggplot(data, aes(State, Count))+geom_bar(stat="identity")

ggplot(data, aes(State, Count))+geom_col()
