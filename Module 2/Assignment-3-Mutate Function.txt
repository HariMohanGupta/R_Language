#Module 2: Assignment 3 - Mutate Function

#Problem Statement:
#Jonas has performed data manipulation using filter() and select(). Jonas realizes the need
#of adding certain columns of the customers to the dataset. Now, further Jonas wants to
#manipulate data by adding age column to the dataset using mutate() function. He lists
#down the tasks that need to be performed.

#Tasks to be performed:
#1. Add a column named 'Age' and assign a random value in customer churn dataset
#that lies within a range using sample() function based in the following conditions:
#  a. If the customer is a senior citizen (SeniorCitizen==1), then the age assigned
#to the customer lies between 56 and 100.
#b. If the customer is not a senior citizen (SeniorCitizen==0), then the age
# assigned to the customers lies between 16:55.

library(dplyr)

View(customer_churn)

mutate(customer_churn,
       Age = ifelse(SeniorCitizen==0,
                    sample(x=16:55),
                    sample(x=56:100)
                    )
       )->customer_churn_1

View(customer_churn_1)

#2. Create a column named 'Customer_Category' based on the following condition:
#a. The customers whose monthly charges are less than 45 will be named as
#'Low Paying' customers.
#b. The customers whose monthly charges are less than '90' will be named as
#'Medium Paying' customers.
#c. The customers whose monthly charges are greater than '90' will be named
#as 'High Paying' customers.

mutate(customer_churn_1,
       Customer_Category = ifelse(MonthlyCharges<45,
                                  "Low Paying",
                                  ifelse(MonthlyCharges<90,
                                         "Medium Paying",
                                         "High Paying"
                                         )
                                  )
       )->customer_churn_1

View(customer_churn_1)

select(customer_churn_1,Customer_Category)->Customer_Category
View(Customer_Category)

filter(customer_churn_1,Customer_Category == "Low Paying")->Low_Paying
View(Low_Paying)
nrow(Low_Paying)

filter(customer_churn_1,Customer_Category == "Medium Paying")->Med_Paying
View(Med_Paying)
nrow(Med_Paying)

filter(customer_churn_1,Customer_Category == "High paying")->High_Paying
View(High_Paying)
nrow(High_Paying)


#3. Create a column named "Security" based on the following condition:
#a. The customers who have opted for 'Online Security' will be marked as
#'Secure'.
#b. The customers who have not opted for 'Online Security' will be marked as
#'Not Secure'.


mutate(customer_churn_1,
       Security = ifelse(OnlineSecurity == "Yes",
                         "Secure",
                         "Not Secure"
                         )
                        
)->customer_churn_1

View(customer_churn_1)


