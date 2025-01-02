#Module 1: Assignment 10 - While Loop
#Problem Statement:
#Sam is working on control flow statements. He has to calculate the number of different
#categories of attributes for various columns of the dataset using while loop.
#Tasks to be performed:

View(Placement_Data)

#1. Calculate the number higher secondary students who are from "Central"board.

count = 0
i = 1

while (i<=nrow(Placement_Data)) {
  if(Placement_Data$hsc_b[i]=="Central"){
    count = count+1
  }
  i = i+1
}
print(count)


#2. Calculate the number of students who are from Science stream and secured percentage greater than 75.

count = 0
i = 1

while (i<=nrow(Placement_Data)) {
  if(Placement_Data$hsc_s[i]=="Science" & Placement_Data$hsc_p[i]>75){
    count = count+1
  }
    i = i+1
  
}
print(count)


#3. Calculate the number of customers from customer churn dataset as per following condition:
#(i). The customer should be a senior citizen who is having a contract of 'One year' for 'Fiber optic' there as internet service.


View(customer_churn)

count = 0
i = 1

while (i<=nrow(customer_churn)) {
  
  if(customer_churn$SeniorCitizen[i]==1 & customer_churn$Contract[i]=="One year" & customer_churn$InternetService[i]=="Fiber optic") {
    count = count+1
  }
  i = i+1
}
count


#(ii). The customer is not a senior citizen who is having a contract of 'Two year' and total charges is less than 7000.

count = 0
i = 1

while (i<=nrow(customer_churn)) {
  
  if(!is.na(customer_churn$TotalCharges[i])){
    if(customer_churn$SeniorCitizen[i] == 0 & 
       customer_churn$Contract[i] == "Two year" & 
       customer_churn$TotalCharges[i] < 7000) {
      count = count+1
    }
  }
  i = i+1
}
count


#(iii). The customers whose monthly charges are greater than 6500.

count = 0
i = 1

while (i<=nrow(customer_churn)) {
  if(customer_churn$MonthlyCharges[i]>6500){
    count = count+1
  }
  i = i+1
}
print(count)