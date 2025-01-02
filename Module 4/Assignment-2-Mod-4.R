#   Module 4: Assignment 2 - Calculating Variability & Spread

#Problem Statement:
#  Calculate Variability and Spread for the given column of the following dataset:
#  1. Student placement
#  2. Customer churn
#  3. Pharmacovigilance


#Tasks to be performed:

#1. Calculate the following for the 'tenure' column of customer churn dataset:
#  a. Mean
#  b. Median
#  c. Range
#  d. IQR
#  e. Variance
#  f. Standard Deviation

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

mean(customer_churn$tenure)

median(customer_churn$tenure)

range(customer_churn$tenure)

IQR(customer_churn$tenure)

var(customer_churn$tenure)

sd(customer_churn$tenure)


#2. Calculate the following for the 'ssc_p'column of student placement dataset:
# a. Mean
# b. Median
# c. Range
# d. IQR
# e. Variance
# f. Standard Deviation

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

mean(Placement_Data_Full_Class$ssc_p)

median(Placement_Data_Full_Class$ssc_p)

range(Placement_Data_Full_Class$ssc_p)

IQR(Placement_Data_Full_Class$ssc_p)

var(Placement_Data_Full_Class$ssc_p)

sd(Placement_Data_Full_Class$ssc_p)

#3. Calculate the following for the 'age' column of pharmacovigilance dataset:
#a. Mean
#b. Median
#c. Range
#d. IQR
#e. Variance
#f. Standard Deviation

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

mean(Pharmacovigilance_audit_Data$Age)

median(Pharmacovigilance_audit_Data$Age)

range(Pharmacovigilance_audit_Data$Age)

IQR(Pharmacovigilance_audit_Data$Age)

var(Pharmacovigilance_audit_Data$Age)

sd(Pharmacovigilance_audit_Data$Age)
