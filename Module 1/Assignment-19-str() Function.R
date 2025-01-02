# Module 1: Assignment 19 - str() Function

#Problem Statement:
#  Use str() function to know about the different data types assigned to the columns of the dataset.
#Tasks to be performed:

#1. Find the structure of customer churn dataset using str() function and perform the
#following operations:
#  a. Convert the data type of internet service column from vector to character.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

str(customer_churn)

class(customer_churn$InternetService)

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\customer_churn.csv",stringsAsFactors = F)->customer_churn
View(customer_churn)

str(customer_churn)

class(customer_churn$InternetService)

#b. Convert the data type of partner column from vector to character.

class(customer_churn$Partner)

#c. Convert the data type of total charges column from num to int.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\customer_churn.csv")->customer_churn

str(customer_churn)
View(customer_churn)

class(as.integer(customer_churn$TotalCharges))

#2. Find the structure of the placement data.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data

str(Placement_Data)

#3. Find the structure of the pharmacovigilance data.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit_Data

str(Pharmacovigilance_audit_Data)

#4. Find the structure of city temperature dataset.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\city_temperature.csv",stringsAsFactors = T)->city_temperature


str(city_temperature)


