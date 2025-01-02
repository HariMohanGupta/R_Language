#Module 1: Assignment 12 - Calculating Number of Rows & Columns
#Problem Statement:
#Sam has to extract the records of the students from placement data according to varying
#conditions. Below are the tasks that need to be performed:
#  Tasks to be performed:

#1. Check how many rows and columns are there in the dataset?

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

nrow(Placement_Data_Full_Class)

ncol(Placement_Data_Full_Class)

#2. Extract the data of people who are having the branch as Sci&Tech who are
#employed. Then, check how many such people are there who are employed by
#finding the number of rows that contains the data of employed people.

Placement_Data_Full_Class$degree_t== "Sci&Tech" &
  Placement_Data_Full_Class$workex == "Yes" ->pw
View(pw)
as.data.frame(pw)->pw  
View(pw)
subset(Placement_Data_Full_Class,pw==T)->pw
View(pw)
nrow(pw)


#3 Find the number of rows of female students who are from Arts and Commerce stream.

Placement_Data_Full_Class$gender == "F" & 
  Placement_Data_Full_Class$hsc_s == "Arts" : "Commerce"  ->arts_c
View(arts_c)
as.data.frame(arts_c)->arts_c
View(arts_c)
subset(Placement_Data_Full_Class,arts_c==T)->arts_c
View(arts_c)
nrow(arts_c)

# Commerce Students with female
Placement_Data_Full_Class$gender == "F" & 
  Placement_Data_Full_Class$hsc_s == "Commerce"  ->c_c
View(c_c)
as.data.frame(c_c)->c_c
View(c_c)
subset(Placement_Data_Full_Class,c_c==T)->c_c
View(c_c)
nrow(c_c)

nrow(arts_c | c_c)




#4. Fetch the number records of all the students as per the following condition:
#a. Students who are placed
#b. Students who are earning more than 300000
#c. Also find the number of such student

Placement_Data_Full_Class$status=="Placed" ->placed
View(placed)
as.data.frame(placed)->placed
subset(Placement_Data_Full_Class,placed==T)->placed
View(placed)
nrow(placed)


#b

Placement_Data_Full_Class$salary > 300000 ->mtl
View(mtl)
as.data.frame(mtl)->mtl
subset(Placement_Data_Full_Class,mtl==T)->mtl
nrow(mtl)

# c. Also find the number of such student
print(mtl)


#Find the number of columns having data type as following:
#a. Integer
#b. Factor
#c. Numeric

str(Placement_Data_Full_Class)

ncol(Placement_Data_Full_Class)



