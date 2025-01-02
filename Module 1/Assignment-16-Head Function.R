#Module 1: Assignment 16 - Head Function

#Problem Statement:
#Sam is assigned a task to analyze the data by checking the first few values of the
#pharmacovigilance dataset. There are various columns in the dataset that needs to be
#checked for its first few values.
#Tasks to be performed:

#1. Check the first five values of the following columns using the head function:
#a. Sl_no


read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data
View(Placement_Data)

head(Placement_Data$sl_no,5)

#b. Gender

head(Placement_Data$gender,5)

#c. Ssc_p
head(Placement_Data$ssc_p,5)

#d. Ssc_b

head(Placement_Data$ssc_b,5)

#e. Hsc_p

head(Placement_Data$ssc_b,5)
#f. Degree_p

head(Placement_Data$degree_p,5)

#g. Degree_t

head(Placement_Data$degree_t,5)
#h. Etest_p

head(Placement_Data$etest_p,5)
#i. Specialization

head(Placement_Data$specialisation,5)
#j. Mba_p

head(Placement_Data$mba_p,5)
#k. Salary

head(Placement_Data$salary,5)


#2. Add 5000 to the first six data of the salary column.

head(Placement_Data$salary,6)

Placement_Data$salary[1:6]+5000 ->add5k
View(add5k)
as.data.frame(add5k)->add5k

View(add5k)
head(add5k,6)

#3. Add 7.5 to the first 10 values of e_test column.

head(Placement_Data$etest_p[1:10]+7.5,10)->add_seven.five
View(add_seven.five)
as.data.frame(add_seven.five)->add_seven.five
View(add_seven.five)

head(add_seven.five)

#4. Reduce the mba_p score by 5 for the first three values.

head(Placement_Data$mba_p[1:3]-5,3)->first_three
as.data.frame(first_three)
View(first_three)
