#Module 2: Assignment 6 - Summarize Function

#Problem Statement:
#Jonas is assigned a task to use summarize() function for understanding the data through
#various statistical parameter. The tasks he has to perform on the placement data are given
#below.

#Tasks to be performed:
#1. Using summarize() function calculate the following for etest column:
#a. Median
#b. Variance
# c. Standard Deviation

library(dplyr)
library(sqldf)

View(Placement_Data)

summarise(Placement_Data,median(etest_p),var(etest_p),sd(etest_p))

#2. Calculate the following for MBA percentage(mba_p) of students:
#a. Median
#b. Variance
#c. Standard Deviation

summarise(Placement_Data,median(mba_p),var(mba_p),sd(mba_p))


#3. Calculate the median of hsc_p and group it w.r.t. 'Salary' column.

group_by(Placement_Data,salary)->med_sal

summarise(med_sal,median(hsc_p))

#4. Calculate variance ssc_p and group it w.r.t. 'Salary' column.

group_by(Placement_Data,salary)->var_ssc_p

summarise(var_ssc_p,var(ssc_p))


#5. Calculate standard deviation of etest_p and group it w.r.t. 'Salary'.

group_by(Placement_Data,salary)->sd_etest

summarise(sd_etest,sd(etest_p))


#or

na.omit(Placement_Data$salary)
summarise(group_by(Placement_Data,salary),sd(etest_p))




