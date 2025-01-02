#Module 1: Assignment 15 - Table() Function
#Problem Statement:
#Jonas is given a dataset to analyze and extract information out of it. To understand the
#data he has to perform certain tasks. So, the tasks that he lists down for accomplishing is
#given below.
#Tasks to be performed:

#1. Check the categories of various columns given below using table function and
#extract the data of male customers who are senior citizens with partners internet
#service as DSL along with services such as phone services enabled :
#  a. Gender

View(customer_churn)

table(customer_churn$gender)

customer_churn$gender == "Male" &
  customer_churn$SeniorCitizen == 1 &
  customer_churn$Partner == "Yes" &
  customer_churn$InternetService == "DSL" &
  customer_churn$PhoneService == "Yes" ->five_service

View(five_service)

as.data.frame(five_service)->five_service
View(five_service)

subset(customer_churn,five_service==T)->five_service
View(five_service)

table(five_service$gender)

table(five_service$SeniorCitizen)

table(five_service$Partner)

table(five_service$Dependents)

table(five_service$PhoneService)

table(five_service$MultipleLines)

table(five_service$InternetService)

table(five_service$OnlineSecurity)

table(five_service$OnlineBackup)

table(five_service$Contract)

table(five_service$PaymentMethod)