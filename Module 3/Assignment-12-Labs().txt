#Module 3: Assignment 12 - Labs()

#Problem Statement:
#Sam has created various plots for visualization. Now, he is assigned a task to add headings
#to the plots that he has created using labs function for student placement dataset.
#Tasks to be performed:

#  1. Create bar-plot as per the following condition:
#a. Assign 'degree_t' to the x-axis.
#b. Give title of the plot as 'Degree Plot'.
#c. Assign a color 'yellowgreen

library(ggplot2)

View(Placement_Data)

ggplot(data = Placement_Data,aes(x=degree_t))+geom_bar()->g1

g1+labs(title = "Degree Plot")->g2

g2+theme(plot.title = element_text(hjust = 0.5,colour = 'yellowgreen'))


#2. Create bar-plot as per the following condition:
#a. Assign 'ssc_b' to the x-axis.
#b. Give title of the plot as 'SSC Plot'.
#c. Assign a color 'beige'.

ggplot(data = Placement_Data,aes(x=ssc_b))+geom_bar()->g1

g1+labs(title = "SSC Plot")->g2

g2+theme(plot.title = element_text(colour = 'beige'))


#3. Create bar-plot as per the following condition:
#a. Assign 'hsc_b' to the x-axis.
#b. Give title of the plot as 'HSC Plot'.
#c. Assign a color 'cornsilk4'.

ggplot(data = Placement_Data,aes(x=hsc_b))+geom_bar()->g1

g1+labs(title = 'HSC Plot')->g2

g2+theme(plot.title = element_text(hjust = 0.5,colour = 'cornsilk4'))

#4. Create bar-plot as per the following condition:
#a. Assign 'specialisation' to the x-axis.
#b. Give title of the plot as 'Specialization Plot'.
#c. Assign a color 'pink'.

ggplot(data = Placement_Data,aes(x=specialisation))+geom_bar()->g1

g1+labs(title = 'Specialization Plot')->g2

g2+theme(plot.title = element_text(colour = 'pink'))
