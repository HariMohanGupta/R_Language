# Module 6: Assignment 7 - Confusion Matrix & Accuracy

#Problem Statement:
#You work in XYZ Corporation as a Machine Learning Engineer. After training the logistic
#model, and predicting the values on top of the test set, now find out the confusion matrix and
#accuracy score of the models.

#Tasks to be performed for Simple Logistic Regression:

#1. After building a simple logistic model on top of the train set for the city_temperature
#data frame, now find the prediction values of the model1 on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'Result1'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

library(caTools)


read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature)

sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$AvgTemperature))

table(city_temperature$Region)
city_temperature$Region<- (city_temperature$Region == "Europe")*1
View(city_temperature)

head(city_temperature,25)
tail(city_temperature,25)

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test

nrow(train)
nrow(test)

colnames(city_temperature)

glm(Region~AvgTemperature,data = train,family = "binomial")->model1
summary(model1)

predict(model1,newdata = test,type = "response")->predicated_values

range(predicated_values)

cbind(Actual=city_temperature$Region,Predicted=predicated_values)->result1
as.data.frame(result1)->result1

View(result1)

result1$Actual - result1$Predicted->error
View(error)
as.data.frame(error)->error
View(error)

cbind(result1,error)->result1
View(result1)


#Confusion Matrix

table(test$Region,predicated_values>0.50)

#calculate the accuracy of the model

(186909+4014)/(186909+4014+13067+110583)


#2. After building a simple logistic model on top of the train set for the Customer_Churn
# data frame, now find the prediction values of the model2 on top of the test dataset.

# a. Now combine the actual values and predicted values of the model and store
# that combined data in a new data frame named 'Result2'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\customer_churn.csv")->customer_churn
View(customer_churn)

str(customer_churn)
summary(customer_churn)

sum(is.na(customer_churn$Churn))
sum(is.na(customer_churn$MonthlyCharges))

table(customer_churn$Churn)
customer_churn$Churn<- (customer_churn$Churn == "Yes")*1
View(customer_churn)

head(customer_churn$Churn,25)
tail(customer_churn$Churn,25)

sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag1
subset(customer_churn,split_tag1==T)->train1
subset(customer_churn,split_tag1==F)->test1

nrow(train1)
nrow(test1)

colnames(customer_churn)

glm(Churn~MonthlyCharges,data = train1,family = "binomial")->model2
predict(model2,newdata = test1,type = "response")->predicated_values1
range(predicated_values1)

cbind(Actual=customer_churn$Churn,Predicted=predicated_values1)->result2
as.data.frame(result2)->result2
View(result2)

#Find out the errors in the predicted values.

result2$Actual - result2$Predicted->error1
as.data.frame(error1)->error1
View(error1)

cbind(result2,error1)->result2
View(result2)

#Confusion Matrix
table(test1$Churn,predicated_values1>0.30)

#calculate the accuracy of the model

(664+190)/(664+190+371+184)


#3. After building a simple logistic model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#model3 on top of the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'Result3'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit
View(Pharmacovigilance_audit)

str(Pharmacovigilance_audit)
summary(Pharmacovigilance_audit)

sum(is.na(Pharmacovigilance_audit$DrugID))
sum(is.na(Pharmacovigilance_audit$Age))

table(Pharmacovigilance_audit$DrugID)
Pharmacovigilance_audit$DrugID<- (Pharmacovigilance_audit$DrugID =="DRUG1")*1
View(Pharmacovigilance_audit)

sample.split(Pharmacovigilance_audit$DrugID,SplitRatio = 0.75)->split_tag2
subset(Pharmacovigilance_audit,split_tag2==T)->train2
subset(Pharmacovigilance_audit,split_tag2==F)->test2

nrow(train2)
nrow(test2)

colnames(Pharmacovigilance_audit)

glm(DrugID~Age,data = train2,family = "binomial")->model3
summary(model3)
predict(model3,newdata = test2,type = "response")->predicated_values2
range(predicated_values2)

cbind(Actual=Pharmacovigilance_audit$DrugID,Predicated=predicated_values2)->result3
as.data.frame(result3)->result3
View(result3)

#b. Find out the errors in the predicted values

result3$Actual - result3$Predicated->error2
as.data.frame(error2)->error2
View(error2)

cbind(result3,error2)->result3
View(result3)

#c. Now calculate the confusion matrix from the actual and the predicted values.

table(test2$DrugID,predicated_values2>0.60)

#calculate the accuracy of the model

(5+336)/(5+336+203+6)


#Tasks to be performed for Multiple Logistic Regression:

#1. After building a multiple logistic model on top of the train set for the
#city_temperature data frame, now find the prediction values of the model1 on top of
#the test dataset.

#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult1'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature
View(city_temperature)

str(city_temperature)
summary(city_temperature)

sum(is.na(city_temperature$Region))
sum(is.na(city_temperature$Year))
sum(is.na(city_temperature$Month))
sum(is.na(city_temperature$AvgTemperature))

table(city_temperature$Region)
city_temperature$Region<- (city_temperature$Region =="Europe")*1
View(city_temperature)

sample.split(city_temperature$Region,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==F)->train
subset(city_temperature,split_tag==T)->test

nrow(train)
nrow(test)

colnames(city_temperature)

glm(Region~AvgTemperature+Year+Month,data = train,family = "binomial")->multimodel1
summary(multimodel1)
predict(multimodel1,newdata = test,type = "response")->predicated_values
range(predicated_values)

cbind(Actual=city_temperature$Region,Predicated=predicated_values)->MultiResult1
as.data.frame(MultiResult1)->MultiResult1
View(MultiResult1)

#b. Find out the errors in the predicted values.
MultiResult1$Actual - MultiResult1$Predicated->error
as.data.frame(error)->error
View(error)

cbind(MultiResult1,error)->MultiResult1
View(MultiResult1)

#c. Now calculate the confusion matrix from the actual and the predicted values.

table(test$Region,predicated_values>0.40)

#calculate the accuracy of the model

(421351+38335)/(421351+38335+45258+229058)

#2. After building a multiple logistic model on top of the train set for the Customer_Churn
#   data frame, now find the prediction values of the model2 on top of the test dataset.
#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult2'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

read.csv("E:\\Hari -DS\\datasets_r_programming\\customer_churn.csv")->customer_churn
View(customer_churn)

str(customer_churn)
summary(customer_churn)

sum(is.na(customer_churn$Churn))
sum(is.na(customer_churn$tenure))
sum(is.na(customer_churn$MonthlyCharges))
sum(is.na(customer_churn$StreamingTV))
sum(is.na(customer_churn$TotalCharges))

table(customer_churn$Churn)
customer_churn$Churn<- (customer_churn$Churn =="Yes")*1
View(customer_churn)


sample.split(customer_churn$Churn,SplitRatio = 0.80)->split_tag1
subset(customer_churn,split_tag1==T)->train1
subset(customer_churn,split_tag1==F)->test1

nrow(train1)
nrow(test1)

colnames(customer_churn)
glm(Churn~tenure+MonthlyCharges+StreamingTV+TotalCharges,data = train1,family = "binomial")->model2
summary(model2)

predict(model2,newdata = test1,type = "response")->predicated_values1
range(predicated_values1)


cbind(Actual=customer_churn$Churn,Predicated=predicated_values1)->MultiResult2
as.data.frame(MultiResult2)->MultiResult2
View(MultiResult2)

#b. Find out the errors in the predicted values.

MultiResult2$Actual - MultiResult2$Predicated->error1
as.data.frame(error1)->error1
View(error1)

cbind(MultiResult2,error1)->MultiResult2
View(MultiResult2)

#c. Now calculate the confusion matrix from the actual and the predicted values.

table(test1$Churn,predicated_values1>0.60)

#calculate the accuracy of the model

(1001+104)/(1001+104+34+270)


#3. After building a multiple logistic model on top of the train set for the
#Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#model3 on top of the test dataset.
#a. Now combine the actual values and predicted values of the model and store
#that combined data in a new data frame named 'MultiResult3'.
#b. Find out the errors in the predicted values.
#c. Now calculate the confusion matrix from the actual and the predicted values.
#d. From the confusion matrix, calculate the accuracy of the model.

read.csv("E:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

str(Pharmacovigilance_audit_Data)
summary(Pharmacovigilance_audit_Data)

sum(is.na(Pharmacovigilance_audit_Data$DrugID))
sum(is.na(Pharmacovigilance_audit_Data$Age))
sum(is.na(Pharmacovigilance_audit_Data$Gender))
sum(is.na(Pharmacovigilance_audit_Data$PatientID))


table(Pharmacovigilance_audit_Data$DrugID)
Pharmacovigilance_audit_Data$DrugID<- (Pharmacovigilance_audit_Data$DrugID=="DRUG1")*1
View(Pharmacovigilance_audit_Data)


sample.split(Pharmacovigilance_audit_Data$DrugID,SplitRatio = 0.70)->split_tag2
subset(Pharmacovigilance_audit_Data,split_tag2==T)->train2
subset(Pharmacovigilance_audit_Data,split_tag2==F)->test2

nrow(train2)
nrow(test2)


colnames(Pharmacovigilance_audit_Data)

glm(DrugID~Age+Gender+PatientID,data = train2,family = "binomial")->model3
summary(model3)

predict(model3,newdata = test2,type = "response")->predicated_values2
range(predicated_values2)

cbind(Actual=Pharmacovigilance_audit_Data$DrugID,Predicted=predicated_values2)->MultiResult3
as.data.frame(MultiResult3)->MultiResult3
View(MultiResult3)

#b. Find out the errors in the predicted values.

MultiResult3$Actual - MultiResult3$Predicted->error2
as.data.frame(error2)->error2
View(error2)

cbind(MultiResult3,error2)->MultiResult3
View(MultiResult3)

#c. Now calculate the confusion matrix from the actual and the predicted values.

table(test2$DrugID,predicated_values2>0.65)

#calculate the accuracy of the model

(162+161)/(162+161+87+250)



