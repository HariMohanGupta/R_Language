#Module 3: Assignment 14 - plotly()
#Problem Statement:

#Sam's next task is to create interactive web based graphics using plotly package. He lists
#down the task to be performed on the pharmacovigilance dataset.

#Tasks to be performed:

#1. Build a histogram for the 'Age' column.
#a. Color should be determined by 'Issues' column
#b. Color should be determined by 'Gender' column

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance

View(Pharmacovigilance)

library(plotly)

plot_ly(Pharmacovigilance,x = ~Age,type="histogram",color= ~Issues)

plot_ly(Pharmacovigilance,x = ~Age,type="histogram",color= ~Gender)


#2. Create a scatter plot between 'Age' & 'Gender' as per the following condition:
#a. Map 'Age' on the y-axis
#b. Map 'Gender' on the 'x-axis'
#c. Color should be determined by 'Issues' column

plot_ly(Pharmacovigilance,y=~Age,x=~Gender,mode="markers")

plot_ly(Pharmacovigilance,y=~Age,x=~Gender,mode="markers",color = ~Issues)


#3. Create a box-plot between 'DrugID' & 'Age'.
#a. Map 'DrugID' on the x-axis
#b. Map 'Age' on the y-axis
#c. Color should be determined by 'Gender' column

plot_ly(Pharmacovigilance,y=~Age,x=~DrugID,type="box",color = ~Gender)

