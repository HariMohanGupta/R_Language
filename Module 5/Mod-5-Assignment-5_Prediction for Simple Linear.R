#Module 5: Assignment 5 - Prediction for Simple Linear Model

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After training the simple linear
#model, now the corporation wants you to predict the values on top of the test set.

#Tasks to be performed:

#1 After building a simple linear model on top of the train set for the city_temperature
#data frame, now find the prediction values of the model1 on top of the test dataset.

# a a. Now combine the actual values and predicted values of the model and store
# that combined data in a new data frame named 'Result1'.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)

sd(city_temperature$Month)
sd(city_temperature$AvgTemperature)

cov(city_temperature$Month,city_temperature$AvgTemperature)
cor(city_temperature$Month,city_temperature$AvgTemperature)

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)
colnames(city_temperature)

lm(Month~AvgTemperature,data = train)->model1
predict(model1,newdata = test)->predicated_values

cbind(Actual=test$Month,predicted=predicated_values)->result1

View(result1)
class(result1)
as.data.frame(result1)->result1
class(result1)
result1$Actual - result1$predicted->error
cbind(result1,error)->result1
#b. Find out the errors in the predicted values.
View(result1)
summary(model1)
model1$coefficients

#2After building a simple linear model on top of the train set for the
#Placement_Data_Full_Class data frame, now find the prediction values of the model1
#on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'Result2'.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

summary(Placement_Data$etest_p)
summary(Placement_Data$mba_p)

sd(Placement_Data$mba_p)
sd(Placement_Data$degree_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$mba_p))

cov(Placement_Data$etest_p,Placement_Data$mba_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)
cor(Placement_Data$etest_p,Placement_Data$degree_p)

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test1)
lm(etest_p~degree_p,data = train1)->model2
predict(model2,newdata = test1)->predicated_values1

summary(model2)
cbind(Actual=test1$etest_p,predicted=predicated_values1)->result2
View(result2)
as.data.frame(result2)->result2
class(result2)

result2$Actual - result2$predicted->error1

#b. Find out the errors in the predicted values.
cbind(result2,error1)->result2
View(result2)

#After building a simple linear model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#model1 on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'Result3'.

#b. Find out the errors in the predicted values.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

summary(Pharmacovigilance$Age)
summary(Pharmacovigilance$PatientID)

cor(Pharmacovigilance$Age,Pharmacovigilance$PatientID)
cov(Pharmacovigilance$Age,Pharmacovigilance$PatientID)

sd(Pharmacovigilance$Age)
sd(Pharmacovigilance$PatientID)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$PatientID))

sample.split(Pharmacovigilance$Age,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

lm(Age~PatientID,data = train2)->model3
predict(model3,newdata = test2)->predicated_values2

summary(model3)
cbind(Actual=test2$Age,predicted=predicated_values2)->result3
View(result3)

as.data.frame(result3)->result3

result3$Actual - result3$predicted->error2

cbind(result3,error2)->result3
View(result3)
