-- IntelliPaat SQL SERVER ASSIGNMENT
-- Mohammad Jasir (mohammedjasir660@gmail.com)

-- Introduction to SQL Server Assignment

-- Problem Statement:
-- Consider yourself to be Sam who is a student at a prestigious university. Youhave enrolled for the SQL course and it is your first semester. Tasks To Be Performed:

-- 1. Install MS SQL Server
select @@version;
go

-- 2. Give the difference between Char and Varchar data type.

-- CHAR data type has fixed length memory. Which means if a column of CHAR(50) is declared then regardless of the input the storage will remain as 50 characters
-- Meanwhile, when VARCHAR(50) is declared a maximum of 50 characters can be inserted but then the memory storage will depend of the input value


-- 3. Explain the types of SQL Commands.
SQL Commands can be categorised into the following types
>DDL: Data Definition Language are sets of commands that are used to define or modify database structures. 'CREATE', 'ALTER', 'DROP'
are examples of DDL Commands. In short they are command to create and modify Tables, views, functions etc.
>DQL: Data Query Language is the command to query databast objects to retrieve data. For example 'SELECT' command
>DML
>DCL
>TCL
-- 4. Explain NVarchar and Nchar.
