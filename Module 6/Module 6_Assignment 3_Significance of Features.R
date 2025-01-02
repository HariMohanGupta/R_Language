###Module 6: Assignment 3 - Significance of Features
#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the multiple logistic regression
#model.

#Tasks to be performed:
#1. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the city_temperature data frame.

#a. For this model, take AvgTemperature, Day, Month, and Year as the independent variable and 
# Region as the dependent variable.
#b. Check the significance of the features that you have selected for the model.

library(caTools)
read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)
str(city_temperature)
summary(city_temperature)

sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Day))
sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$Year))

city_temperature$Region<- (city_temperature$Region == "Europe")*1
View(city_temperature)
table(city_temperature$Region)
head(city_temperature,100)
tail(city_temperature,100)

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag ==T)->train
subset(city_temperature,split_tag ==F)->test

nrow(train)
nrow(test)

colnames(city_temperature)

glm(Region~AvgTemperature+Day+Month+Year,data = train,family = "binomial")->log_mod1
summary(log_mod1)

# 2. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Customer_Churn data frame.
#a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
#as the independent variable and Churn as dependent variable.
#b. Check the significance of the features that you have selected for the model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

str(customer_churn)
sum(is.na(customer_churn$tenure))
sum(is.na(customer_churn$StreamingTV))
sum(is.na(customer_churn$MonthlyCharges))
sum(is.na(customer_churn$TotalCharges))
sum(is.na(customer_churn$Churn))

customer_churn$Churn<- (customer_churn$Churn == "Yes")*1
View(customer_churn)

table(customer_churn$Churn)
head(customer_churn$Churn,100)
tail(customer_churn$Churn,100)

sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag2
subset(customer_churn,split_tag2==T)->train1
subset(customer_churn,split_tag2==F)->test2

nrow(train1)
nrow(test2)

colnames(customer_churn)

glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges,data = train1,family = "binomial")->log_mod2
summary(log_mod2)

#3. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Pharmacovigilance_audit_Data data frame.

#a. For this model, take Gender, Age, and Patient_Id as independent variable and
#DrugId as dependent variable.
#b. Check the significance of the features that you have selected for the model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit
View(Pharmacovigilance_audit)
str(Pharmacovigilance_audit)

sum(is.na(Pharmacovigilance_audit$Gender))
sum(is.na(Pharmacovigilance_audit$Age))
sum(is.na(Pharmacovigilance_audit$PatientID))
sum(is.na(Pharmacovigilance_audit$DrugID))

table(Pharmacovigilance_audit$DrugID) 

Pharmacovigilance_audit$DrugID<- (Pharmacovigilance_audit$DrugID =="DRUG1")*1
View(Pharmacovigilance_audit)

table(Pharmacovigilance_audit$DrugID)
head(Pharmacovigilance_audit)
tail(Pharmacovigilance_audit)

sample.split(Pharmacovigilance_audit$DrugID,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance_audit,split_tag3==T)->train2
subset(Pharmacovigilance_audit,split_tag3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance_audit)

glm(DrugID~Gender+Age+PatientID,data = train2,family = "binomial")->log_mod3
summary(log_mod3)
