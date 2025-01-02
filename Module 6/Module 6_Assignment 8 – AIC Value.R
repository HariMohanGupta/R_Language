# Module 6: Assignment 8 - AIC Value

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the multiple logistic regression
#model.

#Tasks to be performed:

#1. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the city_temperature data frame.
#a. For this model, take AvgTemperature, Day, Month, and Year as the independent variable and Region as the dependent variable.
#b. Analyze the AIC value of the model.

library(caTools)
read.csv("E:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature)

sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Day))
sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$Year))
sum(is.na(city_temperature$Region))


table(city_temperature$Region)
city_temperature$Region<- (city_temperature$Region =="Europe")*1
View(city_temperature)


sample.split(city_temperature$Region,SplitRatio = 0.80)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test
nrow(train)
nrow(test)

colnames(city_temperature)

glm(Region~Day+Month+Year+AvgTemperature,data = train,family = "binomial")->model
summary(model)

#2. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Customer_Churn data frame.
#a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
#as the independent variable and Churn as dependent variable.
#b. Analyze the AIC value of the model.


read.csv("E:\\Hari -DS\\datasets_r_programming\\customer_churn.csv")->customer_churn
View(customer_churn)
str(customer_churn)
summary(customer_churn)

sum(is.na(customer_churn$tenure))
sum(is.na(customer_churn$StreamingTV))
sum(is.na(customer_churn$MonthlyCharges))
sum(is.na(customer_churn$TotalCharges))
sum(is.na(customer_churn$Churn))


table(customer_churn$Churn)

customer_churn$Churn<- (customer_churn$Churn =="Yes")*1
View(customer_churn)

sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag1
subset(customer_churn,split_tag1==T)->train1
subset(customer_churn,split_tag1==F)->test1

nrow(train1)
nrow(test1)

colnames(customer_churn)

glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges,data = train1,family = "binomial")->model2
summary(model2)



#3. After splitting the data frame into train and test sets, build a multiple logistic model
#on top of the train set for the Pharmacovigilance_audit_Data data frame.
#a. For this model, take Gender, Age, and Patient_Id as independent variable and
#DrugId as dependent variable.
#b. Analyze the AIC value of the model.


read.csv("E:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

str(Pharmacovigilance_audit_Data)
summary(Pharmacovigilance_audit_Data)


sum(is.na(Pharmacovigilance_audit_Data$Gender))
sum(is.na(Pharmacovigilance_audit_Data$Age))
sum(is.na(Pharmacovigilance_audit_Data$PatientID))
sum(is.na(Pharmacovigilance_audit_Data$DrugID))

table(Pharmacovigilance_audit_Data$DrugID)
Pharmacovigilance_audit_Data$DrugID<- (Pharmacovigilance_audit_Data$DrugID =="DRUG1")*1
View(Pharmacovigilance_audit_Data)


sample.split(Pharmacovigilance_audit_Data$DrugID,SplitRatio = 0.70)->split_tag2
subset(Pharmacovigilance_audit_Data,split_tag2==T)->train2
subset(Pharmacovigilance_audit_Data,split_tag2==F)->test2


nrow(train2)
nrow(test2)

colnames(Pharmacovigilance_audit_Data)

glm(DrugID~Gender+Age+PatientID,data = train2,family = "binomial")->model3
summary(model3)
