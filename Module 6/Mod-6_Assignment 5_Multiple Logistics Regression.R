#Module 6: Assignment 5 - Multiple Logistics Regression

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the multiple logistic regression
#model.

#Tasks to be performed:

#  1. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the city_temperature data frame.

#a. For this model, take AvgTemperature, Day, Month, and Year as the
#independent variable and Region as the dependent variable.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature)

sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Day))
sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$Year))
sum(is.na(city_temperature$Region))

table(city_temperature$Region)

city_temperature$Region<- (city_temperature$Region == "Africa")*1
View(city_temperature)

table(city_temperature$Region)
head(city_temperature,50)
tail(city_temperature,50)

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)

colnames(city_temperature)

glm(Region~AvgTemperature+Day+Month+Year,data = train,family = "binomial")->log_mod1
summary(log_mod1)

#2. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Customer_Churn data frame.
#a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
#as the independent variable and Churn as dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

str(customer_churn)
summary(customer_churn)

sum(is.na(customer_churn$tenure))
sum(is.na(customer_churn$StreamingTV))
sum(is.na(customer_churn$MonthlyCharges))
sum(is.na(customer_churn$TotalCharges))
sum(is.na(customer_churn$Churn))

table(customer_churn$Churn)

customer_churn$Churn<- (customer_churn$Churn == "Yes")*1
View(customer_churn)

head(customer_churn,25)
tail(customer_churn,25)

sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag2
subset(customer_churn,split_tag2==T)->train1
subset(customer_churn,split_tag2==F)->test1

nrow(train1)
nrow(test1)

colnames(customer_churn)

glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges,data = train1,family = "binomial")->log_mod2
summary(log_mod2)


#3. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Pharmacovigilance_audit_Data data frame.
#a. For this model, take Gender, Age, and Patient_Id as independent variable and
#DrugId as dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit
View(Pharmacovigilance_audit)

str(Pharmacovigilance_audit)
summary(Pharmacovigilance_audit)

sum(is.na(Pharmacovigilance_audit$Gender))
sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance_audit$PatientID))
sum(is.na(Pharmacovigilance_audit$DrugID))

table(Pharmacovigilance_audit$DrugID)

Pharmacovigilance_audit$DrugID<- (Pharmacovigilance_audit$DrugID == "DRUG1")*1
View(Pharmacovigilance_audit)

head(Pharmacovigilance_audit,30)
tail(Pharmacovigilance_audit,30)

sample.split(Pharmacovigilance_audit$DrugID,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance_audit,split_tag3==F)->train2
subset(Pharmacovigilance_audit,split_tag3==T)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance_audit)

glm(DrugID~Gender+Age+PatientID,data = train2,family = "binomial")->log_mod3
summary(log_mod3)
