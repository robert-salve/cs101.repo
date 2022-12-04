#Worksheet 6
#Ben Robert T. Salve. BSIT2-A

#1)
library(ggplot2)
data(mpg)
nrow(mpg)
ncol(mpg)
#Answer: The number of columns in a mpg dataset is 11 while the number of rows is 234.


#2)
#Answer: 
library(dplyr)
mpg
print(mpg)
View(mpg)

most_model <- mpg %>% 
group_by(manufacturer) %>% 
tally(sort = TRUE)
most_model

most_variations <- mpg %>% 
group_by(model) %>% 
tally(sort = TRUE)
most_variations
#Dodge has the most models in this data set and the model that has the most variations is caravan 2wd. 


#a.
data1 <- mpg
u_models <- data1 %>% group_by(manufacturer, model) %>%
distinct() %>% count()
u_models
colnames(u_models) <- c("Manufacturer", "Model", "Counts")
u_models


#b.
qplot(model, data = mpg,geom = "bar", fill=manufacturer)
ggplot(mpg, aes(model, manufacturer)) + geom_point()


#3)
data1 <- mpg
u_models <- data1 %>% group_by(manufacturer, model) %>%
distinct() %>% count()
u_models
colnames(u_models) <- c("Manufacturer", "Model", "Counts")
u_models


#a.
ggplot(mpg, aes(model, manufacturer)) + geom_point()
#Answer: This code shows a geometric point graph of model and manufacturer of the mpg data set. 


#b.
#Answer: For me, the plot is already useful if you want to find a specific model and what 
#manufacturer made it, then this plot can really help you find the information that you need. 


#4)
data2 <- u_models %>% group_by(Model) %>% count()
colnames(data2) <- c("Model","Counts")
data2


#a.
qplot(model, data= mpg, main= "Number of Cars per Model", 
      xlab= "Model", ylab= "Number of Cars", geom= "bar", fill= manufacturer) + coord_flip()


#b.
data1 <- subset(mpg[c(1:20),c(1:11)])
obj_manu <- mpg$manufacturer[1:20]
obj_mode <- mpg$model[1:20]

qplot(obj_mode, data = data1, main = "Number of Cars per Model", 
      xlab = "Model",ylab = "Number of Cars", geom = "bar", fill = obj_manu) + coord_flip()


#5)
#a.
ggplot(data = mpg , mapping = aes(x = displ, 
  y = cyl, main = "Relationship between No. of Cylinders and Engine Displacement")) + 
  geom_point(mapping=aes(colour = "engine displacement")) 


#b.
#Answer: In the y axis we have the number of cylinders and in the x axis we have the displacement,
#the red dots represents the engine displacement. The plot is about the ctlinders by displacement. 


#6)
#a.
ggplot(data= mpg, mapping= aes(x= drv, y= class)) + 
  geom_point(mapping= aes(color= class)) + geom_tile()
                                                                                      

#b.
#Answer: It is class by the type of drive train, where f = front-wheel drive, 
#r = rear wheel drive, 4 = 4wd. The plot looks like a heatmap but the color is black.
#The class or the legend has color representations but the plot doesn't have any color. 



#7)
#Code 1.
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

#Code 2.
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

#Answer: The difference between code 1 and code 2 is that in code 1 colour is for 
#representing what the dot is. It is basically a legend, while in code 2 it is 
#for changing the color of the dots.


#8)
?mpg
#Answer: The result of the command is that it opened up the help tab. It gave the title 
#Fuel economy data from 1999 to 2008 for 38 popular models of cars, it gave a short description,
#usage, and format.


#a.
#Answer: The variables that are categorical in the mpg data set are
#manufacturer, model, trans, drv, fl, and class.


#b.
#Answer: The continuous variables in the mpg data set are displ, year, cyl.


#c.
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) + geom_point()
#Answer: The plot is keeping track of the cty by having different hues of color blue.
#It produced this output because of the ggplot code. 


#9)
ggplot(data= mpg, mapping = aes(x= displ, y= hwy)) + geom_point(mapping= aes(color= class)) +
  geom_smooth(se= FALSE)


#10)
ggplot(data= mpg, mapping= aes(x= displ, y= hwy, color= class)) + geom_point() +
  geom_smooth(se= FALSE)

