
read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = TRUE)->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)
str(Pharmacovigilance_audit_Data)

#Module 1: Assignment 3 - C Function
#Problem Statement:
#You work in an organization who builds software for pharmaceutical company. The
#pharmaceutical company provides its data to your company to analyze and extract
#some useful insights. For this, you may require to check each and every column in small
#sets. For this, the company assigns you the following tasks:
#  Tasks to be performed:
#  1. Extract the following columns from the dataset:

#  a. Age and Issues.

Pharmacovigilance_audit_Data[,c("Age","Issues")]->age_issues
View(age_issues)

#b. Patient ID and Drug ID.

Pharmacovigilance_audit_Data[,c("PatientID","DrugID")]->patient_drug_id
View(patient_drug_id)


#c. Gender, Age, and Issues.

Pharmacovigilance_audit_Data[,c("Gender","Age","Issues")]->gai
View(gai)

#2. Extract the following rows:
#a. Row numbers 1,2,3,4, and 5

Pharmacovigilance_audit_Data[c(1,2,3,4,5),]->p_1to5
View(p_1to5)

#b. Rows from 15 to 75

Pharmacovigilance_audit_Data[c(15:75),]->p_15to75
View(p_15to75)

#c. Rows from 100-150

Pharmacovigilance_audit_Data[c(100:150),]->p_100to150
View(p_100to150)

#3. Extract the following rows and columns:
#a. Columns (1,2,4) and rows(1 to 10)

Pharmacovigilance_audit_Data[c(1,2,4),c(1:10)]->p_1rc
View(p_1rc)

#b. Columns (2,4,5) and rows(50 to 120)

Pharmacovigilance_audit_Data[c(50:120),c(2,4,5)]->p_rowc
View(p_rowc)

#c. Columns (1,3,6) and rows(100 to 200)

Pharmacovigilance_audit_Data[c(100:200),c(1,3,6)]->p_rrc
View(p_rrc)



