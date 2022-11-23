#Ben Robert T. Salve. BSIT2-A
#Worksheet 5

#1)
#a.
year_2019_2020 <- c(80, 75, 70, 60)
barplot(year_2019_2020)

#b.
barplot(year_2019_2020, 
        main= "Enrollment of BS Computer Science",
        xlab= "Curriculum Year",
        ylab= "number of students", names.arg= c("1st", "2nd", "3rd", "4th"))

#2)

#a.

Monthlyincome_Dejesus <- data.frame(Food= ("60%"), Electricity= ("10%"),
                    Savings= ("5%"), Other_miscellaneous_expenses= ("25%"))
Monthlyincome_Dejesus

#b.
Monthlyincome_Dejesus <- c(60, 10, 5, 25)
Monthlyincome_Dejesus

pie(Monthlyincome_Dejesus,
    main= "cost",
    col= rainbow(length(Monthlyincome_Dejesus)),
    labels= c("Food", "Electricity", "Savings", "Other miscellaneous expenses"))
legend("topright", c("Food", "Electricity", "Savings", "Other miscellaneous expenses"),
       cex= 0.5, fill= rainbow(length(Monthlyincome_Dejesus)))

#3)
data(mtcars)

#a.
simple_histo <- (mtcars$mpg)
hist(simple_histo,)

#b. 
hist(simple_histo, breaks=12, col="red")

#c.
histo <-hist(simple_histo, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(simple_histo),max(simple_histo),length=40)
yfit<-dnorm(xfit,mean=mean(simple_histo),sd=sd(simple_histo))
yfit <- yfit*diff(histo$mids[1:2])*length(simple_histo)
lines(xfit, yfit, col="blue", lwd=2)

#4)
data(iris)
View(iris)

#a.
data_set1<- subset(iris, Species == "setosa")
data_set2<- subset(iris, Species == "versicolor")
data_set3<- subset(iris, Species == "virginica")
data_set1
data_set2
data_set3

#b. 
setosa <- colMeans(data_set1[sapply(data_set1,is.numeric)])
versicolor <- colMeans(data_set2[sapply(data_set2,is.numeric)])
virginica <- colMeans(data_set3[sapply(data_set3,is.numeric)])
setosa
versicolor 
virginica

#c.
species <- rbind(setosa, versicolor, virginica)
species

#d.
barplot(species, beside = TRUE, col= c("red", "green", "blue"),
        main= "Iris Data",
        xlab= "Characteristics",
        ylab= "Mean Scores", names.arg= c("Sepal.Length", "Sepal.Width",
                                                 "Petal.Length", "Petal.Width "))



