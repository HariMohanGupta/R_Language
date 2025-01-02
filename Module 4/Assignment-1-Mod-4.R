#                   Module 4: Assignment 1 - IQR


#Problem Statement:
#  Calculate Interquartile Range for different columns of the following dataset:
#  1. Student placement
#  2. Customer churn
#  3. Pharmacovigilance

#Tasks to be performed:

#1. Calculate the IQR (Interquartile Range) for the following columns of 
# the placement dataset:
#  a. hsc_p
#  b. ssc_p
#  c. degree_p
#  d. mba_p
#  e. etest_p

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Student_placement
View(Student_placement)

IQR(Student_placement$hsc_p)

IQR(Student_placement$ssc_p)

IQR(Student_placement$degree_p)

IQR(Student_placement$mba_p)

IQR(Student_placement$etest_p)

# 2. Calculate the IQR (Interquartile Range) for the following 
#columns of the customer churn dataset:
#  a. TotalCharges
#  b. MonthlyCharges
#  c. Tenure

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

IQR(customer_churn$TotalCharges,na.rm = T)

IQR(customer_churn$MonthlyCharges)

IQR(customer_churn$tenure)

#3. Calculate the IQR (Interquartile Range) for the following columns of the
#pharmacovigilance dataset:
#  a. Age
#  b. PatientID


read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

IQR(Pharmacovigilance_audit_Data$Age)

IQR(Pharmacovigilance_audit_Data$PatientID)
