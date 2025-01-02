
#Module 5: Assignment 2 - Splitting the Data Frame
#Problem Statement:

#You work in XYZ Corporation as a Machine Learning Engineer. After finding out the
#Dependent and Independent Features of the data frames, now the corporation wants you to
#split the datasets into train and test sets so that you can feed those data to the model.

#Tasks to be performed:

#1. From the city_temperature dataset, split the data frame into train and test sets.

#a. Split the dataset into 70:30 ratio by the dependent feature.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\city_temperature.csv")->city_temperature
View(city_temperature)

library(caTools)

cor(city_temperature$Month,city_temperature$AvgTemperature)

sample.split(city_temperature$Month,SplitRatio = 0.70)->split_tag
subset(city_temperature,split_tag==T)->train
subset(city_temperature,split_tag==F)->test
nrow(train)
nrow(test)

#2. From the Placement_Data_Full_Class, split the data frame into train and test sets.
# a. Split the dataset into 80:20 ratio by the dependent feature.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Placement_Data_Full_Class.csv")->Placement_Data
View(Placement_Data)

cor(Placement_Data$etest_p,Placement_Data$degree_p)

sample.split(Placement_Data$etest_p,SplitRatio = 0.80)->split_tag2
subset(Placement_Data,split_tag2==T)->train1
subset(Placement_Data,split_tag2==F)->test1

nrow(train1)
nrow(test1)

#3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets.
# a. Split the dataset into 75:25 ratio by the dependent feature.

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$Age,SplitRatio = 0.75)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train2
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test2
nrow(train2)
nrow(test2)
