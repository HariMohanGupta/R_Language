#Module 1: Assignment 14 - Relational Operator

#Problem Statement:
#  Sam is working on placement data of a college. Sam is assigned a task to extract and
#analyze the data based on certain condition.
#Tasks to be performed:
#  1. Extract the data of the students who are:
#  a. Having SSC score greater than or equal to 65.

View(Placement_Data)

Placement_Data$ssc_p >=65 ->ssc_65

View(ssc_65)

as.data.frame(ssc_65)->ssc_65

View(ssc_65)


#b. Having HSC score greater than 80.

Placement_Data$hsc_p >80 ->hsc_80

as.data.frame(hsc_80)->hsc_80

subset(Placement_Data,hsc_80==T)->hsc_80

View(hsc_80)

nrow(hsc_80)

#c. Earning more than 200000.

Placement_Data$salary >200000 ->salary_2lakhs
as.data.frame(salary_2lakhs)->salary_2lakhs

subset(Placement_Data,salary_2lakhs==T)->salary_2lakhs

View(salary_2lakhs)

nrow(salary_2lakhs)

#2. Extract the data of the students who are:
# a. Placed and earning salary less than 250000.

Placement_Data$status == "Placed" &
  Placement_Data$salary <250000 ->below_salary
as.data.frame(below_salary)->below_salary

subset(Placement_Data,below_salary==T)->below_salary

View(below_salary)

nrow(below_salary)

#b. From commerce and management having earning salary less than 600000

Placement_Data$degree_t =="Comm&Mgmt" &
  Placement_Data$salary <600000 ->less_salary

as.data.frame(less_salary)->less_salary

subset(Placement_Data,less_salary==T)->less_salary

View(less_salary)

nrow(less_salary)


#c. From Science stream with etest score greater than 90.

Placement_Data$hsc_s == "Science" &
  Placement_Data$hsc_p >90 -> hsc_90

as.data.frame(hsc_90)->hsc_90

View(hsc_90)

subset(Placement_Data,hsc_90==T)->hsc_90
View(hsc_90)
nrow(hsc_90)


#3. Extract the data of the students who are:
#a. From Central board studying Arts.

Placement_Data$hsc_b =="Central" &
  Placement_Data$hsc_s == "Arts" ->hsc_ca

as.data.frame(hsc_ca)->hsc_ca

View(hsc_ca)
subset(Placement_Data,hsc_ca==T)->hsc_ca

View(hsc_ca)

nrow(hsc_ca)


#b. From Sci&Tech with e_test score equals to 75.

Placement_Data$degree_t == "Sci&Tech" &
  Placement_Data$etest_p== 75 ->etest

as.data.frame(etest)->etest

View(etest)

subset(Placement_Data,etest==T)->etest
View(etest)

nrow(etest)

#c. Placed with a salary of 450000.

Placement_Data$status == "Placed" &
  Placement_Data$salary == 450000 ->above_sal
as.data.frame(above_sal)->above_sal
View(above_sal)
subset(Placement_Data,above_sal==T)->above_sal
View(above_sal)
nrow(above_sal)

