#Module 5: Assignment 6 - Prediction for Multi Linear Models

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After training the multiple
#linear model, now the corporation wants you to predict the values on top of the test set.

#Tasks to be performed:

#1. After building a multi linear model on top of the train set for the city_temperature
#data frame, now find the prediction values of the model1 on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult1'.

#b. Find out the errors in the predicted values.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)

sd(city_temperature$Month)
sd(city_temperature$AvgTemperature)

cov(city_temperature$Month,city_temperature$AvgTemperature)
cor(city_temperature$Month,city_temperature$AvgTemperature)

sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Country))
sum(is.na(city_temperature$City))

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)
colnames(city_temperature)

lm(Month~Country+Region+City+AvgTemperature,data = train)->model1
predict(model1,newdata = test)->predicated_values

summary(model1)
model1$coefficients

cbind(Actual=test$Month,Predicted=predicted_values)->MultiResult1
View(MultiResult1)
as.data.frame(MultiResult1)->MultiResult1

MultiResult1$Actual - MultiResult1$Predicted->error

cbind(MultiResult1,error)->MultiResult1
View(MultiResult1)

#2. After building a multi linear model on top of the train set for the
#Placement_Data_Full_Class data frame, now find the prediction values of the model2
#on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult2'.

#b. Find out the errors in the predicted values.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)
summary(Placement_Data$etest_p)
summary(Placement_Data$degree_p)
summary(Placement_Data$mba_p)

sd(Placement_Data$etest_p)
sd(Placement_Data$degree_p)
sd(Placement_Data$mba_p)

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
nrow(test1)
colnames(Placement_Data)

lm(etest_p~degree_p+mba_p+status,data = train1)->model2

predict(model2,newdata = test1)->predicated_values1

cbind(Actual=test1$etest_p,Predicted=predicated_values1)->MultiResult2
as.data.frame(MultiResult2)->MultiResult2
class(MultiResult2)
View(MultiResult2)

MultiResult2$Actual - MultiResult2$Predicted->error1

cbind(MultiResult2,error1)->MultiResult2
View(MultiResult2)

#3. After building a multi linear model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#model3 on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult3'.

#b. Find out the errors in the predicted values.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)

summary(Pharmacovigilance$Age)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$Issues))
sum(is.na(Pharmacovigilance$DrugID))
sum(is.na(Pharmacovigilance$Gender))

sample.split(Pharmacovigilance$Age,SplitRatio = 0.80)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~Issues+DrugID+DrugID,data = train2)->model3
summary(model3)

predict(model3,newdata = test2)->predicated_values2

cbind(Actual=test2$Age,Predicted=predicated_values2)->MultiResult3

as.data.frame(MultiResult3)->MultiResult3
class(MultiResult3)

MultiResult3$Actual - MultiResult3$Predicted->error2

cbind(MultiResult3,error2)->MultiResult3
View(MultiResult3)
s