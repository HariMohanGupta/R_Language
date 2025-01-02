#Module 1: Assignment 23 - Range Function

#Problem Statement:
#Jonas is working on various datasets such as customer churn, pharmacovigilance, city
#temperature, and placement data. The dataset comprises of various numeric values. Jonas
#is assigned a task to calculate the range of all the numeric values from the datasets.
#Tasks to be performed:

#1. Calculate the range of following columns of customer churn dataset:
#a. Tenure
#b. Monthly Charges
#c. Total Charges

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = F)->customer_churn

class(customer_churn)
str(customer_churn)

range(customer_churn$tenure)

range(customer_churn$MonthlyCharges)

range(na.omit(customer_churn$TotalCharges))


#2. Calculate the range of following columns of city temperature dataset:
#a. Day
#b. Year
#c. Average Temperature


read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature

View(city_temperature)

range(city_temperature$Day)

range(city_temperature$Year)

range(city_temperature$AvgTemperature)


#3. Calculate the range of following columns of pharmacovigilance dataset:
#a. Age b. Patient ID

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data

View(Pharmacovigilance_audit_Data)

range(Pharmacovigilance_audit_Data$Age)

range(Pharmacovigilance_audit_Data$PatientID)

#4. Calculate the range of following columns of placement dataset:
#a. Sl_no b. Ssc_p c. Hsc_p d. Degree_p
#e. Etest_p f. Mba_p g. Salary

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data_Full_Class

View(Placement_Data_Full_Class)

range(Placement_Data_Full_Class$sl_no)

range(Placement_Data_Full_Class$ssc_p)

range(Placement_Data_Full_Class$hsc_p)

range(Placement_Data_Full_Class$degree_p)

range(Placement_Data_Full_Class$etest_p)

range(Placement_Data_Full_Class$mba_p)

range(na.omit(Placement_Data_Full_Class$salary))
