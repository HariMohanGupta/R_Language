# Assignment 1 - Arithmetic Operator (all worked in customer_churn dataset)
#Perform the following operations on the dataset using arithmetic operator:

#a) Increase the monthly charges of 1st record by 5.

read.csv("D:\\Hari -DS\\Data-Set\\Data Set\\customer_churn.csv",stringsAsFactors = T)->customer_churn
View(customer_churn)

customer_churn$MonthlyCharges[1]+5->customer_churn$MonthlyCharges[1]
customer_churn$MonthlyCharges[1]

# b) Increase the monthly charges of the 5th record by 22.
customer_churn$MonthlyCharges[5]+22->customer_churn$MonthlyCharges[5]
customer_churn$MonthlyCharges[5]
#c) Reduce the total charges of the 4th record by 40.75.

customer_churn$TotalCharges[4]-40.75->customer_churn$TotalCharges[4]

#d) Subtract the total charges from 2nd record by 100.

customer_churn$TotalCharges[2]-100->customer_churn$TotalCharges[2]

#Reduce the monthly charges of the 25th record by 4.6 and divide it by 5.

customer_churn$MonthlyCharges[25]-4.6/5->customer_churn$MonthlyCharges[25]
customer_churn$MonthlyCharges[25]  

#f) Increase the value of the total charge of the 5th record by 5.3 and multiply it by 2.  
  
  
customer_churn$TotalCharges[5]+5.3*2->customer_churn$TotalCharges[5]
customer_churn$TotalCharges[5]

#g)Multiply the 12th record of monthly charges by 5  

customer_churn$MonthlyCharges[12]*5->customer_churn$MonthlyCharges[12]
customer_churn$MonthlyCharges[12]

View(customer_churn)

  
  
  