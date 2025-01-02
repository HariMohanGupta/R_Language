#Module 3: Assignment 10 - Geom_boxplot()

#Problem Statement:
#Sam has successfully created scatter-plots. Now, he is assigned a task to build box-plot for
#visualizing the data for student placement dataset.
#Tasks to be performed:

#1. Create a box-plot between 'etest_p' & 'workex'. Map 'etest_p' to the y-axis &
#'workex' to the 'x-axis'
#a. Assign it a fill color of 'wheat3'
#b. Assign it a boundary color of 'snow3'
#c. Give a title as 'E-test & Workex'

View(Placement_Data)

library(ggplot2)

ggplot(data = Placement_Data,aes(y=etest_p,x=workex))+geom_boxplot(fill="wheat3")

ggplot(data = Placement_Data,aes(y=etest_p,x=workex))+geom_boxplot(fill="wheat3",col="snow3")->g1

g1+labs(title = "E-test & Workex")

#2. Build a box-plot between 'etest_p' & 'gender'. Map 'etest_p' to the y-axis & 'gender'
to the 'x-axis'
#a. Assign 'degree_t' to the fill aesthetic
#b. Assign 'hsc_s' to the fill aesthetic
#c. Give a title as 'E-test & Gender'

ggplot(data = Placement_Data,aes(y=etest_p,x=gender))+geom_boxplot()

ggplot(data = Placement_Data,aes(y=etest_p,x=gender,fill=degree_t))+geom_boxplot()

ggplot(data = Placement_Data,aes(y=etest_p,x=gender,fill=hsc_s))+geom_boxplot()->g1

g1+labs(title = "E-test & Gender")


#3. Build a box-plot between 'etest_p' & 'specialisation'
#a. Assign 'ssc_b' to the fill aesthetic
#b. Assign 'hsc_b' to the fill aesthetic
#c. Give a title as 'E-test & Specialization'

ggplot(data = Placement_Data,aes(y=etest_p,x=specialisation))+geom_boxplot()

ggplot(data = Placement_Data,aes(y=etest_p,x=specialisation,fill=ssc_b))+geom_boxplot()

ggplot(data = Placement_Data,aes(y=etest_p,x=specialisation,fill=hsc_b))+geom_boxplot()->g1

g1+labs(title = "E-test & Specialization")


