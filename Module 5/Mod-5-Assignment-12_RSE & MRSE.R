# Module 5: Assignment 12 - RSE & MRSE

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#train and test sets, now the corporation wants you to analyze the multiple linear regression
# model.

#Tasks to be performed:

#1. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the city_temperature data frame.

#a. For this model, take Country, Region, City, and AvgTemperature as the
# independent variable and Month as the dependent variable.

# b. Check the Residual Standard Error and Multiple R-Squared Error.

library(caTools)

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)

str(city_temperature)

summary(city_temperature$Country)
summary(city_temperature$Region)
summary(city_temperature$City)
summary(city_temperature$AvgTemperature)
summary(city_temperature$Month)

cor(city_temperature$Month,city_temperature$AvgTemperature)
cov(city_temperature$Month,city_temperature$AvgTemperature)

sum(is.na(city_temperature$Country))
sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$City))
sum(is.na(city_temperature$AvgTemperature))
sum(is.na(city_temperature$Month))

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)
colnames(city_temperature)

lm(Month~Country+Region+City+AvgTemperature,data = train)->model1

model1$coefficients
model1$residuals

predict(model1,newdata = test)->predicated_values
cbind(Actual=test$Month,Predicted=predicated_values)->result
View(result)

as.data.frame(result)->result

#RSE
result$Actual - result$Predicted->error

cbind(result,error)->result
View(result)

#RMSE

sqrt(mean((result$error)^2))->MRSE

#2. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the Placement_Data_Full_Class data frame.

#a. For this model, take degree_p, mba_p, and status as the independent variable
#and etest_p as dependent variable.

# b. Check the Residual Standard Error and Multiple R-Squared Error.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data
View(Placement_Data)

str(Placement_Data)

summary(Placement_Data$degree_p)
summary(Placement_Data$mba_p)
summary(Placement_Data$status)
summary(Placement_Data$etest_p)

sum(is.na(Placement_Data$degree_p))
sum(is.na(Placement_Data$mba_p))
sum(is.na(Placement_Data$status))
sum(is.na(Placement_Data$etest_p))


cor(Placement_Data$etest_p,Placement_Data$degree_p)
cor(Placement_Data$etest_p,Placement_Data$mba_p)

cov(Placement_Data$etest_p,Placement_Data$degree_p)
cov(Placement_Data$etest_p,Placement_Data$mba_p)

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test1)

colnames(Placement_Data)

lm(etest_p~degree_p+mba_p+status,data = train1)->model2
model2$coefficients

predict(model2,newdata = test1)->predicted_values1
cbind(Actual=test1$etest_p,Predicted=predicted_values1)->result1
View(result1)
as.data.frame(result1)->result1

#RSE

result1$Actual - result1$Predicted->error1
cbind(result1,error1)->result1
View(result1)

#RMSE

sqrt(mean((result1$error1)^2))->MRSE1
MRSE1


#3. After splitting the data frame into train and test sets, build a simple linear model on
#top of the train set for the Pharmacovigilance_audit_Data data frame.

#a. For this model, take Issues, DrugId, and Gender as independent variable and
# Age as dependent variable.
#b. Check the Residual Standard Error and Multiple R-Squared Error.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance
View(Pharmacovigilance)

str(Pharmacovigilance)

summary(Pharmacovigilance$Issues)
summary(Pharmacovigilance$DrugID)
summary(Pharmacovigilance$Gender)
summary(Pharmacovigilance$Age)

sum(is.na(Pharmacovigilance$Issues))
sum(is.na(Pharmacovigilance$DrugID))
sum(is.na(Pharmacovigilance$Gender))
sum(is.na(Pharmacovigilance$Age))

sample.split(Pharmacovigilance$Age,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance,split_tag3==T)->train2
subset(Pharmacovigilance,split_tag3==F)->test2

nrow(train2)  
nrow(test2)

colnames(Pharmacovigilance)

lm(Age~Issues+DrugID+Gender,data = train2)->model3
model3$coefficients

predict(model3,newdata = test2)->predicted_values2

cbind(Actual=test2$Age,Predicted=predicated_values2)->result3
View(result3)
as.data.frame(result3)->result3

#RSE
result3$Actual - result3$Predicted->error2

cbind(result3,error2)->result3
View(result3)

#RMSE

sqrt(mean((result3$error2)^2))->MRSE2
MRSE2
