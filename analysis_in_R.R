#Reading the data
library(readr)
data = read_csv('C:/Users/simra/OneDrive/Documents/Docs/Projects/The K-Word/baby_names.csv')
View(data)


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

#Number of baby names from each state
x <- ggplot(data, aes(x= reorder(State, +Count), y = Count)) + geom_bar(stat="identity")
x
ggplot(data, aes(State, Count))+geom_col()

#Number of baby names over time
ggplot(data, aes(Year, Count)) + geom_line(aes(group=Year))

ggplot(data = data) + 
  geom_line(mapping = aes(x=Year, y=Count))

















