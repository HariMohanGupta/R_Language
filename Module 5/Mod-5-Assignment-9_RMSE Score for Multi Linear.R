#Module 5: Assignment 9 - RMSE Score for Multi Linear Model

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After prediction of the multi
#linear model, now the corporation wants you to find out the accuracy of the model.

#Tasks to be performed:
#1. After building the multi linear model on top of the train set for the city_temperature
#data frame, and finding the prediction values of the multimodel1 on top of the test
#dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result1 data frame.

#b. With the help of the error, find the RMSE value of that model.

library(caTools)
read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)
summary(city_temperature$Country)
summary(city_temperature$City)
summary(city_temperature$Region)

cov(city_temperature$Month,city_temperature$AvgTemperature)

cor(city_temperature$Month,city_temperature$AvgTemperature)

sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$Country))

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)

colnames(city_temperature)

lm(Month~Country+Region+City+AvgTemperature,data = train)->multimodel1
summary(multimodel1)

predict(multimodel1,newdata = test)->predicted_values

cbind(Actual=city_temperature$Month,Predicted=predicated_values)->result1

as.data.frame(result1)->result1

View(result1)

result1$Actual - result1$Predicted->error

cbind(result1,error)->result1

View(result1)

#MAPE

library(dplyr)

mutate(result1,Ape=(abs(error)/abs(Actual)))->result1
mean(result1$Ape)
View(result1)
mean((abs(result1$error)/abs(result1$Actual))*100)

# RMASE

sqrt(mean((result1$error)^2))->rmse1
rmse1


#2. After building the multi linear model on top of the train set for the
#Placement_Data_Full_Class data frame, and finding the prediction values of the
#multimodel2 on top of the test dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result2 data frame.

#b. With the help of the error, find the RMSE value of that model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)
summary(Placement_Data$etest_p)
summary(Placement_Data$degree_p)
summary(Placement_Data$mba_p)

cor(Placement_Data$etest_p,Placement_Data$degree_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)

cov(Placement_Data$etest_p,Placement_Data$degree_p)
cov(Placement_Data$etest_p,Placement_Data$mba_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$mba_p))
sum(is.na(Placement_Data$degree_p))

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->multimodel2
subset(Placement_Data,multimodel2==T)->train1
subset(Placement_Data,multimodel2==F)->test1

nrow(train1)
nrow(test1)

colnames(Placement_Data)

lm(etest_p~degree_p+mba_p+status,data = train1)->result2
summary(result2)

predict(result2$,newdata = test1)->predicated_values1

cbind(Actual=test1$etest_p,Predicted=predicated_values1)->result2

as.data.frame(result2)->result2

View(result2)

result2$Actual - result2$Predicted->error1

cbind(result2,error1)->result2
View(result2)

#MAPE
mutate(result2,Ape=(abs(error1)/abs(Actual)))->result2
View(result2)
mean(result2$Ape)

mean((abs(result2$error1)/(result2$Actual))*100)

#RMASE

sqrt(mean((result2$error1)^2))->rmse2
rmse2

#3. After building the multi linear model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#multimodel3 on top of the test dataset.

#a. Now combine the error that you have calculated while predicting the values to
#the Result3 data frame.

#b. With the help of the error, find the RMSE value of that model.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)
summary(Pharmacovigilance$Age)
summary(Pharmacovigilance$DrugID)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$DrugID))
sum(is.na(Pharmacovigilance$Issues))
sum(is.na(Pharmacovigilance$Gender))

sample.split(Pharmacovigilance$Age,SplitRatio = 0.75)->multimodel3
subset(Pharmacovigilance,multimodel3==T)->train2
subset(Pharmacovigilance,multimodel3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~Issues+DrugID+Gender,data = train2)->result3
summary(result3)

predict(result3,newdata = test2)->predicted_values2

cbind(Actual=test2$Age,Predicted=predicated_values2)->result3
as.data.frame(result3)->result3
View(result3)

result3$Actual - result3$Predicted->error2

cbind(result3,error2)->result3
View(result3)

#MAPE

mutate(result3,Ape=(abs(error2)/abs(Actual)))->result3
View(result3)

mean(result3$Ape)

mean((abs(result3$error2)/abs(result3$Actual))*100)

#RMASE

sqrt(mean((result3$error2)^2))->rmse3
rmse3
