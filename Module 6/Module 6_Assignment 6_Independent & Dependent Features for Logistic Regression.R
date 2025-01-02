# Module 6: Assignment 6 - Independent & Dependent Features for Logistic Regression

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. The corporation wants you to recognize the set of independent and dependent features from the sets of datasets for the Logistic Regression Model.
#Tasks to be performed:
#  1. Load the city_temperature dataset .

#a. Find out the independent and dependent features from the data frame for model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

#independent features:
#1:Avg Temperature,

#Dependent features:
# 1:Region,2:Country,3:City,4:Month ,5:Day,6:Year

#2. Load the Customer_Churn dataset.
#a. Find out the independent and dependent features from the data frame for model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv")->customer_churn
View(customer_churn)

#independent features:
#1:Churn,

#Dependent features:

#1:tenure 2:StreamingTV 3:MonthlyCharges 4:TotalCharges

#3. Load the Pharmacovigilance_audit_Data dataset.
#a. Find out the independent and dependent features from the data frame for the model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit
View(Pharmacovigilance_audit)

#independent features:
#1:DRUGID,

#Dependent features:
#1:Gender 2:Age 3:PatientID
