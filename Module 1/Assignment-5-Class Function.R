read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\city_temperature.csv",stringsAsFactors = T)->city_temperature
View(city_temperature)
class(city_temperature)
str(city_temperature)


#Module 1: Assignment 5 - Class Function
#Problem Statement:
#Sam is working on a dataset of city temperature. The dataset consists of various
#attributes such as region, country, state, city, month, day, year, and average
#temperature. Now, Sam is assigned a task to check the class and data type of the
#attributes of the dataset.

#Tasks to be performed:
#1. Find the class of the following attributes:
#a. Region

class(city_temperature$Region)

#b.class of the Country

class(city_temperature$Country)

#C.class of the City

class(city_temperature$City)

#d.class of the Month

class(city_temperature$Month)

#e.class of the Day

class(city_temperature$Day)

#f.class of the Year
class(city_temperature$Year)

#g.class of the AvgTemperature
class(city_temperature$AvgTemperature)

#2. After finding the class of the above attributes, convert them to the following data type:

#  i) Vector to Character
# a. Gender

View(Placement_Data)
str(Placement_Data)
read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->Placement_Data
View(Placement_Data)
str(Placement_Data)
class(Placement_Data$gender) # class of gender as a Factor

read.csv("D:\\Hari -DS\\data frames -20210525T014947Z-001\\data frames_\\Placement_Data_Full_Class.csv",stringsAsFactors = F)->Placement_Data
str(Placement_Data)

class(Placement_Data$gender) # class of gender as a character

class(Placement_Data$ssc_b)  # class of ssc_b as a character

class(Placement_Data$hsc_b)  # class of hsc_b as a character

class(Placement_Data$status) # class of status as a character

class(Placement_Data$workex) # class of workex as a character

class(Placement_Data$specialisation) # class of specialisation as a character

#ii) Check the class of placement_data and convert it to character data type.

str(Placement_Data)  # Output is are showing character datatype.


