# Module 6: Assignment 2 - Simple Logistic Regression

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the simple logistic regression
#model.

#Tasks to be performed:

#1. After splitting the data frame into train and test sets, build a simple logistic model on
#top of the train set for the city_temperature data frame.

#a. For this model, take AvgTemperature as the independent variable and Region
#as the dependent variable.

library(caTools)
read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature)
sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$AvgTemperature))

#customer_churn$Churn <- (customer_churn$Churn == "Yes")*1
city_temperature$Region <- (city_temperature$Region == "Europe")*1
#city_temperature$Region <- (city_temperature$Region == "Asia")*1
View(city_temperature)
table(city_temperature$Region)
head(city_temperature,100)
tail(city_temperature,100)

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)

glm(Region~AvgTemperature,data = train,family = "binomial")->log_mod1
summary(log_mod1)

predict(log_mod1,data.frame(AvgTemperature=50),type = "response")

#Probability is 37%

predict(log_mod1,data.frame(AvgTemperature=70),type = "response")

#Probability is 33%

predict(log_mod1,data.frame(AvgTemperature=20:100),type = "response")

#Probability is decreasing 29%

#2. After splitting the data frame into train and test sets, build a simple logistic model on
#top of the train set for the Customer_Churn data frame.

#a. For this model, take Monthly Charges as the independent variable and Churn
#as dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)  

str(customer_churn)
summary(customer_churn)
sum(is.na(customer_churn$Dependents))
sum(is.na(customer_churn$MonthlyCharges))

customer_churn$Dependents<- (customer_churn$Dependents == "Yes")*1

View(customer_churn)

table(customer_churn$Dependents)

sample.split(customer_churn$Dependents,SplitRatio = 0.80)->split_tag2
subset(customer_churn,split_tag2==T)->train1
subset(customer_churn,split_tag2==F)->test2

nrow(train1)
nrow(test2)
colnames(customer_churn)
glm(Dependents~MonthlyCharges,data = train1,family = "binomial")->log_mod2
summary(log_mod2)

predict(log_mod2,data.frame(MonthlyCharges = 50),type = "response")
##Probability is 32%
predict(log_mod2,data.frame(MonthlyCharges = 70),type = "response")

#Probability is 28%
predict(log_mod2,data.frame(MonthlyCharges = 20:100),type = "response")

#Probability is 23% When increase the ratio the probility is decrease.

#3. After splitting the data frame into train and test sets, build a simple logistic model on
#top of the train set for the Pharmacovigilance_audit_Data data frame.

#a. For this model, take Age as independent variable and DrugId as dependent
#variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit
View(Pharmacovigilance_audit)

str(Pharmacovigilance_audit)
summary(Pharmacovigilance_audit)

sum(is.na(Pharmacovigilance_audit$Age))
sum(is.na(Pharmacovigilance_audit$DrugID))

Pharmacovigilance_audit$DrugID<- (Pharmacovigilance_audit$DrugID == "DRUG1")*1
View(Pharmacovigilance_audit)

table(Pharmacovigilance_audit$DrugID)

sample.split(Pharmacovigilance_audit$DrugID,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance_audit,split_tag3==T)->train2
subset(Pharmacovigilance_audit,split_tag3==F)->test2
nrow(train2)
nrow(test2)
colnames(Pharmacovigilance_audit)
glm(DrugID~Age,data = train2,family = "binomial")->log_mod3
summary(log_mod3)

predict(log_mod3,data.frame(Age = 50),type = "response")
##Probability is 55%
predict(log_mod3,data.frame(Age = 70),type = "response")
##Probability is 52%

predict(log_mod3,data.frame(Age = 20:100),type = "response")
##Probability is 46%

