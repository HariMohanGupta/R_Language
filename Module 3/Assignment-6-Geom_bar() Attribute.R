#Module 3: Assignment 6 - Geom_bar() Attribute

#Problem Statement:
#Create visualizations using bar-plot for pharmacovigilance data.
#Tasks to be performed:
#  1. Build a bar-plot:
#  a. Assign 'LocationID'column to x-axis.
#  b. Assign 'Issues' to the fill attribut
#  c. Set title to 'Location ID Plot'

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance
View(Pharmacovigilance)

library(ggplot2)
library(plotly)
theme()

ggplot(data = Pharmacovigilance,aes(x=LocationID,fill=Issues))+geom_bar()->g1

g1+labs(title = "Location ID Plot")


#2. Build a bar-plot for the 'DrugID' column:
#a. Assign the fill color to be 'orange'
#b. Assign the boundary color to be 'peru'
#c. Set title to 'Drug ID Plot'

ggplot(data = Pharmacovigilance,aes(x=DrugID))+geom_bar(fill='orange',col='peru')->g2

g2+labs(title = 'Drug ID Plot')


#3. Build a bar-plot for the 'Gender' column assigned to x-axis and then:
#a. Assign 'DrugID' to the fill aesthetic
#b. Assign 'Issues' to the fill aesthetic
#c. Change the position of bars to 'identity'
#d. Set title to 'Gender Plot'


ggplot(data = Pharmacovigilance,aes(x=Gender,fill=DrugID,))+geom_bar(position = "identity")->g3

g3+labs(title ='Gender Plot')

ggplot(data = Pharmacovigilance,aes(x=Gender,fill=Issues,))+geom_bar(position = 'identity')->g4

g4+labs(title ='Gender Plot')
