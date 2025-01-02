View(customer_churn)

#Module 1: Assignment 4 - Calculating Mean
#Problem Statement:
#Jonas is assigned a task for evaluating the mean of different columns from customer
#churn, placement data, and pharmacovigilance dataset.
#Tasks to be performed:
#  1. Calculate the mean of the following columns from customer churn dataset:

#a. Tenure
mean(customer_churn$tenure)

#b. Monthly Charges
mean(customer_churn$MonthlyCharges)

#c. Total Charges
mean(customer_churn$TotalCharges,na.rm = TRUE)

#2. Calculate the mean of the following columns from the placement dataset:
View(Placement_Data)

#a. Ssc_p

mean(Placement_Data$ssc_p)

#b. Hsc_p
mean(Placement_Data$hsc_p)

#c. Degree_p
mean(Placement_Data$degree_p)

#d. Etest_p
mean(Placement_Data$etest_p)

#e. Mba_p
mean(Placement_Data$mba_p)

#f. Salary
mean(Placement_Data$salary,na.rm = TRUE)
