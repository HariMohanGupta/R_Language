#Module 2: Assignment 4 - Select Function
#Problem Statement:
#  Jonas is working on data manipulation using placement and pharmacovigilance dataset.
#Now, he has to perform data manipulation operation using select() function from the
#dplyr package.
#Tasks to be performed:

library(dplyr)
library(sqldf)

install.packages("sqldf")
#1. Extract the following columns using placement dataset:
#a. Extract the specialization column (12th column) and store it in s_student.

View(Placement_Data)

select(Placement_Data,12)->s_student

View(s_student)


#b. Extract the salary column (15th column) and store it in s_salary.

select(Placement_Data,15)->s_salary

View(s_salary)

#c. Extract the higher secondary percentage column (5th column) and store it
# in hsc_percent.

select(Placement_Data,5)->hsc_percent

View(hsc_percent)


#2. Extract the following columns from the pharmacovigilance dataset:

# a. Extract 1st, 3rd, and 5th column and store it in col_135.

View(Pharmacovigilance)

select(Pharmacovigilance,1,3,5)->col_135

View(col_135)

#b. Extract the 2nd and 6th column and store it in col_26.

select(Pharmacovigilance,2,6)->col_26

View(col_26)

#3. Extract column number 1 to 5 from placement dataset.

select(Placement_Data,1:5)->col_1to5

View(col_1to5)
