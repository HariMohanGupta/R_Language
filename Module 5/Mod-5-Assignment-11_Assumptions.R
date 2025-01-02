# Module 5: Assignment 11 - Assumptions

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After checking the model,
#now analyze the assumptions of the model.

#Tasks to be performed:

#1. Analyze the features from the temperature dataset.

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
predict(model1,newdata = test)->predicated_values

# Assumptions 2 Residual standard error: average residual in units of dependent variable
# Residual Vs fit graph error is y axis and Predicted value is x axis.

cbind(Actual=test$Month,Predicted=predicated_values)->result
as.data.frame(result)->result
View(result)

result$Actual - result$Predicted->error
cbind(result,error)->result
View(result)


library(ggplot2)
ggplot(data = result,aes(x=Predicted,y=error))+geom_point()


library(dplyr)

#MAPE
mutate(result,Ape=(abs(error)/abs(Actual)))->result
View(result)
mean(result$Ape)
mean((abs(result$error)/abs(result$Actual))*100)

#RMSE

sqrt(mean((result$error)^2))

#1Assumptions Lineraity


library(ggplot2)

ggplot(data = city_temperature,aes(x=AvgTemperature,y=Month))+geom_point()
ggplot(data = city_temperature,aes(x=AvgTemperature,y=Month))+geom_point()+geom_smooth(method = "lm")


#Assumptions 3 Normality of Errors QQNORM & QQLINE function in R

qqnorm(result$error)
qqline(result$error)


#2. Analyze the features from the Placement data dataset.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

str(Placement_Data)

summary(Placement_Data$etest_p)
summary(Placement_Data$mba_p)

sum(is.na(Placement_Data$etest_p))
sum(is.na(Placement_Data$mba_p))

# In First Assumptions no Lineraity
colnames(Placement_Data)
ggplot(data = Placement_Data,aes(x=mba_p,y=etest_p))+geom_point()
ggplot(data = Placement_Data,aes(x=mba_p,y=etest_p))+geom_point()+geom_smooth(method = "lm")

ggplot(data = Placement_Data,aes(x=degree_p,y=etest_p))+geom_point()
ggplot(data = Placement_Data,aes(x=degree_p,y=etest_p))+geom_point()+geom_smooth(method = "lm")

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test1)
colnames(Placement_Data)

lm(etest_p~mba_p,data = train1)->model2
summary(model2)

model2$coefficients
model2$residuals

predict(model2,newdata = test1)->predicated_values1

cbind(Actual=test1$etest_p,Predicted=predicted_values1)->result1
as.data.frame(result1)->result1
View(result1)

result1$Actual - result1$Predicted->error1

cbind(result1,error1)->result1
View(result1)

ggplot(data = result1,aes(x=error1,y=Predicted))+geom_point()

#Assumptions 3 Normality of Errors QQNORM & QQLINE function in R

qqnorm(result1$error)
qqline(result1$error)
