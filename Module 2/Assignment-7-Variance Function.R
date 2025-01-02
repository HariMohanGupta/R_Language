#Module 2: Assignment 7 - Variance Function

#Problem Statement:
#Jonas is assigned a task to calculate the variance of different columns from customer
#churn and placement dataset using variance() function

#Tasks to be performed:
#Using customer churn dataset:
#  1. Calculate the variance of 'tenure' column and store it in var_tenure.
View(customer_churn)

var(customer_churn$tenure)->var_tenure
as.data.frame(var_tenure)->var_tenure
View(var_tenure)

#2. Calculate the variance of 'Monthly Charges' column and store it in
# var_MonthlyCharges

var(customer_churn$MonthlyCharges)->var_MonthlyCharges
as.data.frame(var_MonthlyCharges)->var_MonthlyCharges
View(var_MonthlyCharges)


#3. Calculate the variance of 'Total Charges' column and store it in var_TotalCharges.

var(customer_churn$TotalCharges)->var_TotalCharges
as.data.frame(var_TotalCharges)->var_TotalCharges
View(var_TotalCharges)

#Using student's placement dataset:

#1. Calculate the variance of percentage scored in senior secondary exams (ssc_p) and
# store it in var_ssc.

View(Placement_Data)

var(Placement_Data$ssc_p)->var_ssc
as.data.frame(var_ssc)->var_ssc
View(var_ssc)


#2. Calculate the variance of scores in higher secondary exams 'hsc_p' and store it in
#var_hsc.

var(Placement_Data$hsc_p)->var_hsc
as.data.frame(var_hsc)->var_hsc
View(var_hsc)


#3. Calculate the variance of percentage score by students in their respective degree
# (degree_p) and store it in var_degree.

var(Placement_Data$degree_p)->var_degree
as.data.frame(var_degree)->var_degree
View(var_degree)


#############################################################################################