#Ben Robert T. Salve. BSIT 2-A
#Assignment 
#Oct. 28, 2022

#1) 
data(iris)
data

#2)
data_set<- subset(iris, Species == "setosa")
data_set2<- iris[iris$Species == "setosa",] #Note: Same output with subset. 
data_set
data_set2

#3)
x1 <- mean(iris$Sepal.Length[1:50])
x1
#Output: [1] 5.006

x2 <- mean(iris$Sepal.Width[1:50])
x2
#Output: [1] 3.428

x3 <- mean(iris$Petal.Length[1:50])
x3
#Output: [1] 1.462

x4 <- mean(iris$Petal.Width[1:50])
x4
#Output: [1] 0.246

total_mean <- c(x1, x2, x3, x4)
total_mean 
#Output: [1] 5.006 3.428 1.462 0.246

total_final <- mean(total_mean)
total_final
#Output: [1] 2.5355

#4)
x1 <- mean(iris$Sepal.Length[1:50])
x2 <- mean(iris$Sepal.Width[1:50])
x3 <- mean(iris$Petal.Length[1:50])
x4 <- mean(iris$Petal.Width[1:50])

x1
x2
x3
x4
#Output: [1] 5.006
#Output: [1] 3.428
#Output: [1] 1.462
#Output: [1] 0.246

