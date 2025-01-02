#Module 3: Assignment 7 - Geom_point() Attribute

#Problem Statement:
#Sam is assigned a task to create plots for visualization such that it gives a clear idea the
#distribution of data points from the student placement dataset.

#Tasks to be performed:
#1. Create a scatter-plot:

#a. Assign 'hsc_p' column to x-axis and 'ssc_p' column to y-axis.

library(ggplot2)

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data

View(Placement_Data)

ggplot(data = Placement_Data,aes(x=hsc_p,y=ssc_p))+geom_point()->g1

g1+labs(title = "Comparing HSC & SSC Percentage")

#b. Map 'gender' to the col aesthetic

ggplot(data = Placement_Data,aes(x=hsc_p,y=ssc_p,col=gender))+geom_point()->g2

g2+labs(title = "Comparing HSC & SSC Percentage")

#c. Map 'workex' to the col aesthetic.

ggplot(data = Placement_Data,aes(x=hsc_p,y=ssc_p,col=workex))+geom_point()->g3

g3+labs(title = "Comparing HSC & SSC Percentage")

#d. Map 'status' to the col aesthetic.

ggplot(data = Placement_Data,aes(x=hsc_p,y=ssc_p,col=status))+geom_point()->g4

g4+labs(title = "Comparing HSC & SSC Percentage")

#2. Create a scatter-plot:
#a. Assign 'degree_p' column to the x-axis and 'mba_p' to the y-axis.

ggplot(data = Placement_Data,aes(x=degree_p,y=mba_p))+geom_point()->g1

g1+labs(title = "Understanding Degree & MBA Percentage")

#b. Use 'col' as an aesthetic and assign it the column 'status'.

ggplot(data = Placement_Data,aes(x=degree_p,y=mba_p,col=status))+geom_point()->g2

g2+labs(title = "Understanding Degree & MBA Percentage")

#c. Use 'col' as an aesthetic and assign it the column 'specialisation'.

ggplot(data = Placement_Data,aes(x=degree_p,y=mba_p,col=specialisation))+geom_point()->g3

g3+labs(title = "Understanding Degree & MBA Percentage")


#3. Create a scatter-plot:
#a. Assign 'etest_p' column to the x-axis and 'salary' to the y-axis.

ggplot(data = Placement_Data,aes(x=etest_p,y=salary))+geom_point()->g1

g1+labs(title = "The Plot as 'E-test & Salary")


#b. Use 'col' as an aesthetic and assign it the column 'workex'.

ggplot(data = Placement_Data,aes(x=etest_p,y=salary,col=workex))+geom_point()->g2

g2+labs(title = "The Plot as 'E-test & Salary")


#c. Use 'col' as an aesthetic and assign it the column 'gender'.

ggplot(data = Placement_Data,aes(x=etest_p,y=salary,col=gender))+geom_point()->g3

g3+labs(title = "The Plot as 'E-test & Salary")

