#Module 5: Assignment 10 - RMSE Score

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After prediction of 
#the simple linear model, now the corporation wants you to find out the accuracy of the model.

#Tasks to be performed:

#1. After building the simple linear model on top of the train set for the city_temperature
#data frame, and finding the prediction values of the model1 on top of the test dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result1 data frame.
#b. With the help of the error, find the RMSE value of that model.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)
str(city_temperature)

summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)

sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$AvgTemperature))

cov(city_temperature$Month,city_temperature$AvgTemperature)
cor(city_temperature$Month,city_temperature$AvgTemperature)

sd(city_temperature$Month)
sd(city_temperature$AvgTemperature)

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)

colnames(city_temperature)

lm(Month~AvgTemperature,data = train)->model1
summary(model1)

predict(model1,newdata = test)->predicted_values

cbind(Actual=test$Month,Predicted=predicated_values)->result1
as.data.frame(result1)->result1
View(result1)

result1$Actual - result1$Predicted->error

cbind(result1,error)->result1
View(result1)

#RMSE

sqrt(mean((result1$error)^2))->rmse1
rmse1

#2. After building the simple linear model on top of the train set for the
#Placement_Data_Full_Class data frame, and finding the prediction values of the
#model2 on top of the test dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result2 data frame.

#b. With the help of the error, find the RMSE value of that model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)
summary(Placement_Data$etest_p)
summary(Placement_Data$mba_p)

cov(Placement_Data$etest_p,Placement_Data$mba_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$mba_p))

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test1)

colnames(Placement_Data)

lm(etest_p~mba_p,data = train1)->model2
summary(model2)


predict(model2,newdata = test1)->predicted_values1
cbind(Actual=test1$etest_p,Predicted=predicated_values1)->result2

as.data.frame(result2)->result2
View(result2)

result2$Actual - result2$Predicted->error1

cbind(result2,error1)->result2
View(result2)

#MAPE

library(dplyr)

mutate(result2,Ape=(abs(error1)/abs(Actual)))->result2
View(result2)

mean(result2$Ape)

mean((abs(result2$error1)/abs(result2$Actual))*100)

#RMSE

sqrt(mean((result2$error1)^2))->rmse2
rmse2


#3. After building the simple linear model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#model3 on top of the test dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result3 data frame.

#b. With the help of the error, find the RMSE value of that model.


read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)

summary(Pharmacovigilance$Age)

sd(Pharmacovigilance$Age)
sum(is.na(Pharmacovigilance$Age))

sum(is.na(Pharmacovigilance$LocationID))

sample.split(Pharmacovigilance$Age,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~LocationID,data = train2)->model3
summary(model3)

predict(model3,newdata = test2)->predicted_values2
cbind(Actual=test2$Age,Predicted=predicated_values2)->result3

as.data.frame(result3)->result3
View(result3)

result3$Actual - result3$Predicted->error2
cbind(result3,error2)->result3
View(result3)

#MAPE

mutate(result3,Ape=(abs(error2)/abs(Actual)))->result3
mean(result3$Ape)

mean((abs(result3$error2)/(result3$Actual))*100)

#RMSE

sqrt(mean((result3$error2)^2))->rmse3

rmse3
