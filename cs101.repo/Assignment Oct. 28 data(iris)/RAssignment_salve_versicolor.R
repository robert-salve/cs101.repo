#Ben Robert T. Salve. BSIT 2-A
#Assignment 
#Oct. 28, 2022

#1) 
data(iris)
data

#2)
data_set<- subset(iris, Species == "versicolor")
data_set2<- iris[iris$Species == "versicolor",] #Note: Same output with subset. 
data_set
data_set2

#3)
x1 <- mean(iris$Sepal.Length[51:100])
x1
#Output: [1] 5.936

x2 <- mean(iris$Sepal.Width[51:100])
x2
#Output: [1] 2.77

x3 <- mean(iris$Petal.Length[51:100])
x3
#Output: [1] 4.26

x4 <- mean(iris$Petal.Width[51:100])
x4
#Output: [1] 1.326

total_mean <- c(x1, x2, x3, x4)
total_mean 
#Output: [1] 5.936 2.770 4.260 1.326

total_final <- mean(total_mean)
total_final
#Output: [1] 3.573

#4)
x1 <- mean(iris$Sepal.Length[51:100])
x2 <- mean(iris$Sepal.Width[51:100])
x3 <- mean(iris$Petal.Length[51:100])
x4 <- mean(iris$Petal.Width[51:100])

x1
x2
x3
x4
#Output: [1] 5.936
#Output: [1] 2.77
#Output: [1] 4.26
#Output: [1] 1.326

