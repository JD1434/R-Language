# 1. Use R code to get a description of the version of R and its attached packages used in the
# current session?
sessionInfo()

# 2. Create an object that has the list of all the installed packages in your system.
installed.packages()

# 3. Create an object with the following data types and check their data types by using the class
# function after creation
# a. integer
# b. numeric
# c. character
# d. logical
# e. complex


# a. integer
int<-c(1L,2L,3L)
class(int)
#b. numeric
num<-c(1,2,3)
class(num)
# c. character
char<-c('a','b','c')
class(char)
# d. logical
log<-3<2
class(log)
# e. complex
com<-3+3i
class(com)


# 4.Create the following objects:
# object_1 <- "my_text"
# object_2 <- "123.456"
# object_3 <- 123.456
# object_4 <- 0
# object_4 <- FALSE
# Perform type casting on each of the object. (Convert each of the objects into different available data
# types and analyze the results).

object_1<- 'my_text'

# character
object_1<-as.character(object_1)
class(object_1)
# numeric
object_1<-as.numeric(object_1)
class(object_1)
# integer
object_1<-as.integer(object_1)
class(object_1)
# complex
object_1<-as.complex(object_1)
class(object_1)
# logical
object_1<-as.logical(object_1)
class(object_1)


object_2<-'123.456'

# character
object_2<-as.character(object_2)
class(object_2)
# numeric
object_2<-as.numeric(object_2)
class(object_2)
# integer
object_2<-as.integer(object_2)
class(object_2)
# complex
object_2<-as.complex(object_2)
class(object_2)
# logical
object_2<-as.logical(object_2)
class(object_2)



object_3 <- 123.456

# character
object_3<-as.character(object_3)
class(object_3)
# numeric
object_3<-as.numeric(object_3)
class(object_3)
# integer
object_3<-as.integer(object_3)
class(object_3)
# complex
object_3<-as.complex(object_3)
class(object_3)
# logical
object_3<-as.logical(object_3)
class(object_3)


object_4 <- 0

# character
object_4<-as.character(object_4)
class(object_4)
# numeric
object_4<-as.numeric(object_4)
class(object_4)
# integer
object_4<-as.integer(object_4)
class(object_4)
# complex
object_4<-as.complex(object_4)
class(object_4)
# logical
object_4<-as.logical(object_4)
class(object_4)



object_5 <- FALSE


# character
object_5<-as.character(object_5)
class(object_5)
# numeric
object_5<-as.numeric(object_5)
class(object_5)
# integer
object_5<-as.integer(object_5)
class(object_5)
# complex
object_5<-as.complex(object_5)
class(object_5)
# logical
object_5<-as.logical(object_5)
class(object_5)



# 5. List all the objects in the current session.
ls()

# 6. Convert the data "1/December/1998" into a Date type.
as.Date("01/01/2000")


# 7. Find the number of years from the Independence of India till present.
i<-1947-08-15
ii <- as.POSIXct('1947-08-15',format = "%Y-%m-%d")
id<-format(ii,format='%Y')
t<-Sys.Date(format = "%Y-%m-%d")
td<-format(t,format='%Y')
td<-as.numeric(td)
id<-as.numeric(id)

cat(td-id," years from the Independence of India till present")

# 8. Convert the following text into a Date format:
#   "On the 16th of December the hostilities between the two countries ended and a new nation
# was formed in the winter of 1971" (Hint: Use lubridate)

install.packages('lubridate')
library(lubridate)

x<-c('On the 16th of December the hostilities between the two countries ended and a new nation
 was formed in the winter of 1971')
parse_date_time(x, "dmY ")

# 9. Convert the string "December-31-2018" to a date format and extract the month. (Hint: use
#                                                                                   lubridate)
x1<-c('"December-31-2018"')
x1<-parse_date_time(x1, "mdy")
month(x1)

# # 10. Create a vector with 5 numbers and find the data type of it.
d<-c(1,2,3,4,5)
class(d)



# 11. Create a vector with 5 numbers and 1 text and find the data type of it.
d2<-c(1,2,3,4,5,'hello')
class(d2)

# 12. Create a vector with number from 1 to 1000 with a step of 10. (Hint: use seq())
seq(1,1000,10)


# 13. Create a vector V1 having numbers from 11 to 20. (Hint: use n:m )
v1<-11:20


# 14. Extract the 5th, 7th and 9th element of the vector v1 and save it in an object V2.

v2<-v1[c(5,7,9)]

# 15. Save the first 9 elements of the vector V1 in a separate object naming 'V3'.
v3<-v1[1:9]



# 16. Create a vector "Airport.Codes" with the following information:
#   DEL, BOM, PUN, MAA, DEL, MAA, PUN, DEL, MAA, PUN, PUN, DEL, BOM

Airport.Codes<-c('DEL', 'BOM', 'PUN', 'MAA', 'DEL', 'MAA', 'PUN', 'DEL', 'MAA', 'PUN', 'PUN', 'DEL', 'BOM')


# 17. PUN is the incorrect airport code and it should be PNQ. Replace the values in the vector
 # Airport.Codes.

Airport.Codes
replace(Airport.Codes,Airport.Codes=='PUN','PNQ')

# 18. Create vector "x" with the values {4, 4, 5, 6, 7, 2, 9}.
            # a. Calculate the number of observation (n), mean, sum, max, min, variance of the vector 'x".

x<-c(4, 4, 5, 6, 7, 2, 9)
mean(x)
sum(x)
max(x)
min(x)
var(x)

            # b. Also print the 3rd element, odd positions elements and elements from 2 to 6 positions.

x[3]


# 19. Create a vector 'Age' with values from 1 to 99.
age<-c(1:100)
age


# 20. Create a vector 'Young.Old' by extracting values from 1 to 18 and 80 to 99 from Age Vector.

Young.Old<-c(age[1:18],age[80:99])
Young.Old

# 21. Find the number of elements in the vector Young.Old.

length(Young.Old)

# 22. Find the sum, mean, median, min and max age in the vector Young.Old.
summary(Young.Old)
sum(Young.Old)
mean(Young.Old)
median(Young.Old)
min(Young.Old)
max(Young.Old)


# 23. Create 6x4 matrix (6 rows and 4 columns) using 1 to 24 numbers
matrix(1:24,6)


# 24. Create a vector 'for.m' which has 30 numeric values. Use this vector to create a matrix
# my_matrix with 10 rows.
for.m<-c(1:30)

my_matrix<-matrix(for.m,10)

# 25. Extract the 1st, 5th and 9th row of the 1st and 2nd column from the matrix my_matrix.
my_matrix

my_matrix[c(1,5,9),1:2]


# 26. Create data frame with the below vectors
# StoreID - (111, 208, 113, 408)
# Tenure - (25, 34, 28, 52)
# StoreType - ("Type1", "Type2", "Type1", "Type1")
# status - ("Poor", "Improved", "Excellent", "Poor")
StoreID <- c(111, 208, 113, 408)
Tenure <- c(25, 34, 28, 52)
StoreType <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")

# 27. Print the data in different programs.
# a. only storeId, tenure
# b. only storetype and status
# c. only tenure
c(StoreID,Tenure)
c(StoreType,status)
c(Tenure)




# 28. Create a data.frame 'Employee.Info' by combining vectors. The table should have 4 columns
# with 5 rows. The columns should be - 'Employee.ID' , 'Employee. Name', 'Employee.Salary' ,
# 'Employee.Department'. (Provide arbitrary values for the rows).
Employee.Info<-data.frame(
  Employee.ID=c(001,002,003,004,005),
  Employee.Name=c('sam','jack','harry','tom','jerry'),
  Employee.Salary=c(14500,11500,8700,13400,6700), 
  Employee.Department=c('Chief Executive Officer','Chief_Operating_Officer','Chief_Financial_Officer','Chief_Technology_Officer','Chief_Marketing_Officer'
                        ))
                          


# 29. Create different factors using the below vectors and label the values and order levels for
# factors "outcome" and "status".
# a. ethnicity - White", "African amrican", "White", "Asian"
# b. status - Poor", "Improved", "Excellent", "Poor"
# c. outcome - c(1, 3, 2, 4, 3, 1, 1) - labels- "Poor", "Average", "Good", "Excellent"
ethnicity<-c("White", "African amrican", "White", "Asian")
status <- c("Poor", "Improved", "Excellent", "Poor")
outcome <- c(1, 3, 2, 4, 3, 1, 1)  
labels<-c("Poor", "Average", "Good", "Excellent")


# 30. Create list called "mylist" with the title "My First List" and with the below objects called
# "ages" with below h, j and k. Also print the different combinations of objects.
# h -numeric vector with the values 25, 26, 18, 39
# j - matrix with 5 rows and 2 columns with the values 1 to 10
# k - character vector with the values "one", "two", "three"
# Basic Exploratory Data Analysis

h<-c(25,26,18,39)
j<-matrix(1:10,nrow = 5,ncol = 2)
k<-c('one','two','three')
mylist<-list(title= "My First List",Ages=h,j,k)

# 31. Import the stores.csv dataset and save it as df1.

# ('D:/AnalyticLab/Given Task/R-Language/R Practice Assignment/R Foundation Assignment/Datasets'/'stores.csv')

df1<-read.csv('D:/AnalyticLab/Given Task/R-Language/R Practice Assignment/R Foundation Assignment/Datasets/stores.csv')
View(df1)


# 32. Apply below functions on stores data frame and observe the outputs.
# class(df1)
# names(df1)
# length(df1)
# dim(df1)
# str(df1)
# head(df1)
# tail(df1)
# fix(df1)
# summary(df1)
# Hmisc::describe(df1)

class(df1)
names(df1)
length(df1)
dim(df1)
str(df1)
head(df1)
tail(df1)
fix(df1)
summary(df1)
Hmisc::describe(df1)



# 33. Import the second sheet of the excel file CarData.xlsx and save it as Car.Info

library('readxl')

Car.Info<-read_excel('D:/AnalyticLab/Given Task/R-Language/R Practice Assignment/R Foundation Assignment/Datasets/CarData.xlsx',sheet=2)


# 34. Save the object df1 as an .RData file in the hard drive (df1.RData).

save(df1,file ='df1.RData')


# 35. Save all the objects created so far in a .RData File. Name it as My_Backup.

save(objects,file='My_Backup.RData')


# 36. Delete df1 and Car.Info from the global environment.

rm('df1','Car.Info')



# 37. Find the names of all the current objects in the global environment and save this information in an object 'Current_objects_in_GE'.
Current_objects_in_GE<-objects()
# ls()

# 38. Delete all the objects available in the global environment.
rm(list=setdiff(ls(),'keep_variable'))

# 39. Import the df1.RData file from the hard drive.
load(file = 'D:/AnalyticLab/Given Task/R-Language/R Practice Assignment/R Foundation Assignment/Datasets/df1.RData')


# 40. Find the summary details of df1 (Hint: use summary() or Hmisc::describe()).
# Structure Based Data Manipulation
summary(df1)

Hmisc::describe(df1)

# 41. Find details regarding the structure of df1 (Hint: use str())

str(df1)

# 42. Extract the column Staff_Cnt from df1 and save it in an object 'Staff_Count'.
Staff_Count<-df1$Staff_Cnt

# 43. Add 10 to every value of the vector 'Staff_Count' and name it as 'Updated_ Staff_Count'.

Updated_Staff_Count <- Staff_Count+10


# 44. Add this vector 'Updated_ Staff_Count' as a column in the data.frame df1.
df1<-cbind(df1,Updated_Staff_Count)


# 45. Create an object 'Store_Details' by extracting the following columns from df1 - StoreCode, StoreName, StoreType, Location, OwnStore.

Store_Details<-df1[c('StoreCode', 'StoreName', 'StoreType', 'Location', 'OwnStore')]


# 46. Find the class of Store_Details.


class(Store_Details)


# 47. Change the data type of the column StoreName from factor to character.
as.character(Store_Details$StoreName)



# 48. Rename the column 'AcqCostPercust' to 'ACPC' and 'ProfitPercust' to 'PPC'.
names(df1)[names(df1) == 'AcqCostPercust'] <- 'ACPC'
names(df1)[names(df1) == 'ProfitPercust'] <- 'PPC'

df1

# 49. Create a column 'MarketingSpend' which has a constant value of 200. Use this column to create another column 'UpdatedOperatingCost' which is OperatingCost + MarketingSpend.

df1$MarketingSpend<-200
df1$UpdatedOperatingCost<-df1$OperatingCost+df1$MarketingSpend


# 50. Delete the column MarketingSpend.


df1<-subset(df1,select=-c(MarketingSpend))
df1


# 51. In df1, the UpdatedOperatingCost should be next to the column OperatingCost.
names(df1)

df1<-df1[,c(1,2,3,4,5,17,6,7,8,9,10,11,12,13,14,15,16)]

df1



# 52. In df1, Create new variable store_class as follows.
# If total sales<120 then "Low Perform store"
# If total sales>=120 and total sales<240 then "Average Perform store"
# If total sales>240 then "High Perform store"
# Content Based Data Manipulation

View(df1)

# store_class <- c()
# for i in df1$TotalSales:
#   if(i<120){
#     store_class = 'Low Perform store'
#   }else if(i>=120 & i<240){
#     store_class = 'Average Perform store'
#   }else if(i>240){
#     store_class = 'High Perform store'
#   }

df1$store_class[df1$TotalSales<120]<-'Low Perform store'
df1$store_class[df1$TotalSales>=120 & df1$TotalSales<240]<-'Average Perform store'
df1$store_class[df1$TotalSales>240]<-'High Perform store'

# 53. Find the names of the top 3 SuperMarket stores of Delhi with the highest TotalSales.

head(df1[df1$StoreType=='Super Market'& df1$Location=='Delhi'& df1$store_class=='High Perform store',],3)


# 54. Find the information such as the StoreName, TotalSales, OperatingCost and Staff_Cnt of the stores where the store is owned and there is an online presence.

df1[ df1$OwnStore==1 & df1$OnlinePresence==1,c('StoreName','TotalSales','OperatingCost','Staff_Cnt')]




# 55. Check if there are any duplicate rows in df1

anyDuplicated(df1)




# 56. Check if there are any duplicate rows in df1 on the basis of StoreCode.

anyDuplicated(df1$StoreCode)




# 57. Create a new dataset that has removed duplicates on the basis of StoreName and StoreCode.


new_dataset<-df1[!duplicated(df1$StoreName , df1$StoreCode),]


# 58. How to find missing values in the df1 dataset and recode missing values with 0? Delete the missing values (if there are any) from the data set?

sum(is.na(df1))

View(replace(df1,is.na(df1),0))

View(na.omit(df1))

df1 
# 59. Sort the df1 data as follows
# a. Create new dataset (newstores) with sorted data by "Storetype"
# b. Create new dataset (newstores) with sorted data by location(ascending) and totalsales in descending order.

# a)
newstores<-df1[order(df1$StoreType),]
newstores

# b)
newstores<-df1[order(c(df1$location,-df1$TotalSales)),]

# 60. Create subsets of data from stores data as following conditions.
# a. Only Columns 5,7, 8,9
# b. Excluding columns 5, 7, 8,9
# c. Selecting first 10 observations
# d. Observations with Storetype= Apparel and totalsales>100
# e. Columns (storecode, storename, location, totalsales) with totalsales between 100 & 300.
# f. Include all columns from Storecode to Basketsize with storetype=Electronics and totalsale>100

# a)
newstores[c(5,7,8,9)]
# b)
newstores[-c(5,7,8,9)]
# c)
head(newstores,10)
# d)
newstores[newstores$StoreType=='Apparel'& newstores$TotalSales>100,]
# e)
newstores[newstores$TotalSales>100 & newstores$TotalSales<300,c('StoreCode', 'StoreName', 'Location', 'TotalSales')]
# f)
newstores[newstores$StoreType=='Electronincs' & newstores$TotalSales>100,1:11]
