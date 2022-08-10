#########################################################################
#########################################################################
## A Simple Guide on Connecting RStudio to MySQL
#########################################################################
#########################################################################

#########################################################################
#########################################################################
## Getting Started
#########################################################################
#########################################################################

## Install required packages
install.packages(c("DBI", "RODBC", "odbc", "dplyr", "dbplyr"))

## Import required packages
library(DBI)
library(RODBC)
library(odbc)
library(dplyr)
library(dbplyr)

#########################################################################
#########################################################################
## Connect RStudio to MySQL database
#########################################################################
#########################################################################

## Check a list of unique database drivers on my system
sort(unique(odbcListDrivers()[[1]]))

## Create database connection
conn <- dbConnect(RMySQL::MySQL(),
                  dbname = "yourdatabasename",
                  Server = "localhost",
                  port = 3306,
                  user = "root",
                  password = "yourpassword")

## List the tables in the database
dbListTables(conn)

## Query the first 500 rows from the employees table
emp_data <- dbGetQuery(conn, "SELECT * FROM employees LIMIT 500")

## Take a glimpse at the data
glimpse(emp_data)

## Close the connection
dbDisconnect(conn)

## Print the first six rows
head(emp_data)

#########################################################################
#########################################################################
## Bonus Section: Using dbplyr
#########################################################################
#########################################################################

## Create database connection
conn <- dbConnect(RMySQL::MySQL(),
                  dbname = "yourdatabasename",
                  Server = "localhost",
                  port = 3306,
                  user = "root",
                  password = "yourpassword")

## Retrieve the first 500 rows from the employees table
tbl(conn, sql("SELECT * FROM employees LIMIT 500"))

## Retrieve the first 500 rows of the employees table
new_emp_data <- tbl(conn, "employees") %>% 
  as.data.frame() %>% 
  slice(1:500)

## Close the connection
dbDisconnect(conn)

## Check the dimension
dim(new_emp_data)

## Select some columns and first 6 rows
new_emp_data %>%
  dplyr::select(first_name, last_name, department, salary) %>% 
  head()

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
###-------------------- THANK YOU FOR LEARNING WITH ME!!! -------------------##
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##


