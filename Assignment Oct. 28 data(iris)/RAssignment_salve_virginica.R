#Ben Robert T. Salve. BSIT 2-A
#Assignment 
#Oct. 28, 2022

#1) 
data(iris)
data

#2)
data_set<- subset(iris, Species == "virginica")
data_set2<- iris[iris$Species == "virginica",] #Note: Same output with subset. 
data_set
data_set2

#3)
x1 <- mean(iris$Sepal.Length[101:150])
x1
#Output: [1] 6.588

x2 <- mean(iris$Sepal.Width[101:150])
x2
#Output: [1] 2.974

x3 <- mean(iris$Petal.Length[101:150])
x3
#Output: [1] 5.552

x4 <- mean(iris$Petal.Width[101:150])
x4
#Output: [1] 2.026

total_mean <- c(x1, x2, x3, x4)
total_mean 
#Output: [1] 6.588 2.974 5.552 2.026

total_final <- mean(total_mean)
total_final
#Output: [1] 4.285

#4)
x1 <- mean(iris$Sepal.Length[101:150])
x2 <- mean(iris$Sepal.Width[101:150])
x3 <- mean(iris$Petal.Length[101:150])
x4 <- mean(iris$Petal.Width[101:150])

x1
x2
x3
x4
#Output: [1] 6.588
#Output: [1] 2.974
#Output: [1] 5.552
#Output: [1] 2.026

