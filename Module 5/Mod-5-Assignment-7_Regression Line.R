#Module 5: Assignment 7 - Regression Line

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After finding the RMSE value,
#now the corporation has asked you to analyze your model with the help of regression line.

#1. After building the simple linear model on top of the train set for the city_temperature
#data frame, now do the following tasks:
#  a. Create a scatter plot with the help of ggplot2 package and plot Month on the yaxis
#and AvgTemperature on the x-axis of the graph.

library(caTools)
library(ggplot2)
read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

str(city_temperature)

summary(city_temperature$Month)
summary(city_temperature$AvgTemperature)

cov(city_temperature$Month,city_temperature$AvgTemperature)
cor(city_temperature$Month,city_temperature$AvgTemperature)

sd(city_temperature$Month)
sd(city_temperature$AvgTemperature)

sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$AvgTemperature))

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test
nrow(train)
nrow(test)

lm(Month~AvgTemperature,data = train)->model1
model1$coefficients
summary(model1)
predict(model1,newdata = test)->predicated_values

cbind(Actual=test$Month,Predicted=predicated_values)->result

as.data.frame(result)->result

result$Actual - result$Predicted->error

cbind(result,error)->result
View(result)
head(result)

library(dplyr)

# MAPE formula

mutate(result,ape = (abs(error)/abs(Actual)))->result 
View(result)
mean(result$ape)
mean((abs(result$error)/abs(result$Actual))*100)

head(result)                   
sqrt(mean((result$error)^2))->rmse1
rmse1

#Assumptions

ggplot(city_temperature,aes(x=AvgTemperature,y=Month))+geom_point()
ggplot(city_temperature,aes(x=AvgTemperature,y=Month))+geom_point()+geom_smooth(method = "lm")


#2. After building the simple linear model on top of the train set for the
#Placement_Data_Full_Class data frame, now perform the following tasks:
#  a. Create a scatter plot with the help of ggplot2 package and plot etest_p on the yaxis
#and status on the x-axis of the graph.

#b. Now plot the regression line on the scatter plot.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)

summary(Placement_Data$etest_p)
summary(Placement_Data$status)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$status))

sd(Placement_Data$etest_p)

IQR(Placement_Data$etest_p)
var(Placement_Data$etest_p)

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test2
nrow(train2)
nrow(test2)
colnames(Placement_Data)

lm(etest_p~status,data = train1)->model2

summary(model2)

predict(model2,newdata = test2)->predicted_values1

cbind(Actual=Placement_Data$etest_p,Predicted=predicated_values1)->result1

class(result1)
as.data.frame(result1)->result1

result1$Actual - result1$Predicted->error1

cbind(result1,error1)->result1

View(result1)

library(dplyr)

# MAPE formula

mutate(result1,Ape = (abs(error1)/abs(Actual)))->result1
View(result1)

mean(result1$Ape)
mean((abs(result1$error1)/abs(result1$Actual))*100)
head(result1)

#RMSE
sqrt(mean((result1$error1)^2))->rmse2
rmse2                

#Assumptions

ggplot(Placement_Data,aes(x=status,y=etest_p))+geom_point()
ggplot(Placement_Data,aes(x=status,y=etest_p))+geom_point()+geom_smooth(method = "lm")

#3. After building the simple linear model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now perform the following tasks:

#  a. Create a scatter plot with the help of ggplot2 package and plot Age on the yaxis
#and DrugID on the x-axis of the graph.

#b. Now plot the regression line on the scatter plot.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)

summary(Pharmacovigilance$Age)
summary(Pharmacovigilance$DrugID)

sd(Pharmacovigilance$Age)

sum(is.na(Pharmacovigilance$Age))
sum(is.na(Pharmacovigilance$DrugID))

sample.split(Pharmacovigilance,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~DrugID,data = train2)->model3
summary(model3)
predict(model3,newdata = test2)->predicted_values2

cbind(Actual=test2$Age,Predicted=predicted_values2)->result2

as.data.frame(result2)->result2
View(result2)

result2$Actual - result2$Predicted->error2

cbind(result2,error2)->result2

#MAPE

mutate(result2,Ape= (abs(result2$error2)/abs(result2$Actual)))->result2
View(result2)

mean(result2$Ape)

mean((abs(result2$error2)/abs(result2$Actual))*100)
head(result2)

#RMSE

sqrt(mean((result2$error2)^2))


#Assumptions

ggplot(Pharmacovigilance,aes(x=DrugID,y=Age))+geom_point()
ggplot(Pharmacovigilance,aes(x=DrugID,y=Age))+geom_point()+geom_smooth(method = "lm")

