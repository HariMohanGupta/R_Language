#Module 2: Assignment 2 - Median Function

#1. Calculate the median of 'tenure' column and store it in med_tenure.

median(customer_churn$tenure)->med_tenure
View(med_tenure)
as.data.frame(med_tenure)->med_tenure
View(med_tenure)


#2. Calculate the median of 'Monthly Charges' column and store it in
# med_MonthlyCharges.

median(customer_churn$MonthlyCharges)->med_MonthlyCharges

View(med_MonthlyCharges)

as.data.frame(med_MonthlyCharges)->med_MonthlyCharges

View(med_MonthlyCharges)

str(med_MonthlyCharges)


#3. Calculate the median of 'Total Charges' column and store it in med_TotalCharges.

str(customer_churn$TotalCharges)

customer_churn$TotalCharges -> as.factor(customer_churn$TotalCharges)
str(customer_churn$TotalCharges)
is.na(customer_churn$TotalCharges)

sum(is.na(customer_churn$TotalCharges))

is.na_replace_0 <- customer_churn$TotalCharges

is.na_replace_0[is.na(is.na_replace_0)]<-0

is.na(is.na_replace_0)

sum(is.na(is.na_replace_0))

median(is.na_replace_0)->med_TotalCharges

View(med_TotalCharges)

as.data.frame(med_TotalCharges)->med_TotalCharges

View(med_TotalCharges)

str(med_TotalCharges)

#Using student placement dataset:

#1. Calculate the median of percentage scored in senior secondary exams (ssc_p) and
#store it in med_ssc.


View(Placement_Data)


median(Placement_Data$ssc_p)->med_ssc

View(med_ssc)

as.data.frame(med_ssc)->med_ssc

View(med_ssc)

#2. Calculate the median of scores in higher secondary exams 'hsc_p' and store it in
# med_hsc.

median(Placement_Data$hsc_p)->med_hsc

View(med_hsc)

as.data.frame(med_hsc)->med_hsc

View(med_hsc)


#3. Calculate the median of percentage score by students in their respective degree
#(degree_p) and store it in med_degree.

median(Placement_Data$degree_p)->med_degree

View(med_degree)

as.data.frame(med_degree)->med_degree

View(med_degree)
