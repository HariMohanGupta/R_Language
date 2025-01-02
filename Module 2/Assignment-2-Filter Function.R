#Module 2: Assignment 1 - Filter Function

#Problem Statement:
#Jonas is working on data manipulation using placement dataset. Now, he has to perform
#data manipulation operation using filter() function from the dplyr package.

#Tasks to be performed:
# 1. Extract the data of students who studied Science (hsc_s) from Central board (hsc_b)
#and secured more than 70 percent (hsc_p) and store it in s_science.

library(dplyr)

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data

View(Placement_Data)

filter(Placement_Data,hsc_s == "Science" & hsc_b == "Central" & hsc_p > 70)->s_science

View(s_science)
nrow(s_science)

#2. Extract the data of students who are pursuing a degree in Commerce & Management
#(degree_t) and specialization is Mkt&Fin and store it in d_commerce.

filter(Placement_Data,degree_t == "Comm&Mgmt" & specialisation == "Mkt&Fin")->d_commerce

View(d_commerce)

nrow(d_commerce)

#3. Extract the data of students whose score in MBA (mba_p) is greater than 75 with
# etest score greater than 70.

filter(Placement_Data,mba_p > 75 & etest_p > 70)->d_mba

View(d_mba)

nrow(d_mba)

#4. Extract the data of students with specialization as Mkt&Fin with etest score greater
#than 90.

filter(Placement_Data,specialisation == "Mkt&Fin" & etest_p > 90)->mkt_fin_90

View(mkt_fin_90)

nrow(mkt_fin_90)

#5. Extract the data of students who are either from Commerce or Science stream.


filter(Placement_Data,hsc_s == "Commerce" | hsc_s == "Science")->hsc_cs

View(hsc_cs)

nrow(hsc_cs)

