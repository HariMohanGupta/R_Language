View(Placement_Data)

#Module 1: Assignment 6 - For Loop
#Problem Statement:

#Sam is working on control flow statements. He has to calculate the number of different
#categories of attributes for various columns of the dataset.
#Tasks to be performed:
#  1. Using for loop, calculate the number of students from the placement dataset
#according to the following conditions:
#  a) Students who are placed.

count = 0
for (i in 1:nrow(Placement_Data)) {
  if(Placement_Data$status[i]=="Placed") {
    count = count+1
  }
  
}
print(count)

#b) Students who are from Science stream.

sci_s = 0

for (i in 1:nrow(Placement_Data)) {
  if(Placement_Data$hsc_s[i]=="Science") {
    sci_s = sci_s+1
  }
  
}
print(sci_s)

table(Placement_Data$hsc_s) #just verify from table function

#Students who are from Commerce stream.

comm = 0
for (i in 1:nrow(Placement_Data)) {
  if(Placement_Data$hsc_s[i]=="Commerce") {
    comm = comm+1
  }
  
}
print(comm)

#2. Using for loop, calculate the number of students from the placement dataset who
#score more than 80.0 in higher secondary exams (hsc_p)

count = 0
for (i in 1:nrow(Placement_Data)) {
  if(Placement_Data$hsc_p[i]>80) {
    count = count+1
  }
}
print(count)


#3. Calculate the number of students who scored more than 75% in MBA (mba_p)
#and got placed from campus placement drives.

count = 0
for (i in 1:nrow(Placement_Data)) {
  if(Placement_Data$mba_p[i]>75 & Placement_Data$status[i]=="Placed") {
    count = count+1
  }
  
}
print(count)

#4. Calculate the number of senior citizens from customer churn dataset who are
#using internet service as 'DSL'.

View(customer_churn)

count = 0
for (i in 1:nrow(customer_churn)) {
  if(customer_churn$SeniorCitizen[i]==1 & customer_churn$InternetService[i]=="DSL") {
    count = count+1
  }
  
}

print(count)

