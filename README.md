# Connecting-RStudio-to-SQL-databases

Have you thought about the possibility of querying a relational database like PostgreSQL from RStudio? 

In 2021, I tried to do this, but I found out that there were not many resources explaining how to do that in great detail. I should have written this article a while ago. However, during that time, I taught a project-based course on Coursera titled "Manipulate R data frames using SQL in RStudio" to understand how to use and write SQL codes to query R data frames in RStudio. You can check out the course [here](https://www.coursera.org/learn/manipulate-r-data-frames-using-sql-rstudio/home/week/1).

In these articles, I will show you how to connect locally to a PostgreSQL and MySQL database. The ideas you will glean from this article will be helpful when connecting to other relational databases, including SQL Server, even if the database is in cloud storage.

Before exploring the article, a question that should come to mind is – what is the rationale for these articles? Why do I need to connect RStudio to SQL databases? 
Usually, data in a relational database are stored in a normalized format. Therefore, for data professionals to perform analyses such as statistical computing and data visualization, there is a need to write advanced and complex SQL queries. However, R can easily connect to many relational databases like PostgreSQL, MySQL, Oracle, SQL Server, etc., and retrieve data from them as a data frame. When the data is successfully in the R environment, it becomes a typical R data set, making it easy to manipulate or analyze using all the powerful packages and functions.

I believe that this provides a solid reason why this article is essential.

Now, click on the links below to read these articles.

* Learn to connect RStudio to a local PostgreSQL database [here](https://arimoroolayinka.medium.com/a-simple-guide-on-connecting-rstudio-to-a-postgresql-database-9e35ccdc08be)

* Learn to connect RStudio to a local MySQL database [here](https://arimoroolayinka.medium.com/a-simple-guide-on-connecting-rstudio-to-a-mysql-database-d8a8ca6573fd)

This repository contains the R codes used to explain the steps in the articles.
