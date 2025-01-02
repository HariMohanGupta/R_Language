View(Pharmacovigilance_audit_Data)
str(Pharmacovigilance_audit_Data)

read.csv("D:\\Hari -DS\\datasets_r_programming\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->Pharmacovigilance_audit_Data

View(Pharmacovigilance_audit_Data)
str(Pharmacovigilance_audit_Data)
#Module 1: Assignment 11 - Subset Function
#Problem Statement:
#  Ram is a Data Scientist in a company. The company wants to build a system for a
#pharmaceutical company using pharmacovigilance data. For accomplishing this task,
#they need to understand the data. So, Ram is assigned a task to analyze the data in small sets.
#Tasks to be performed:
#  1. Extract a subset of pharmacovigilance data of all the female patients whose age
#is less than 25 with issues of unclear dose.

Pharmacovigilance_audit_Data$Gender == "F" &
  Pharmacovigilance_audit_Data$Age<25 & 
  Pharmacovigilance_audit_Data$Issues =="unclear dose" ->p_gender

View(p_gender)
as.data.frame(p_gender)->p_gender
View(p_gender)
subset(Pharmacovigilance_audit_Data,p_gender==T)->p_gender
View(p_gender)


#2. Extract the records of all the male patients whose age is less than 25 and
# medication data is not available.


Pharmacovigilance_audit_Data$Gender=="M" &
  Pharmacovigilance_audit_Data$Age<25 &
  Pharmacovigilance_audit_Data$Issues=="Medication history documenting error"->p_mm

View(p_mm)
as.data.frame(p_mm)->p_mm
View(p_mm)
subset(Pharmacovigilance_audit_Data,p_mm==T)->p_mm
View(p_mm)


#3. Fetch the records of children whose age equals to 8 whose documentation of
#medication history is not available.

c = 8
Pharmacovigilance_audit_Data$Age == c &
  Pharmacovigilance_audit_Data$Issues == "Medication history documenting error" ->p_age
View(p_age)
as.data.frame(p_age)->p_age
View(p_age)

subset(Pharmacovigilance_audit_Data,p_age==T)->p_age
View(p_age)


#4. Extract all the records of female children of age>5 having an unclear dose.



Pharmacovigilance_audit_Data$Gender == "F" &
  Pharmacovigilance_audit_Data$Age > 5 &
  Pharmacovigilance_audit_Data$Issues == "unclear dose" ->pp5
View(pp5)
as.data.frame(pp5)->pp5
View(pp5)

subset(Pharmacovigilance_audit_Data,pp5==T)->pp5
View(pp5)



#Extract the records of male patients of age equals to 35 with an unclear route of transmission.

Pharmacovigilance_audit_Data$Age = 35 &
  Pharmacovigilance_audit_Data$Issues == "unclear route" ->pk
View(pk)
as.data.frame(pk)->pk

subset(Pharmacovigilance_audit_Data,pk==T)->pk
View(pk)


