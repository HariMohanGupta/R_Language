#Module 5: Assignment 1 - Independent & Dependent Features

#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. 
#The corporation wants you to recognize the set of independent and dependent 
#features from the sets of datasets.

#Tasks to be performed:

#1. Load the city_temperature dataset .
#a. Find out the independent and dependent features from the data frame for model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\city_temperature.csv")->city_temperature

View(city_temperature)
names(city_temperature)

cor(city_temperature$Month,city_temperature$AvgTemperature)
cor(city_temperature$Year,city_temperature$AvgTemperature)
cor(city_temperature$Day,city_temperature$AvgTemperature)
sd(city_temperature$Year)
sd(city_temperature$AvgTemperature)
# I have checked corelation between Average temperature and month,year & day
# good corelation find out between AvgTemperature & Year
# So I have decided dependent varivale is AvgTemperature & independent is Year.

library(ggplot2)

ggplot(data = city_temperature,aes(x=Year,y=AvgTemperature))+geom_point()

#2. Load the Placement_Data_Full_Class dataset.
#a. Find out the independent and dependent features from the data frame 
# for model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)
names(Placement_Data)
cor(Placement_Data$mba_p,Placement_Data$salary)

ggplot(data = Placement_Data,aes(x=mba_p,y=salary))+geom_point()


# I plotted in scatter_plot and i seen the Independent variable mba_p & dependent 
# variable salary.


#3. Load the Pharmacovigilance_audit_Data dataset.
#a. Find out the independent and dependent features from the data frame 
# for the model training.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

names(Pharmacovigilance_audit_Data)

ggplot(data = Pharmacovigilance_audit_Data,aes(x=DrugID,y=Age,col=Gender))+geom_point()

       