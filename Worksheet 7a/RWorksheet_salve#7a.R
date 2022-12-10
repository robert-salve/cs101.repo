#Worksheet 7
#Ben Robert T. Salve. BSIT2-A

#1)
Student<- seq(1:10)
Pre_Test<- c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58)
Post_Test<- c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)

df1 <- data.frame(Student, Pre_Test, Post_Test)
df1

#a.
library(Hmisc)
library(pastecs)

describe(df1)
stat.desc(df1)


#2)
data1<- c(10, 10, 10, 20, 20, 50, 10, 20, 10, 50, 20, 50, 20, 10)
data1

#a.
factored_data<- factor(data1, ordered = TRUE)
factored_data
#Answer: The output of the code displayed the levels of the factored_data object which are 
#10 is less than 20 and 20 is less than 50.


#3) 
subjects<- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")

#a.
represent<- data.frame(subjects)
represent
#Answer: The best way to represent this data in R is to make a data frame. 


#4)
sample_accountants<- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", 
                        "vic", "qld", "qld", "sa", "tas", "sa", "nt", "wa", "vic", "qld", "nsw",
                        "nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")
sample_accountants

#a.
factored_sample_accountants<- factor(sample_accountants)
factored_sample_accountants

a4<- levels(factored_sample_accountants)
a4
#Answer: The factor function displays everything inside the combine and displays the level,
#it displayed the elements without repeating it. While the factor level it just displayed 
#the levels.


#5)
incomes<- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61,
             61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incomes

#a.
income_apply<- tapply(incomes, sample_accountants, mean)
income_apply 

#b.
income_apply 
#Answer: It displayed the mean of the income for each sample_accountants. 


#6)
stdError <- function(x) sqrt(var(x)/length(x))

#a.
#Answer: The standard error describes the variation between the calculated mean of 
#the population and one which is considered known, or accepted as accurate.
std_error_n<- length(income_apply)
std_error_sd<- sd(income_apply)
std_error_se<- std_error_sd/sqrt(std_error_n)
std_error_se

#b.
#Answer: By dividing the sd(), sqrt(), or length() you will get the standard errors as result. 

#7)
data(Titanic)
View(Titanic)
titanic_dataset<- data.frame(Titanic)

#a.
survived<- subset(titanic_dataset, Survived == "Yes")
survived

did_not_survived<- subset(titanic_dataset, Survived == "No")
did_not_survived


#8)
#a.
#Answer: The data sets pertain to Wisconsin's breast cancer. Periodically as Dr. Wolberg 
#discusses his clinical cases, samples start to come. This chronological grouping of the 
#data is therefore reflected in the database.

#b.
library(readxl)
Breast_Cancer <- read_excel("Breast_Cancer.xlsx")
View(Breast_Cancer)

#c.
#c1.
c1_n <- length(Breast_Cancer$`CL. thickness`)
c1_sd <- sd(Breast_Cancer$`CL. thickness`)
c1_se <- c1_sd/sqrt(Breast_Cancer$`CL. thickness`)
c1_se

#c2.
c2<- sd(Breast_Cancer$`Marg. Adhesion`) / mean(Breast_Cancer$`Marg. Adhesion`) * 100
c2

#c3.
c3 <- subset(Breast_Cancer,`Bare. Nuclei` == "NA")
c3

#c4.
c4<- mean(Breast_Cancer$`Bl. Cromatin`)
c4.1<- sd(Breast_Cancer$`Bl. Cromatin`)
c4
c4.1

#c5.
#Mean.
c5 <- mean(Breast_Cancer$`Cell Shape`)
c5

#Standard error of the mean.
c5.1 <- length(Breast_Cancer$`Cell Shape`)
c5.2 <- sd(Breast_Cancer$`Cell Shape`)
c5.3 <- c5.2/sqrt(c5.1)
c5.3

#Finding the t-score that corresponds to the confidence level.
c5.4 = 0.05
c5.5 = c5.1 - 1
c5.6 = qt(p= c5.4/2, df= c5.5, lower.tail= F)
c5.6

#Constructing the confidence interval.
c5.7 <- c5.6* c5.3

#Lower.
c5.8 <- c5 - c5.7

#Upper.
c5.9 <- c5 + c5.7

c(c5.8, c5.9)

#d.
attributes(Breast_Cancer)

#e.
e8 <- subset(Breast_Cancer, Class == "malignant")
e8

#Percentage.
17  / 49 * 100

#Answer: There are 17 respondents who are malignant and 49 respondents. The result 
#is that 34.69388 or 35% of respondents are malignant.


#9.
#install.packages('AppliedPredictiveModeling')
library("AppliedPredictiveModeling")
data(abalone)
View(abalone)
head(abalone)
summary(abalone)
#install.packages('xlsx')
library(xlsx)
write.xlsx(abalone,"/Users/miasalve/Desktop/Home folder/ISAT-U files/BSIT 2-A/abalone.xlsx")

