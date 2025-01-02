#Module 3: Assignment 11 - Geom_histogram()

#Problem Statement:
#Jonas is assigned a task to create histograms using student placement and customer churn
#dataset.
#Tasks to be performed:

#1. Create a histogram for 'ssc_p' column:
#a. Assign as color 'azure' to the histogram.
#b. Set number of bins to 50.
#c. Assign a color 'cornsilk4' to the 'fill' attribute in geom_histogram function.
#d. Give it a title as 'SSC Percentage'

View(Placement_Data)

library(ggplot2)

ggplot(data = Placement_Data,aes(x=ssc_p))+geom_histogram()

ggplot(data = Placement_Data,aes(x=ssc_p))+geom_histogram(col='azure')

ggplot(data = Placement_Data,aes(x=ssc_p))+geom_histogram(col='azure',bins = 50)

ggplot(data = Placement_Data,aes(x=ssc_p,fill='cornsilk4'))+geom_histogram(col='azure',bins = 50)->g1


g1+labs(title = "SSC Percentage")

#2. Create a histogram for 'hsc_p':
#a. Assign a color 'wheat3' to the plot.
#b. Set number of bins to 50.
#c. Assign a color 'black' to the 'fill' attribute in geom_histogram function.
#d. Give it a title as 'HSC Percentage


ggplot(data = Placement_Data,aes(x=hsc_p))+geom_histogram()->g2

g2+theme(plot.background = element_rect(fill = 'wheat3'))+geom_histogram(bins = 50)

g2+theme(plot.background = element_rect(fill = 'wheat3'))+geom_histogram(bins = 50,fill='black')->g3

g3+labs(title = "HSC Percentage")


#3. Create a histogram as per the following conditions:
#a. Assign 'degree_p' column to the x-axis.
#b. Set the number of bins to 80.
#c. Assign a color 'violet' to the bars.
#d. Assign a color 'white' to the 'fill' attribute in geom_histogram function.
#e. Give it a title as 'Degree Percentage'

ggplot(data = Placement_Data,aes(x=degree_p))+geom_histogram()

ggplot(data = Placement_Data,aes(x=degree_p))+geom_histogram(bins = 80)

ggplot(data = Placement_Data,aes(x=degree_p))+geom_histogram(bins = 80,col='violet')

ggplot(data = Placement_Data,aes(x=degree_p))+geom_histogram(bins = 80,fill='white',col='violet')->g1

g1+labs(title = "Degree Percentage")


#4. Create a histogram as per the following condition:
#a. Assign 'etest_p' column to the x-axis.
#b. Set the number of bins to 100.
#c. Assign a color 'white' to the bars.
#d. Assign a color 'black' to the 'fill' attribute in geom_histogram function.
#e. Give it a title as 'E-test Percentage

ggplot(data = Placement_Data,aes(x=etest_p,))+geom_histogram()

ggplot(data = Placement_Data,aes(x=etest_p,))+geom_histogram(bins = 100)

ggplot(data = Placement_Data,aes(x=etest_p,))+geom_histogram(bins = 100,col='white')

ggplot(data = Placement_Data,aes(x=etest_p,))+geom_histogram(bins = 100,col='white',fill='black')->g1


g1+labs(title = "E-test Percentage")
