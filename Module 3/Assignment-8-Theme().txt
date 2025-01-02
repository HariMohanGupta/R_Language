#Module 3: Assignment 8 - Theme()
#Problem Statement:
#  Sam is assigned a task to build visualization plots using different themes for the
#placement dataset.
#Tasks to be performed:
#  1. Build a bar-plot for the 'specialisation' column. Give it a fill color of 'skyblue'
#a. Give the panel a background color of 'cornsilk4'.
#b. Give the plot a background color of 'lightgreen'.

View(Placement_Data)

library(ggplot2)

ggplot(data = Placement_Data,aes(x=specialisation))+geom_bar(fill="skyblue")->g1

#a. Give the panel a background color of 'cornsilk4'.

g1+theme(panel.background = element_rect(fill = "cornsilk4"))->g2

#b. Give the plot a background color of 'lightgreen'.

g2+theme(plot.background = element_rect(fill="lightgreen"))


#2. Build a scatter-plot between 'hsc_p' & 'ssc_p'. Map 'hsc_p' on the y-axis & 'ssc_p' on
# the x-axis. Assign a color of 'lightgreen' to the points.

ggplot(data = Placement_Data,aes(y=hsc_p,x=ssc_p))+geom_point(col= "lightgreen")->g1

#a. Add a title to the plot 'HSC Percent vs SSC Percent.

g1+labs(title = "HSC Percent vs SSC Percent")->g2

#b. Give the panel a background color of 'skyblue'.

g2+theme(panel.background = element_rect(fill="skyblue"))->g3

#c. Give the plot a background color of 'beige'.

g3+theme(plot.background = element_rect(fill="beige"))->g4

#d. Center align the title.

g4+theme(plot.title = element_text(hjust=0.5))

