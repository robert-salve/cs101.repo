#Ben Robert T. Salve. BSIT2-A
#Worksheet3

#1)
LETTERS
letters

#a. 
x <- LETTERS
x [1:11]

#b.
odd_letters <- LETTERS
odd_letters
odd_letters <- LETTERS[1:26 %% 2 !=0]
odd_letters

#c
vowel_letters <- LETTERS[c(1, 5, 9, 15, 21)]
vowel_letters


#d
last_5ll <- letters
last_5ll [22:26]

#e 
letters_between <- letters
letters_between [15:24]

#2)

#a. 
#R code:
city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city

#b.
temp <- c(42, 39, 34, 34, 30, 27)
temp

#c. 
names(temp) <- city
temp
#The result of the code is, it set a name for the object temp. 

#d.
#Rcode:
temp[c(5, 6)]
#The content of index 5 and 6 are:
# Samal Island   Davao City 
# 30             27 



#Using Matrices 
#2)

#a. 
#R code:
mat1 <- matrix(c(1:8, 11:14), 3, 4)
mat1

#b. 
#R code:
mat1*2

#c. 
#R code:
mat1[2,]

#d. 
#R code:
mat1 [c(1,2),c(3,4)]

#e. 
#R code:
mat1 [c(3),c(2,3)]

#f.
#R code:
mat1 [,4]

#g. 
#R code:
dimnames(mat1) <- list(c("isa", "dalawa", "tatlo"),c("uno", "dos", "tres", "quatro"))
mat1

#h. 
#R code:
dim(mat1) <- c(6,2)
mat1

#Using arrays
#3. 
#a. 
#R code:
a1 <- array(c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1))
a1

v1 <- array(rep(a1, 2), dim = c(2,4,3))
v1

#b. 
#R code:
dim(v1)
# We have 3 dimensions. 

#c. 
#R code:
dimnames(v1) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimentional Array", "3rd-Dimensional Array"))
v1


