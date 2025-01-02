#Module 6: Assignment 1 - Splitting the Data Frame

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After finding out the Dependent and
#Independent Features of the data frames, now the corporation wants you to split the datasets into train
# and test sets so that you can feed those data to the logistic model.


#Tasks to be performed:

#1. From the city_temperature dataset, split the data frame into train and test sets.

# a. Split the dataset into 70:30 ratio by the dependent feature.

library(caTools)
library(ggplot2)
read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)
colnames(city_temperature)
str(city_temperature)

as.factor(city_temperature)
summary(city_temperature)

#Dependent Variable:Region
#Independent Variable: AvgTemperature, Day, Month, and Year 

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)


#2. From the Customer_Churn, split the data frame into train and test sets.
#a. Split the dataset into 80:20 ratio by the dependent feature.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)
str(customer_churn)

summary(customer_churn)

#Dependent Variable:Churn 
#Independent Variable: tenure,Streaming TV, Monthly Charges, and Total Charges

customer_churn$Churn <- (customer_churn$Churn == "Yes")*1

sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag2
subset(customer_churn,split_tag2==T)->train1
subset(customer_churn,split_tag2==F)->test1

nrow(train1)
nrow(test1)

#3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets.
#a. Split the dataset into 75:25 ratio by the dependent feature.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors=T)->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)
summary(Pharmacovigilance)


#Dependent Variable:DrugId
#Independent Variable:Gender,Age,Patient_Id

sample.split(Pharmacovigilance$DrugID,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)
nrow(test2)
