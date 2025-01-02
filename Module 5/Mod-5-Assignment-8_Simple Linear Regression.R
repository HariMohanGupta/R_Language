#Module 5: Assignment 8 - Simple Linear Regression

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to train the simple linear regression
#model.

#Tasks to be performed:

#1. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the city_temperature data frame.

#a. For this model, take AvgTemperature as the independent variable and Month
#as the dependent variable.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

str(city_temperature)

summary(city_temperature$AvgTemperature)
summary(city_temperature$Month)

cov(city_temperature$AvgTemperature,city_temperature$Month)
cor(city_temperature$AvgTemperature,city_temperature$Month)

sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Month))

sample.split(city_temperature,SplitRatio = 0.80)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)
colnames(city_temperature)

lm(Month~AvgTemperature,data = train)->model1
summary(model1)

predict(model1,newdata = test)->predicated_values

cbind(Actual=test$Month,Predicted=predicated_values)->result

as.data.frame(result)->result

result$Actual - result$Predicted->error

cbind(result,error)->result
View(result)

library(dplyr)

mutate(result,Ape = (abs(error)/abs(Actual)))->result
View(result)
mean(result$Ape)

mean((abs(result$error)/abs(result$Actual))*100)

sqrt(mean((result$error)^2))->rmse1
rmse1

library(ggplot2)

ggplot(city_temperature,aes(x=AvgTemperature,y=month))+geom_point()
ggplot(city_temperature,aes(x=AvgTemperature,y=month))+geom_point()+geom_smooth(method = "lm")



ggplot(data = result,aes(x=Predicted,y=error))+geom_point()


#22. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the Placement_Data_Full_Class data frame.

#a. For this model, take mba_p as the independent variable and etest_p as
#dependent variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)

sd(Placement_Data$mba_p)
sd(Placement_Data$etest_p)

summary(Placement_Data$mba_p)
summary(Placement_Data$etest_p)

cov(Placement_Data$etest_p, Placement_Data$mba_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$mba_p))

sample.split(Placement_Data,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test2)


colnames(Placement_Data)

lm(etest_p~mba_p,data = train1)->model2
summary(model2)

predict(model2,newdata = test1)->predicted_values1

cbind(Actual=test2$etest_p,Predicted=predicated_values1)->result1

as.data.frame(result1)->result1

View(result1)

result1$Actual - result1$Predicted->error1

cbind(result1,error1)->result1
View(result1)

#MAPE

mutate(result1,Ape=(abs(error1)/(Actual)))->result1
View(result1)

mean(result1$Ape)

mean((abs(result1$error1)/abs(result1$Actual))*100)

sqrt(mean((result1$error1)^2))->rmse2

ggplot(Placement_Data,aes(x=mba_p,y=etest_p))+geom_point()
ggplot(Placement_Data,aes(x=mba_p,y=etest_p))+geom_point()+geom_smooth(method = "lm")


#regration Line

ggplot(result1,aes(x=Predicted,y=error1))+geom_point()

#3. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the Pharmacovigilance_audit_Data data frame.

#a. For this model, take DrugId as independent variable and Age as dependent
#variable.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)

summary(Pharmacovigilance$Age)
summary(Pharmacovigilance$DrugID)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$DrugID))

sample.split(Pharmacovigilance,SplitRatio = 0.80)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~DrugID,data = train2)->model3
summary(model2)

predict(model3,newdata = test2)->predicted_values2

cbind(Actual=test2$Age,Predicted=predicated_values2)->result2

as.data.frame(result2)->result2
View(result2)

result2$Actual - result2$Predicted->error2

cbind(result2,error2)->result2
View(result2)

#MAPE

mutate(result2,Ape=(abs(error2)/abs(Actual)))->result2
mean(result2$Ape)
View(result2)

mean((abs(result2$error2)/abs(result2$Actual))*100)

#RMSE

sqrt(mean((result2$error2)^2))->rmse3
rmse3

