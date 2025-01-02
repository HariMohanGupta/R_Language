#Module 3: Assignment 3 - Col Attribute

#Problem Statement:
#John is assigned a task by his manager to visualize the data using graphs and plots. He has
#to visualize the data by categorizing the data according to various columns using 'col'
#attribute. So, John lists down the tasks that need to be performed using placement
#dataset.
#Tasks to be performed:

library(ggplot2)

View(Placement_Data)

#1. Create the following bar-plot where:
#a. 'Gender' is assigned to x-axis, 'ssc_p' to y-axis, and map 'ssc_b' with col
# aesthetic.

ggplot(data = Placement_Data,aes(Y=ssc_p,x=gender,col = ssc_b)) + geom_bar(position = 'dodge')


#b. 'ssc_b' is assigned to x-axis, 'hsc_s' to y-axis, and map 'degree_t' with col
#aesthetic.

ggplot(data = Placement_Data,aes(Y=hsc_s,x=ssc_b,col = degree_t))+ geom_bar(position = 'dodge')


#c. 'Status' is assigned to x-axis, salary to y-axis, and map 'specialisation' with
#col aesthetic.

ggplot(data = Placement_Data,aes(Y=salary,x=status,col = specialisation))+ geom_bar(position = 'dodge')

#d. 'Degree_t' is assigned to x-axis, 'etest_p' to y-axis, and map 'workex' with col
#aesthetic.

ggplot(data = Placement_Data,aes(Y=etest_p,x=degree_t,col=workex))+geom_bar(position = 'dodge')


#e. 'Hsc_s' is assigned to x-axis, 'hsc_b' to y-axis, and map gender with col
#aesthetic.

ggplot(data = Placement_Data,aes(Y=hsc_b,x=hsc_s,col=gender))+geom_bar(position = 'dodge')


#f. 'Hsc_s' is assigned to x-axis, 'etest_p' to y-axis, and map 'degree_t' with col
#aesthetic.

ggplot(data = Placement_Data,aes(x=hsc_s,Y=etest_p,col=degree_t))+geom_bar(position = 'dodge')

