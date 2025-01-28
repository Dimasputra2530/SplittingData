# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123) #ini untuk mengacak sebuah data
split = sample.split(dataset$Purchased, SplitRatio = 0.8)#ini membagi data menjadi 80 dan 20
training_set = subset(dataset, split == TRUE) #baris yang diberi nilai TRUE dalam split dimasukkan ke training set.
test_set = subset(dataset, split == FALSE) #Baris yang diberi nilai FALSE dalam split dimasukkan ke test set.

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)
