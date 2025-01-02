#Module 1: Assignment 8 - If-Else

#Problem Statement:

#Sam is trying to understand some of the datasets for building software that gives output
#based on certain conditions. Sam lists down the tasks that need to be performed.

#Tasks to be performed:
#1.Using the placement dataset, perform the following tasks:

#a. Check the value of 12th row of degree_t column, if the value is
#"Comm&Mgmt", and then print "The student is of the stream Commerce and Management".

if(Placement_Data$degree_t[12]=="Comm&Mgmt"){
  print("The student is of the stream Commerce and Management")
}


#b. Check the value of 23rd row of specialization column, if the value is"Mkt&HR", then print "The specialization of student is Marketing and
#Human Resource"

if(Placement_Data$specialisation[23]=="Mkt&HR"){
  print("The specialization of student is Marketing and Human Resource")
}


#c. Check the 39th row of status column, if the value is "Placed", then print"The student is placed from campus."

if(Placement_Data$status[39]=="Placed"){
  print(""The student is placed from campus."")
}


#2. Using the pharmacovigilance dataset, perform the following tasks:
#a. Check the value of 37th row of Issues column, if the value is"Medication history documenting error", then print "The patient's medical
#record is missing".

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data

View(Pharmacovigilance_audit_Data)

if(Pharmacovigilance_audit_Data$Issues[37]=="Medication history documenting error"){
  print("The patient's medical record is missing")
}
# on above Issues column on 37 row Medication history documenting error is not avail.

#b.Check the value of 180th row of Issues column, if the value is "Unclear Route", then print "The patient is having an unclear route of transmission"

if(Pharmacovigilance_audit_Data$Issues[180]=="unclear route") {
  print("The patient is having an unclear route of transmission")
}

#c. Check the 220th row of Location ID column, if the value is "Location3",then print "The location ID of the patient is Location3."

if(Pharmacovigilance_audit_Data$LocationID[220]=="Location3") {
  print("The location ID of the patient is Location3")
  
}

#3. Using the city temperature dataset, perform the following tasks:

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)
str(city_temperature)

#a. Check the value of 11th row of Region column, if the value is "Africa", then print "The region for which we are calculating average temperature is
# Africa

if(city_temperature$Region[11]=="Africa"){
  print("The region for which we are calculating average temperature is Africa"")
}

#b. Check the value of row number 79961 of city column, if the value is"Conakry", then print "The city for which we are calculating average
#temperature is Conakry".

if(city_temperature$City[79961]=="Conakry") {
  print("The city for which we are calculating average temperature is Conakry"")
}


#c. Check the value of 70th row of year column, if the value is "1995", then prints "We are calculating average temperature for the year 1995".

if(city_temperature$Year[70]==1995){
  print("We are calculating average temperature for the year 1995")
}


