#########################################################################
#########################################################################
## A Simple Guide on Connecting RStudio to PostgreSQL
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
## Connect RStudio to PostgreSQL database
#########################################################################
#########################################################################

## Check whether a connect exists
con <- dbCanConnect(RPostgres::Postgres(),
                 dbname = "yourdatabasename",
                 port = 5432,
                 user = "postgres",
                 password = "yourpassword")

## Print the result
con

## Create the connection object
con_1 <- dbConnect(RPostgres::Postgres(),
                 dbname = "Employees",
                 port = 5432,
                 user = "postgres",
                 password = "yourpassword")

## Print the result
con_1

## List out all views and tables in the employees 
dbListTables(con_1)

## Retrieve all the data from the employees table
dbGetQuery(con_1, "SELECT * FROM employees")

## Save this result as an R object
emp_df <- dbGetQuery(con_1, "SELECT * FROM employees")

## Check the dimension
dim(emp_df)

## Take a glimpse at the data
glimpse(emp_df)

## Print the first and last 6 rows
head(emp_df)
tail(emp_df)

## Close the connect
dbDisconnect(con_1)

## Count how many employees were 
## employed on or before 1st January, 1990
emp_df %>% 
  filter(hire_date <= "1990-01-01") %>% 
  count()

## Create a connection using RStudio API
conn1 <- dbConnect(RPostgres::Postgres(),
                   dbname = "yourdatabasename",
                   user = rstudioapi::askForPassword("Database user"),
                   password = rstudioapi::askForPassword("Database password"),
                   port = 5432)


##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
###-------------------- THANK YOU FOR LEARNING WITH ME!!! -------------------##
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##


