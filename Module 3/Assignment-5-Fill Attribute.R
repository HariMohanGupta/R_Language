#Module 3: Assignment 5 - Fill Attribute

#Problem Statement:
#Sam is assigned a task to make the visualization plots more interactive and
#understandable using fill attribute. He lists down the tasks to be accomplished using
#student placement dataset.

#Tasks to be performed:
#1. Build a bar-plot:
#  a. Assign 'etest_p' column to x-axis
#b. Assign 'specialisation'column to x-axis
#c. Assign 'workex' to the fill attribute


View(Placement_Data)

library(ggplot2)

ggplot(data = Placement_Data,aes(x=etest_p,fill=workex))+geom_bar()

                                                      #or

ggplot(data = Placement_Data,aes(x=specialisation,fill=workex))+geom_bar()

#2. Build a bar-plot for the 'degree_t' column:
#a. Assign the fill color to be 'orange'
#b. Assign the boundary color to be 'peru'

ggplot(data = Placement_Data,aes(x=degree_t))+geom_bar(fill='orange',col='peru')

#3. Build a bar-plot for the 'hsc_s' column assigned to x-axis and then:
#a. Assign 'hsc_b' to the fill aesthetic
#b. Assign 'degree_t' to the fill aesthetic
#c. Change the position of bars to 'identity'

ggplot(data = Placement_Data,aes(x=hsc_s,fill=hsc_b))+geom_bar(position = 'identity')


ggplot(data = Placement_Data,aes(x=hsc_s,fill=degree_t))+geom_bar(position = 'identity')

