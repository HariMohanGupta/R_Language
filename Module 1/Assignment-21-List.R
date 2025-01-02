#Module 1: Assignment 21 - Lists
#Problem Statement:
#Sam is given the below task for understanding List.
#Tasks to be performed:

#1. Create a list named internet_service using the following condition:
#a. A character vector that consists of name of the internet services as "DSL",
#"Fiber Optic", "Cable Broadband", and "Wireless".
#b. A numeric vector that consists of values from 30 to 40
#c. A logical vector having 6 values as: True, False, True, True, True, and False

internet_service_char = c("DSL","Fiber optic","Cable Broadband","Wireless")
internet_service_char
class(internet_service_char)

num = as.numeric(c(30:40))
num

logica = c(TRUE, FALSE, TRUE, TRUE, T,F)
logica

class(logica)

list(internet_service_char,num,logica)->internet_service
internet_service

class(internet_service)

class(internet_service[[1]])

class(internet_service[[2]])

class(internet_service[[3]])


#2. Create a list named payment_method using the following condition:
#a. A character vector comprising of payment methods as: 'Electronic Check',
#'Mailed Check', 'Credit Card', and 'Online Transfer'.
#b. A numeric vector that consists of values from 85-95
#c. A logical vector having 6 values as: True, True, False, True, False, and True.

payment_mode = c("Electronic Check","Mailed Check","Credit Card","Online Transfer")

payment_mode

num_vec = as.numeric(c(85:90))
num_vec

log_vec = c(TRUE, TRUE, FALSE, TRUE, FALSE,TRUE)
log_vec

list(payment_mode,num_vec,log_vec)->payment_method

payment_method


class(payment_method)


class(payment_method[[1]])
class(payment_method[[2]])
class(payment_method[[3]])


#3. Create a list named contract_list using the following condition:
#a. A character vector comprising of contract type as: "Month to month", "One
#Year", "Two Year", and "Three Year".
#b. A numeric vector comprising of five values as: '1', '12', '17', '32', and '72'.
#c. A logical vector comprising of four values: True, False, True, and True.
#i. Now, extract the 2nd value from the first element of the list
#ii. Extract the 3rd value from the 2nd element of the list
#iii. Extract the 4th value from the 1st element of the lists

contract_type = c("Month to Month","One Year","Two Year","Three Year")
contract_type

vec_num = c(1,12,17,32,72)
class(vec_num)

logiaa = c(TRUE,FALSE,TRUE,TRUE)
logiaa

list(contract_type,vec_num,logiaa) ->contract_list
contract_list


class(contract_list)

contract_list[[1]][2]

contract_list[[2]][3]

contract_list[[2]][4]
