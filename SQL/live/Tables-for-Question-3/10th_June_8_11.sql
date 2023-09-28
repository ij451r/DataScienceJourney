JOIN:

SELECT * FROM EmployeeDetails

SELECT * FROM Department

a)-INNER JOIN 
b)-LEFT JOIN 
c)-RIGHT JOIN 
d)-CROSS JOIN 
e)-FULL OUTER JOIN
--****************************************************************************************
INNER JOIN

SELECT 
EmployeeID,FirstName,LastName,DepartmentName
FROM 
EmployeeDetails 
INNER JOIN Department ON EmployeeDetails.DepartmentID=Department.DepartmentID


SELECT 
*
FROM 
EmployeeDetails 
INNER JOIN Department ON EmployeeDetails.DepartmentID=Department.DepartmentID
----***************************************************************************************
LEFT JOIN----->In left join it will return all the data from left table and matching record from right table


SELECT 
EmployeeID,FirstName,LastName,DepartmentName
FROM 
EmployeeDetails ---->LEFT TABLE
LEFT JOIN Department ON EmployeeDetails.DepartmentID=Department.DepartmentID---->RIGHT TABLE

---*************************************************************************************
RIGHT JOIN--->IT will return all the data from right table and matching record from left table


SELECT 
EmployeeID,FirstName,LastName,DepartmentName
FROM 
EmployeeDetails ---->LEFT TABLE
RIGHT JOIN Department ON EmployeeDetails.DepartmentID=Department.DepartmentID---->RIGHT TABLE

---********************************************************************************************


1)-Write a query to return those worker who are working as a Executive

SELECT 
* 
FROM
Worker 
INNER JOIN WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID
WHERE Title='Executive'


2)-write a query to return those worker who have a title information?
SELECT
* 
FROM 
Worker 
INNER JOIN WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID



3)-Write down a query to fecth those worker who are working in ADMIN department?						

SELECT 
* 
FROM 
Worker 
JOIN Department ON Worker.DepartmentID=Department.DepartmentID
WHERE DepartmentName='Admin'


4)-Write a query to return all the worker/Title Info who are working in our company ?


SELECT 
* 
FROM 
Worker 
LEFT JOIN WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID
---**********************************************************************************
FULL OUTER JOIN:(LEFT JOIN + RIGHT JOIN)--> it will return all the data from left table and right table


SELECT 
EmployeeID,FirstName,LastName,DepartmentName 
FROM 
EmployeeDetails 
FULL OUTER JOIN Department ON EmployeeDetails.DepartmentID=Department.DepartmentID
---***********************************************************************************
CROSS JOIN

SELECT 
EmployeeID,DepartmentName 
FROM 
EmployeeDetails 
CROSS JOIN Department


---*******************************************************************************
SELECT 
EmployeeId,FirstName,LastName,Date
FROM 
EmployeeDetails
CROSS JOIN DimDate



SELECT * FROM DimDate

--******************************************************************************************
UNION------>ALways Return unique values
UNION ALL 
INTERSECT
EXCEPT




SELECT * FROM EmployeeDetails WHERE DepartmentID=1
UNION
SELECT * FROM EmployeeDetails WHERE DepartmentID=2
--*********************************
SELECT EmployeeID FROM EmployeeDetails WHERE DepartmentID=1
UNION
SELECT EmployeeID FROM EmployeeDetails WHERE ClientID=1



SELECT EmployeeID FROM EmployeeDetails WHERE DepartmentID=1
UNION ALL
SELECT EmployeeID FROM EmployeeDetails WHERE ClientID=1

---*******************************************************
TWO Thumb Rule:

1)-All the query should have same number of column:
2)Each query should have same data type for crossponding column

SELECT EmployeeID FROM EmployeeDetails WHERE DepartmentID=1
UNION ALL
SELECT EmployeeID FROM EmployeeDetails WHERE ClientID=1







SELECT EmployeeID,FirstName,LastName FROM EmployeeDetails WHERE DepartmentID=1
UNION ALL
SELECT EmployeeID,LastName,LastName FROM EmployeeDetails WHERE ClientID=1


14
15
16
4
14
16

0
120
255
-40000
SELECT * FROM Tinyint_Test
UNION
SELECT * FROM Integer_test
UNION ALL 
SELECT * FROM Tinyint_Test


-40000
0
120
255
0
120
255

 Select * from table 1 Union Select * from Table 2 Union All Select * from Table 3
--****************************************************************************************************
INTERSECT:

4
5
2
3
3
3
NULL
NULL
2
1
1
1
---
DEP:
1
2
3
4
5
6
7

SELECT DepartmentID FROM EmployeeDetails 
INTERSECT
SELECT DepartmentID FROM Department
--***********************************************************************************************
EXCEPT:


---************************************
1)-write a query to fetch the worker details who are working with at least one department?						

SELECT 
* 
FROM 
Worker 
JOIN Department ON Worker.DepartmentID=Department.DepartmentID

3)-write down a query to fetch the all worker detail details along with department and title detail?						

SELECT 
* 
FROM 
Worker 
LEFT JOIN  WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID
LEFT JOIN Department ON Worker.DepartmentID=Department.DepartmentID

	
4)-write down a query to fetch those worker who are working as a Manger for HR Department?						


SELECT 
* 
FROM 
Worker 
JOIN WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID
JOIN Department ON Department.DepartmentID=Worker.DepartmentID
WHERE WorkerTitle.Title='Manager' AND Department.DepartmentName='HR'


6)-write down a query to fetch those worker who are working as a LEAD and working with ACCOUNT Department						

SELECT 
* 
FROM 
Worker 
JOIN WorkerTitle ON Worker.WorkerID=WorkerTitle.WorkerID
JOIN Department ON Department.DepartmentID=Worker.DepartmentID
WHERE WorkerTitle.Title='LEAD' AND Department.DepartmentName='Account'

















































































































