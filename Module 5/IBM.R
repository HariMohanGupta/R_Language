library(caTools)

read.csv("D:\\Hari -DS\\DS_With_R-20210518T024814Z-001\\DS_With_R\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)
names(customer_churn)

library(ggplot2)
ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure,))+geom_point()



ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure))+geom_point(col="red")

ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure))+geom_point()+geom_smooth()


cor(customer_churn$MonthlyCharges,customer_churn$tenure)
cov(customer_churn$MonthlyCharges,customer_churn$tenure)
sample.split(MonthlyCharges~tenure,SplitRatio = 0.80)->split_tag

subset(customer_churn,split_tag==T)->train
subset(customer_churn,split_tag==F)->test

nrow(train)
nrow(test)

lm(MonthlyCharges~tenure,data = train)->model5

model5$coefficients
model5$residuals
model5$effects
model5$rank
model5$fitted.values
model5$assign
model5$qr
model5$model
model5$call
model5$terms
summary(model5)
predict(model5,newdata = test)->predicated_values

cbind(Actual = test$MonthlyCharges,predicted = predicated_values)->final_data

View(final_data)
class(final_data)
as.data.frame(final_data)->final_data
class(final_data)

final_data$Actual - final_data$predicted ->error

cbind(final_data,error)->final_data
View(final_data)
head(error)
head(final_data)
sqrt(mean((final_data$error)^2))


#####IBM Classes #####################################
######################################################################
#Vectors
test = c(1,2,3,4,5,6,7,8,9,10)
print(test)

test1  = c(1:10)
print(test1)

c(6, 4)/2

# Decrease the no

c(10:1)

# Vectors Type

#1 Numeric

c(1985,2000,1665)
#2 Character Vectors

c("Toy","Hari","Mohan","Gupta")

# Logical Vectors : True or false

c(1997 > 2000)

movie_rating = c(7.3,8.5,5.0,6.8,8.8)
movie_rating > 7.5

#Factors: This no are categorical no variables

genre_vactor = c("Toy","Hari","Mohan","Gupta")

genre_factor = factor(genre_vactor)

genre_factor
genre_vactor

summary(genre_vactor)
summary(genre_factor)

# Vectors Operations
# Naming Elements of Vectors

year<- c(1985,1999,2010,2002)

names(year) <- c("The Breakfast club","American Beauty","Black sawan","Chicago")

year["Black sawan"]

#Length of Vector

year<- c(1985,1999,2010,2002)

length(year)

# sort the vector
year<- c(1985,1999,2010,2002)

names(year) <- c("The Breakfast club","American Beauty","Black sawan","Chicago")

year_stored <- sort(year)

year_stored

# Smalles and Largest Numers

year<- c(1985,1999,2010,2002)


# Min function findout smallest numbers
min(year)

max(year)


# Avearge of numbers

cost_2014 <- c(8.6,8.5,8.1)

cost_2014

sum(cost_2014)/3

range(cost_2014)
# Also findout same result from mean function
mean(cost_2014)

summary(cost_2014)

# Vectors Index

cost_2014 <- c(8.6,8.5,8.1)

cost_2014[2]

cost_2014[c(2,3)]

cost_2014[c(1:3)]

titles <- c("Black swan","Casino","City of God","Jumanji","Toy Story")

titles[-1]

titles[8]

cost_2014 <- c(8.6,8.5,8.1)

cost_2014 > 8.3

cost_2014[cost_2014>8.3]

# Missing Value

age_restric <- c(14,12,10,NA,18,NA)
age_restric

# Vector Arithmethic
age_restric <- c(14,16,12,10,18,18)

sequeance <- c(2,3,0,2,6,3)

multiply <- age_restric * sequeance

multiply

cost_2014 <- c(8.6,8.5,8.1)
cost_2014 * 10

c(1,2) ==1

costs <- c(3,15,3,10)

costs >5
costs[costs>5]


# Array
movie_vector = c("Akira","Toy Story","Room","The wave","Wiplash",
                 "Star wars","The Ring","The Artist","Jumanji")
movie_vector

#Convert from vector to Array dim is dimension in this case 4 rows and 3 column)

movie_array = array(movie_vector, dim = c(4,3))

movie_array

# In the above case we have only 9 elements but we given the 4*3= Total 12 elements
# access three elements start to repeat.

#Accessing an Array

# access the wiplash

movie_array[1,2]

# access the entire first row

movie_array[1,]

# access the column

movie_array[,2]


#Matrix


movie_vector = c("Akira","Toy Story","Room","The wave","Wiplash",
                 "Star wars","The Ring","The Artist","Jumanji")
movie_matrix = matrix(movie_vector,nrow = 3,ncol = 3)

# by default the matrix is arranged by columns, rather than by row

# We can change
movie_matrix = matrix(movie_vector,nrow = 5,ncol = 5, byrow = TRUE)
movie_matrix


# Accessing the Matrix
movie_matrix[1,5]
movie_matrix[5,5]
movie_matrix[5,1]

movie_matrix[2:3,1:2]


# List

movie <- list("Toy story",1995,c("Animation","Adventure","comedy"))

movie

# Accessing  the item in list

# element access 2

movie[2]

# access the element the 2 and 3rd

movie[2:3]

#Named list

movie = list(name  = "Toy story",
             year  = 1995,
             genere = c("Animation","Adventure","Comedy"))
movie

movie$genere
movie$name

movie["genere"]
movie["name"]
movie["year"]

#Adding Items

movie["age"]<- 5

movie

# Modifying items

movie["age"]<- 6
movie

# Removing the elements
movie = list(name  = "Toy story",
             year  = 1995,
             genere = c("Animation","Adventure","Comedy"))
movie["age"]<- NULL

movie

john <- list("Student ID" = 9, "Age" = 18, "Courses" = c("Data Science 101","Data Science Methodology"))
john

john$Courses
john[3]
john["Courses"]
# DATA FRAME

movie = data.frame(names = c("Toy story","Akira","The brakfast club","The Artist",
                             "Modern Times","Fight club","City of God",
                             "The untouchables"),
                   
                   year = c(1995,1998,1985,2011,1936,1999,2002,1987))

movie

# each vectors are column each vector are data same type

# Accessing the data frames
 #use the $ dollar sign symbols()

movie$names

movie[1]
movie[1,2]

# Data frame structure use the STR function

str(movie)


# Head and tail 

# head function provide the first 6 elements

head(movie)

# tail function provide the last 6 elements

tail(movie)


# Inserting new column

movie["Length"]<- c(81,125,97,100,87,139,130,119)

movie

# inserting a new row

movie = rbind(movie,c(names="Dr Hari",year=1996,Length=94))

movie

# delete the row

movie = movie[-9,]
movie

# delete a column

movie["Length"]<- NULL
movie

data.frame("student" = c("john", "mary"), "id" = c(1, 2))

list("student" = c("john", "mary"), "id" = c(1, 2))

#array("student" = c("john", "mary"), "id" = c(1, 2))

data.frame(c("john", "mary"), c(1, 2))

# conditional Statements

data.frame("name" = c("Toy story", "Akira","The Breakfast club","The Artist",
                      "Modern times","Fight club","City of God","The untouchable",
                      "Room"), "year" = c(1995, 1998,1985,2011,1936,1999,2002,1987,2015))->movie_year



movie_year

movie_year<-2002
if(movie_year > 2000){
  print("Movie greater than 2000")
}


movie_year<-2005
if(movie_year > 2000){
  print("Movie greater than 2000")
} else{
  print("Movie year is not greater than 2000")
}


# Logical Operator compare two value like: True or False

1995<1987   # Less than operator

2016 >=2015  # greater than or equal

# In R single = equal sign use to assign varibal if you can check two value 
# equal we use == double equal sign

"Toy Story" == "Toy Story"


# if two value not equal use !=

"Toy Story" != "Interstellar"


# Combining Logical Operators

"Toy Story" == "Toy Story" & 1995 < 1987

# Above & operator if both side true then output will come True if any one false output
# will come false

# For Loops

years <- c(1995,1998,1985,2011,1936,1999)
class(years)

for(yr in years){
  print(yr)
}


for(yr in years){
  if(yr < 1980){
    print("Old Movie")
  }else{
    print("Not that old")
  }
}

# While Loop

count <- 1

while (count<=5) {
  print(c("Interaction Number:",count))
  count<- count + 1
}


# Function 
#1-predefined

ratings <- c(8.7,6.9,8.5)
mean(ratings)

sort(ratings) # this is default behavier

# if you like decending order

sort(ratings,decreasing = TRUE)


# User defined function

# user defined this type of function

printHelloWorld <- function(){
  print("Hello World")
}

printHelloWorld()

add <- function(x,y){
  x + y
}
  add(3,4)  

  # Return statement
  
  add <- function(x,y){
    return(x + y)
  }
  
  add(3,4)

  # If else in function
  
  isGoodRatings <- function(rating) {
    if(rating < 7){
      return("No")
    }else{
      return("Yes")
    }
  }
  
  isGoodRatings(9)

  
  # Default Input value in function
  
  isGoodRatings <- function(rating,threshold = 7){
    if(rating < threshold){
      return("No")
    }else{
      return("Yes")
    }
  }
  
  isGoodRatings(6)
isGoodRatings(8,threshold = 8.5)  


# using function within functions

read.csv("D:\\Hari -DS\\IBM\\my_data.csv")->my_data
View(my_data)
str(my_data)

watchMovie <- function(moviename,my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  isGoodRatings(rating,threshold = my_threshold)
}

watchMovie("Akira")

watchMovie("Akira",8)


# Global & Local Variable

myfunction <- function(){
  y <<- 3.14   # Y is define global variable which one access outside the variable
  temp<- "Hello world"
  return(temp)
}

myfunction()

y

temp


# Objects in R,object in R is data structure 

x<- 5 

# object class
# 1-Numeric _real value
# 2-Character _string Value
# 3-Logical True and False
# 4- Integer as integer

# Object Class of Numeric

average_rating <- 8.3
class(average_rating)

movie<- c("Toy Story","Akira")
movie
class(movie)

# Object Class - Logicla It is boolian value
logical_vector<- c(TRUE,FALSE,TRUE,FALSE)
logical_vector
class(logical_vector)


# Numeric to Integer

age_restriction<- c(12,10,18,18)
age_restriction
class(age_restriction)

# Change to numeric to integer

integer_vector<- as.integer(age_restriction)
integer_vector
class(integer_vector)


# Converting to character class
year<- (1995)
year
# Change to character

year<- as.character(1995)
year
class(year)

# Combination numbers & character in vector

combined <- c("Toy Story",1995,"Akira",1998)
combined
class(combined)
 


# Debugging


# Producing an error

"a" + 10 # error are showing because fisr is character & second is numeric


# error halts execution 

for(i in 1:3){
  print(i + "a")   # Error are show
}

# Error catching with try Catch statement

tryCatch(10+10)

tryCatch("a" + 10)

tryCatch(10 + "a",error = function(e)
  print("Ops,something went wrong"))


tryCatch(10 + 10,error = function(e)
  print("Ops,something went wrong"))

tryCatch(10 + "a",error = function(e)
  return("10a"))


tryCatch(
  for (i in 1:3) {
    print(i + "a")
    
  }
,error = function(e)print("Found error"))


# warning Handling

as.integer("A")

tryCatch(as.integer("A"),
         warning = function(e)
           print("warning."))



chance_precipitation <- 0.80
if( chance_precipitation > 0.5 ) {
  print("Bring an umbrella") } else {
    print("Don't bring an umbrella")}

# Reading Excel files 
# install.packages("readxl")

installed.packages("readxl")
library(readxl)
read_excel("D:\\Hari -DS\\IBM\\my_data.xls")->my_data1
View(my_data1)

# How we access first name column
my_data1["name"]
my_data[1]

# How we access entire row

my_data1[1,]
my_data[1,c(1,3)] #or

my_data1[1,c("name","length_min")]

data()
help(CO2)
CO2

# Reading text file in R and ext. is .txt

# first function is readlines

readline("D:\\Hari -DS\\IBM\\toy_story.txt")->text
View(text)

readLines("D:\\Hari -DS\\IBM\\toy_story.txt")->text
text

# Useful operation for text file

length(text)
nchar(text)

# Size of file 
file.size("D:\\Hari -DS\\IBM\\toy_story.txt")

# Reading text file into R using scan() this function every word seprate

scan("D:\\Hari -DS\\IBM\\toy_story.txt"," ")->text
text

# Export the data file like text,csv and excel file
# Exporting as a text file,for exporting use the write function

m<- matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3)
m
write(m, file = "D:\\Hari -DS\\IBM\\matrix_as_text.txt",
      ncolumns = 3,sep = " ")

# Exporting as a CSV file 

write.csv(my_data, file = "D:\\Hari -DS\\IBM\\dataset.csv"
          ,row.names = FALSE)
View(my_data)

write.table(my_data, file = "D:\\Hari -DS\\IBM\\dataset.csv",
            row.names = FALSE,col.names = FALSE,sep = " , ")

# Exporting as an Excel file

# First install.packages("xlsx") 
#library(xlsx)

library(xlsx)
write.xlsx(my_data,file = "D:\\Hari -DS\\IBM\\dataset.xlsx",
           sheetname = "Sheet1",col.names = TRUE,row.names = FALSE)

# Saving R object in .RDATA files

list = c("var1","var2","var3")
list
save(list = c("var1","var2","var3"),file = "D:\\Hari -DS\\IBM\\vars.RData"
,safe = TRUE)

# Basic String Operations:

readLines("D:\\Hari -DS\\IBM\\toy_story.txt")->summary
summary

# if you want how many character use the function nchar (use the function line wise)

nchar(summary[3])

# if you want the character in upper case use the function toupper

toupper(summary[1])

# if you want convert in lower function use the tolower function

tolower(summary[1])

# if you wnat replace the specific character use the function chartr

chartr(" ","_",summary[1])

# if you want every character in list with space use the strsplit function
char_list<- strsplit(summary[1]," ")
char_list
# if you want unlist the charcter use the unlist function
word_list<- unlist(char_list)
word_list
# if you want every character in sort use the sort function

sort(word_list)->sorted_list
sorted_list

#if you want a list in a paragraph use paste function with collapse
paste(sorted_list,collapse = " ")

# if you want selected line use substr function

substr(summary[1],start = 4,stop = 50)->sub_string
sub_string
# trimws function remove the space from beginning and end.
trimws(sub_string)

library(stringr)

str_sub(summary[1],-8,-3)


Sys.Date()
date()
Sys.time()
Sys.timezone()
system.time()


######## Strings and Dates in R

readLines("D:\\Hari -DS\\IBM\\toy_story.txt")->summary
summary

#nchar function  count the number of characters in a string, you can use the "nchar" function


nchar(summary[2]) # count the all characters

# if you wants upper case use touppaer

toupper(summary[1])

# if you want lower case use tolower function

tolower(summary[1])


# if you want insert the special symbol use this function

chartr(" ", "_", summary[1])


char_list <- strsplit(summary[1], " ")
char_list

word_list <- unlist(char_list)
word_list

sorted_list <- sort(word_list) # sort function sort the character
sorted_list


paste(sorted_list, collapse = " ")

sub_string <- substr(summary[4],start = 1, stop = 50)
sub_string

summary

trimws(sub_string) # this function remove the white space


library(stringr)

str_sub(summary[1], -8, -1)


# The Date Classes


