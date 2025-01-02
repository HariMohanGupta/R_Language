#Module 3: Assignment 4 - Facet_grid() Attribute

#Problem Statement:
#Now, Sam has to use facet_grid() function to make the plots more informative and
#interactive for the customer churn and placement dataset. Now, Sam has to use
#facet_grid() function to make the plots more informative and interactive for the customer
#churn and placement dataset.

#Tasks to be performed:
#1. Build a histogram for the 'TotalCharges' column. Map 'gender' onto fill aesthetic.
#a. Facet the plot w.r.t 'gender' column

library(ggplot2)

View(customer_churn)

ggplot(data = customer_churn,aes(x=TotalCharges,fill=gender))+ geom_histogram()+facet_grid(~gender)


#2. Build a box-plot between 'tenure' & 'InternetService'. Map 'tenure' on the y-axis &
#'InternetService' on the x-axis. Map 'Contract' to the fill aesthetic
#a. Facet the plot w.r.t 'Contract' column.

ggplot(data = customer_churn,aes(y=tenure,x=InternetService,fill=Contract))+geom_boxplot()+facet_grid(~Contract)


#3. Build a scatter-plot between 'etest_p' & 'mba_p'. Map 'etest_p' on the y-axis &
#'mba_p' on the x-axis. Map 'degree_t' onto col aesthetic
#a. Facet the plot w.r.t 'degree_t' column

View(Placement_Data)

ggplot(data = Placement_Data,aes(y=etest_p,x=mba_p,col=degree_t))+geom_point()+geom_smooth()+facet_grid(~degree_t)
