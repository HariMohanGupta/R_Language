#Module 2: Assignment 5 - Standard Deviation

#Problem Statement:
#Jonas is assigned a task to calculate the standard deviation of different columns from
# customer churn and placement dataset using sd() function.

#Using customer churn dataset:
#1. Calculate the standard deviation of 'tenure' column and store it in sd_tenure.

library(dplyr)

sd(customer_churn$tenure)->sd_tenure
View(sd_tenure)
as.data.frame(sd_tenure)->sd_tenure
View(sd_tenure)

#2. Calculate the standard deviation of 'Monthly Charges' column and store it in
# sd_MonthlyCharges.

sd(customer_churn$MonthlyCharges)->sd_MonthlyCharges
as.data.frame(sd_MonthlyCharges)->sd_MonthlyCharges
View(sd_MonthlyCharges)


#3. Calculate the standard deviation of 'Total Charges' column and store it in
#sd_TotalCharges.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv")->customer_churn
View(customer_churn)

customer_churn$TotalCharges[is.na(customer_churn$TotalCharges)]<-0
sum(is.na(customer_churn$TotalCharges))

View(customer_churn)
sd(customer_churn$TotalCharges)->sd_TotalCharges
as.data.frame(sd_TotalCharges)->sd_TotalCharges
View(sd_TotalCharges)


#Using student's placement dataset:

#1. Calculate the standard deviation of etest and store it in sd_etest.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

sd(Placement_Data$etest_p)->sd_etest
as.data.frame(sd_etest)->sd_etest
View(sd_etest)

#2. Calculate the standard deviation of salary and store it in sd_salary.


Placement_Data$salary[is.na(Placement_Data$salary)]<- 0
sd(Placement_Data$salary)->sd_salary
as.data.frame(sd_salary)->sd_salary
View(sd_salary)


#3. Calculate the standard deviation of percentage score by students in MBA (mba_p)
# and store it in sd_mba.

sd(Placement_Data$mba_p)->sd_mba
as.data.frame(sd_mba)->sd_mba
View(sd_mba)
