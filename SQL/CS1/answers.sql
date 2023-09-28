-- 1. Display the number of states present in the LocationTable. 
SELECT COUNT(DISTINCT STATE) AS COUNT_OF_STATE
FROM LocationTable;
-- 2. How many products are of regular type?
SELECT COUNT(Product) AS PRODUCT_COUNT
FROM ProductTable
WHERE Type='Regular';
-- 3. How much spending has been done on marketing of product ID 1?
SELECT SUM(Marketing )
FROM FactTable 
WHERE ProductId=1;
-- 4. What is the minimum sales of a product?
SELECT MIN(SALES) AS MIN_SALES
FROM FactTable; 
-- 5. Display the max Cost of Good Sold (COGS). 
SELECT MAX(COGS) AS COGS 
FROM FactTable;
-- 6. Display the details of the product where product type is coffee. 
SELECT * 
FROM ProductTable
WHERE Type='Coffee';
-- 7. Display the details where total expenses are greater than 40. 
SELECT * 
FROM FactTable
WHERE Total_Expenses>40;
-- 8. What is the average sales in area code 719?
SELECT AVG(Sales)
FROM FactTable
WHERE area_code>719;
-- 9. Find out the total profit generated by Colorado state.
select SUM(profit) as total_profit
from FactTable
join LocationTable ON FactTable.area_code = LocationTable.area_code
WHERE STATE='COLORADO';
-- 10. Display the average inventory for each product ID. 
SELECT ProductId, AVG(INVENTORY) AS AVG_INVENTORY 
FROM FactTable
GROUP BY ProductId
ORDER BY ProductId;
-- 11. Display state in a sequential order in a Location Table. 
SELECT DISTINCT STATE
FROM LocationTable
ORDER BY STATE;
-- 12. Display the average budget of the Product where the average budget margin should be greater than 100. 
-- SELECT AVG([Budget Margin]) 
-- FROM FactTable 
-- WHERE  [Budget Margin] > (SELECT AVG([Budget Margin]) FROM FactTable WHERE [Budget Margin]>100);
SELECT AVG([Budget Margin]) as AVG_BUDGET_MARGIN
FROM FactTable
GROUP BY ProductId
HAVING AVG([Budget Margin]) > 100;
-- 13. What is the total sales done on date 2010-01-01?
SELECT SUM(Sales) AS TOTAL_SALES
FROM FactTable
WHERE Date='2010-01-01';
-- 14. Display the average total expense of each product ID on an individual date. 
SELECT ProductID, Date, AVG([Total Expenses]) as AVG_TOTAL_EXPENSES 
from FactTable 
GROUP BY ProductID, Date 
ORDER BY ProductID, Date
-- 15. Display the table with the following attributes such as date, productID, product_type, product, sales, profit, state, area_code. 

-- 16. Display the rank without any gap to show the sales wise rank. 
select dense_rank() over(order by sales desc) as SALES_RANK, sales
from FactTable;
-- 17. Find the state wise profit and sales. 
select STATE, SUM(PROFIT), SUM(SALES)
from FactTable
JOIN LocationTable On FactTable.area_code = LocationTable.area_code
GROUP BY LocationTable.STATE
-- 18. Find the state wise profit and sales along with the productname. 
-- 19. If there is an increase in sales of 5%, calculate the increasedsales. 
-- 20. Find the maximum profit along with the product ID and producttype. 
-- 21. Create a stored procedure to fetch the result according to the product typefrom Product Table. 
-- 22. Write a query by creating a condition in which if the total expenses is lessthan60 then it is a profit or else loss. 
-- 23. Give the total weekly sales value with the date and product IDdetails. Useroll-up to pull the data in hierarchical order. 
-- 24. Apply union and intersection operator on the tables which consist of attribute area code. 
-- 25. Create a user-defined function for the product table to fetch a particular product type based upon the user’s preference.