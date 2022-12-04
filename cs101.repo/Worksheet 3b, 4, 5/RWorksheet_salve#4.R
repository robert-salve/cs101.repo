#Worksheet 4
#Ben Robert T. Salve. BSIT 2-A

#1)
data_frame <- data.frame(Shoe_size= c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5,
                                      10.5, 8.5, 12.0, 10.5), 
                         Height= c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0,
                                   64.0, 74.5, 67.0, 71.0, 71.0), 
                         Gender= c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M",
                                   "F", "M", "M"), 
                         Shoe_size2= c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5,
                                       10.5, 11.0, 9.0, 13.0),
                         Height2= c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0,
                                    69.0, 72.0, 70.0, 69.0, 70.0),
                         Gender2= c("M", "M", "F", "F", "M", "F", "F", "M", "M", "F", "M",
                                    "M", "M", "M"))
data_frame

#a. 
#The data is for measuring shoe sizes with mix male and female respondents. 
#There are 3 variables with the same name, I thought it would confuse the R program that
#is why I put 2 at the end of the other 3 variable names. I tried to follow the variable 
#names of the given data the result was at the end of the other 3 variable names they 
#have a .1 each. 

#b.
#Gender Male Shoe_size and Height mean. 

data1 <- subset(data_frame[1:14, 1:3])
data1
male_only <- data1[data_frame$Gender == 'M',]
male_only
mean_male <- mean(male_only$Shoe_size)
mean_male
height_male <- mean(male_only$Height)
height_male

#Gender Male Shoe_size2 and Height2 mean. 
data2 <- subset(data_frame[1:14, 4:6])
data2
male_only2 <- data2[data_frame$Gender2 == 'M',]
male_only2
mean_male2 <- mean(male_only2$Shoe_size2)
mean_male2
height_male2 <- mean(male_only2$Height2)
height_male2

#Gender Female Shoe_size and Height mean. 
data3 <- subset(data_frame[1:14, 1:3])
data3
female_only3 <- data3[data_frame$Gender == 'F',]
female_only3
mean_female3 <- mean(female_only3$Shoe_size)
mean_female3
height_female3 <- mean(female_only3$Height)
height_female3

#Gender Female Shoe_size2 and Height2 mean 
data4 <- subset(data_frame[1:14, 4:6])
data4
female_only4 <- data4[data_frame$Gender2 == 'F',]
female_only4

mean_female4 <- mean(female_only4$Shoe_size2)
mean_female4
height_female4 <- mean(female_only4$Height2)
height_female4

#Output: For the first three columns I took the mean of male and female Shoe_size 
#and Height the mean for male shoe size is 11.3 and for the height it is 71.7. 
#For the female mean shoe size is 8.222222 and for the height it is 66.61111.

#Output: For the last three columns I took the mean of male and female Shoe_size2
#and Height2 the mean for male shoe size is 10.77778 and for the height it is 71.33333.
#For the female mean shoe size is 7.2 and for the height it is 64.




#c.
#The first three columns, the average shoe size for male respondents is 11.3 and the 
#height is 71.7. For the female respondents the average shoe size is 8.222222 and the 
#height is 66.61111.
#For the last three columns, the average shoe size for male respondents is 10.77778
#and the height is 71.33333. For the female respondents the average shoe size is 7.2 
#and the height is 64.
#The relationship of shoe size and height for the first three columns is that the male 
#respondents are mostly tall and they have a larger feet for the female they have
#smaller feet and short in height. 
#I could still say the same about the last three columns the male respondents have 
#larger feet and tall in height. The female are short in height and have smaller feet. 

#Usually if you are tall you will have a larger feet and if you are short you will
#have smaller feet. But it is possible for tall people to have smaller feet and short
#people to have larger feet. Everyone have different shoe sizes for balancing when 
#you walk and run.

#2)
months_vector <- c("March","April","January","November","January", "September",
            "October","September","November","August", "January","November",
            "November","February","May","August", "July","December","August",
            "August","September","November","February","April")
factor_months_vector <- factor(months_vector)
print(factor_months_vector)

#3)
summary(months_vector)
summary(factor_months_vector)
# Both of the vector summary are useful in this case because at the summary of months_vector
# tells us about the length, class, and mode. In summary of factor_months_vector it tells us
# how many repeating elements are there. 

#4)

Direction <- c("East", "West", "North") 
Frequency <- c(1, 4, 3)
x1 <- factor(Direction)
x2 <- factor(Frequency)
print(x1)
print(x2)

#5)

#a.
getwd()
a<- read.table("import_march.csv", header= TRUE, sep= "," )
a

#For xlsx file but not read.table: 
#library(readxl)
#import_march <- read_excel("import_march.xlsx")
#View(import_march)  

#b. 
View(a)
#It open another tab in R with the object name that I gave which is a. It displayed 
#the table that I made from excel, at first I used the readxl package to import the 
#file in global environment but the question was to use the read.table. I renamed the 
#file to .csv my first file was in .xlsx then added header and sep. 













