#Module 5: Assignment 3 - Multiple Linear Regression

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the multiple linear regression
#models.

#Tasks to be performed:
#1. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the city_temperature data frame.

#a. For this model, take Country, Region, City, and AvgTemperature as the
#independent variable and Month as the dependent variable.

library(caTools)
library(ggplot2)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)

sum(is.na(city_temperature$Country))
sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$City))
sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Month))

cov(city_temperature$Month,city_temperature$AvgTemperature)

cor(city_temperature$Month,city_temperature$AvgTemperature)

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test
nrow(train)
nrow(test)

colnames(city_temperature)

lm(Month~Country+Region+City+AvgTemperature,data = train)->model1


#2. After splitting the data frame into train and test sets, build a 
#simple linear model on top of the train set for the Placement_Data_Full_Class data frame.

#a. For this model, take degree_p, mba_p, and status as the independent variable
#and etest_p as dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

summary(Placement_Data$etest_p)
summary(Placement_Data$degree_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$degree_p))
sum(is.na(Placement_Data$mba_p))
sum(is.na(Placement_Data$status))

cov(Placement_Data$etest_p,Placement_Data$degree_p)
cov(Placement_Data$etest_p,Placement_Data$mba_p)

cor(Placement_Data$etest_p,Placement_Data$degree_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test2)
colnames(Placement_Data)

lm(etest_p~degree_p+mba_p+status,data = train1)->model2
summary(model2)

#3. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the Pharmacovigilance_audit_Data data frame.

#a. For this model, take Issues, DrugId, and Gender as independent variable and
#Age as dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

summary(Pharmacovigilance$Age)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$Issues))
sum(is.na(Pharmacovigilance$DrugID))
sum(is.na(Pharmacovigilance$Gender))

colnames(Pharmacovigilance)

sample.split(Pharmacovigilance$Age,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2
View(train2)
nrow(train2)
nrow(test2)
lm(Age~Issues+DrugID+Gender,data = train2)->model3
summary(model3)
