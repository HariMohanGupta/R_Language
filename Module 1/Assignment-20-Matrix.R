#Module 1: Assignment 20 - Matrix
#Problem Statement:
#Sam is given the below task for understanding Matrix.
#Tasks to be performed:
#1. Create a matrix named 'm_even' with the 16 continuous even values. The matrix
#should have 4 rows & 4 columns. Also, arrange the elements by row.

numbers = c(1:16)
numbers

class(numbers)

matrix(data = numbers, nrow = 4,ncol = 4,byrow = T)->m_even
m_even

#2. Create a matrix name 'm_odd' having 4 rows and 4 columns with 16 consecutive
#odd values arranged by row.

num_odd = c(3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33)

num_odd

matrix(data = num_odd,nrow = 4,ncol = 4,byrow = T)->m_odd
m_odd

#3. Create a matrix named m_8 as per the following conditions:
#a. The dimension of the matrix should be 8x8.

#b. It should have consecutive values starting from 1.
#c. It should be arranged by row.

num = c(1:64)

num

matrix(data = num,nrow = 8,ncol = 8,byrow = T)->m_8
m_8


