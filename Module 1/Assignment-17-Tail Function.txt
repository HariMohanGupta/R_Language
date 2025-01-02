#Module 1: Assignment 17 - Tail Function

#Problem Statement:
#Sam is working on pharmacovigilance dataset. He has looked over first few values of the
#data and performed certain arithmetic operations. Now, Sam has to analyze and perform
#certain operations as a part of data analysis on the last few values of the dataset.

#Tasks to be performed:
#1. Extract the last few values of the following columns from the pharmacovigilance
#dataset:
#a. Ssc_p

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit
View(Pharmacovigilance_audit)
str(Pharmacovigilance_audit)


tail(Placement_Data$ssc_p)

#b. Hsc_p

tail(Placement_Data$hsc_p)
#c. Degree_p

tail(Placement_Data$degree_p)

#d. Etest_p
tail(Placement_Data$etest_p)

#e. Mba_p
tail(Placement_Data$mba_p)

#f. Salary

tail(Placement_Data$salary)

#2. Check an add 12000 to the last 8 values of the salary column.

tail(Placement_Data$salary[208:215]+12000,8)->Placement_Data$salary[208:215]
View(Placement_Data)

tail(Placement_Data$salary,8)

#3. Check and increase the mba_p score by 10 for the last few values.

tail(Placement_Data$mba_p[206:215]+10,10)->Placement_Data$mba_p[206:215]
View(Placement_Data)
tail(Placement_Data$mba_p,10)

