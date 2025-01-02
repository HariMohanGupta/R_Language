#Module 3: Assignment 2 - Bins Attribute

#Problem Statement:
#Sam is using histograms for data visualization. He wants to create histograms with more
#number of bins. Thus, he lists down the tasks to add more bins to the histogram using
#'bins' attribute for customer churn and pharmacovigilance dataset.
#Tasks to be performed:

#1. Create a histogram for 'Age' column using pharmacovigilance dataset:
#a. Set number of bins to 100.
#b. Assign as color 'azure' to the histogram.
#c. Assign a color 'white' to the 'fill' attribute in geom_histogram function.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance

View(Pharmacovigilance)

library(ggplot2)

ggplot(data = Pharmacovigilance, aes(x= Age)) + geom_histogram( bins = 100,fill= 'white',col= 'azure')


#2. Create a histogram for 'Patient ID' using pharmacovigilance dataset:
#a. Assign a color 'wheat3' to the plot.
#b. Set number of bins to 50.
#c. Assign a color 'black' to the 'fill' attribute in geom_histogram function.

ggplot(data = Pharmacovigilance,aes(x=PatientID))+geom_histogram(bins = 50,col = 'wheat3',fill = 'black')


#3. Create a histogram using customer churn dataset:
#a. Assign 'MonthlyCharges' column to the x-axis.
#b. Set the number of bins to 80.
#c. Assign a color 'violet' to the bars.
#d. Assign a color 'white' to the 'fill' attribute in geom_histogram function.

View(customer_churn)

ggplot(data = customer_churn,aes(x=MonthlyCharges)) + geom_histogram(bins = 80,col='violet',fill = 'white')


#4. Create a histogram using customer churn data:
#a. Assign 'tenure' column to the x-axis.
#b. Set the number of bins to 50.
#c. Assign a color 'white' to the bars.
#d. Assign a color 'black' to the 'fill' attribute in geom_histogram function.

ggplot(data = customer_churn,aes(x=tenure))+geom_histogram(bins = 50,col = 'white',fill='black')
