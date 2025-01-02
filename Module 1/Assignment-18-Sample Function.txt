#Module 1: Assignment 18 - Sample Function

#Problem Statement:
#Sam is given a task for extracting random set of values from the pharmacovigilance
#dataset for different columns.
#Tasks to be performed:
#  1. Extract some random set of values using sample function.

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance
View(Pharmacovigilance)

#a. Select five random values from LocationID.
sample(Pharmacovigilance$LocationID,5)

#b. Extract 25 random values from age column.

sample(Pharmacovigilance$Age,25)


#c. Extract 15 random from PatientID.

sample(Pharmacovigilance$PatientID,15)

#d. Extract 10 random values from Issues column.

sample(Pharmacovigilance$Issues,10)

