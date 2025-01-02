#Module 3: Assignment 13 - plot()

#Problem Statement:
#John is assigned a task to understand the distribution of various columns in the placement
#dataset. He lists down the tasks to be accomplished by using plot() function.
#Tasks to be performed:

#1. Create a plot to understand the distribution of degree_t column.
View(Placement_Data)

plot(Placement_Data$degree_t,col="coral",xlab="Degree",main="Candidate of Degree")


#2. Create a plot to understand the distribution of hsc_s column.

plot(Placement_Data$hsc_s,col="red",xlab="HSC BOARD",main="Candidate of HSC")


#3. Create a plot for specialization column and give a heading as 'Specialization of
#Candidate'.

plot(Placement_Data$specialisation,main="Specialization of Candidate")


#4. Create a plot using ssc_b, give it a color of 'aquamarine4', and give a heading as
#'Type of Board.

plot(Placement_Data$ssc_b,col="aquamarine4",main="Type of Board")

