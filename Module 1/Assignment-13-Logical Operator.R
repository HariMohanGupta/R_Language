#Module 1: Assignment 13 - Logical Operator
#Problem Statement:
#Jonas is working on a customer churn dataset. He is assigned a task to extract data on
#basis of certain condition to analyze it.
#Tasks to be performed:
#  1. Extract the data of customers as per the following conditions:

#a. People who are senior citizen of gender female.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\customer_churn.csv")->customer_churn
View(customer_churn)


customer_churn$gender=="Female" & customer_churn$SeniorCitizen== 1 ->sf
as.data.frame(sf)->sf
View(sf)
subset(customer_churn,sf==T)->sf
View(sf)


#b. Female customers who are not having partner.

customer_churn$gender =="Female" & customer_churn$Partner =="Yes" ->fp
as.data.frame(fp)->fp
View(fp)
subset(customer_churn,fp==T)->fp
View(fp)

#c. Customers using 'DSL' as their internet service with no online security.

customer_churn$InternetService == "DSL" & customer_churn$OnlineSecurity == "No" ->no_int_s
as.data.frame(no_int_s)->no_int_s
View(no_int_s)

subset(customer_churn,no_int_s==T)->no_int_s
View(no_int_s)


#d. Customers using 'Fiber optics' as internet service with no online backup.

customer_churn$InternetService == "Fiber optic" & 
  customer_churn$OnlineBackup == "No" ->no_online_bu

as.data.frame(no_online_bu)->no_online_bu
View(no_online_bu)

subset(customer_churn,no_online_bu==T)->no_online_bu
View(no_online_bu)


#e. Senior citizens using payment method as electronic check.

customer_churn$SeniorCitizen == 1 &
  customer_churn$PaymentMethod == "Electronic check" ->sen_pay_ec

as.data.frame(sen_pay_ec)->sen_pay_ec
View(sen_pay_ec)

subset(customer_churn,sen_pay_ec==T)->sen_pay_ec
View(sen_pay_ec)


#2. Extract the data of customers who are:
#a. Using payment method as mailed check and having a contract of one year

customer_churn$PaymentMethod =="Mailed check" &
  customer_churn$Contract == "One year" ->mail_oney

as.data.frame(mail_oney)->mail_oney

View(mail_oney)

subset(customer_churn,mail_oney==T)->mail_oney
View(mail_oney)

nrow(mail_oney)


#b. Having services such as online security, online backup, device protection,
# and tech support enabled

customer_churn$OnlineSecurity== "Yes" &
  customer_churn$OnlineBackup == "Yes" &
  customer_churn$DeviceProtection == "Yes" &
  customer_churn$TechSupport == "Yes" -> fourservice

as.data.frame(fourservice)->fourservice

View(fourservice)

subset(customer_churn,fourservice==T)->fourservice
View(fourservice)

nrow(fourservice)


#c. Not senior citizens having tenure of 72 months.

customer_churn$SeniorCitizen == 0 &
  customer_churn$tenure == 72 ->nosc

as.data.frame(nosc)->nosc

View(nosc)

subset(customer_churn,nosc==T)->nosc

View(nosc)
nrow(nosc)


#3. Check the customers data where the customer's are:
#a. Either using bank transfer or credit card as their payment method.

customer_churn$PaymentMethod == "Bank transfer (automatic)" |
  customer_churn$PaymentMethod == "Credit card (automatic)" ->pbc

as.data.frame(pbc)->pbc

View(pbc)

subset(customer_churn,pbc==T)->pbc

View(pbc)
nrow(pbc)


#b. Having phone service or multiple lines enabled.

customer_churn$PhoneService == "Yes" |
  customer_churn$MultipleLines == "Yes" ->phone_ml

as.data.frame(phone_ml)->phone_ml

View(phone_ml)

subset(customer_churn,phone_ml==T)->phone_ml
View(phone_ml)

nrow(phone_ml)


#c. Either having payment method as mailed check or electronic check.

customer_churn$PaymentMethod == "Mailed check" |
  customer_churn$PaymentMethod== "Electronic check" ->me

as.data.frame(me)->me

View(me)

subset(customer_churn,me==T)->me
View(me)

nrow(me)


#d. Either using fiber optic or having no internet service.

customer_churn$InternetService == "Fiber optic" |
  customer_churn$InternetService == "No" ->fn
as.data.frame(fn)->fn

View(fn)
subset(customer_churn,fn==T)->fn
View(fn)
nrow(fn)




  
  
  
  