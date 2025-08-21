-- Import data
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\retail_store_sales.csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Transaction_ID, @Customer_ID, @Category, @Item, @Price_Per_Unit, @Quantity, @Total_Spent, @Payment_Method, @Location, @Transaction_Date, @Discount_Applied)
SET
    Transaction_ID   = NULLIF(@Transaction_ID, ''),
    Customer_ID      = NULLIF(@Customer_ID, ''),
    Category         = NULLIF(@Category, ''),
    Item             = NULLIF(@Item, ''),
    Price_Per_Unit   = NULLIF(@Price_Per_Unit, ''),
    Quantity         = NULLIF(@Quantity, ''),
    Total_Spent      = NULLIF(@Total_Spent, ''),
    Payment_Method   = NULLIF(@Payment_Method, ''),
    Location         = NULLIF(@Location, ''),
    Transaction_Date = NULLIF(@Transaction_Date, ''),
    Discount_Applied = NULLIF(@Discount_Applied, '');
    
-- Copying dataset for alteration
CREATE TABLE retail_sales_copy LIKE retail_sales;
INSERT retail_sales_copy SELECT * FROM retail_sales;

SELECT * FROM retail_sales_copy;

-- Finding how many NULLS per column
SELECT
    SUM(CASE WHEN Transaction_ID   IS NULL THEN 1 ELSE 0 END) AS null_Transaction_ID,
    SUM(CASE WHEN Customer_ID      IS NULL THEN 1 ELSE 0 END) AS null_Customer_ID,
    SUM(CASE WHEN Category         IS NULL THEN 1 ELSE 0 END) AS null_Category,
    SUM(CASE WHEN Item             IS NULL THEN 1 ELSE 0 END) AS null_Item,
    SUM(CASE WHEN Price_Per_Unit   IS NULL THEN 1 ELSE 0 END) AS null_Price_Per_Unit,
    SUM(CASE WHEN Quantity         IS NULL THEN 1 ELSE 0 END) AS null_Quantity,
    SUM(CASE WHEN Total_Spent      IS NULL THEN 1 ELSE 0 END) AS null_Total_Spent,
    SUM(CASE WHEN Payment_Method   IS NULL THEN 1 ELSE 0 END) AS null_Payment_Method,
    SUM(CASE WHEN Location         IS NULL THEN 1 ELSE 0 END) AS null_Location,
    SUM(CASE WHEN Transaction_Date IS NULL THEN 1 ELSE 0 END) AS null_Transaction_Date,
    SUM(CASE WHEN Discount_Applied IS NULL THEN 1 ELSE 0 END) AS null_Discount_Applied
FROM retail_sales_copy;

-- Searching for duplicate rows
WITH duplicate_cte_sales AS
(SELECT *, ROW_NUMBER() OVER(
PARTITION BY Transaction_ID, Customer_ID, Category, Item, Price_Per_Unit, Quantity, Total_Spent, Payment_Method, Location, 
Transaction_Date, Discount_Applied) AS row_num
FROM retail_sales_copy) 
SELECT * FROM duplicate_cte_sales WHERE row_num > 1;

-- Creating table containing category, item and its price
CREATE TABLE ItemPriceLookup AS
SELECT 
    Category,
    Item,
    MAX(Price_Per_Unit) AS Price_Per_Unit  
FROM retail_sales_copy
WHERE Item IS NOT NULL AND Price_Per_Unit IS NOT NULL
GROUP BY Category, Item;

-- Fill missing Price_Per_Unit
UPDATE retail_sales_copy
SET Price_Per_Unit = (Total_Spent/Quantity)
WHERE Price_Per_Unit IS NULL
  AND Total_Spent IS NOT NULL
  AND Quantity IS NOT NULL;
  
-- Fill missing Item based on Price_Per_Unit
UPDATE retail_sales_copy r
JOIN ItemPriceLookup l 
    ON r.Category = l.Category AND r.Price_Per_Unit = l.Price_Per_Unit
SET r.Item = l.Item
WHERE r.Price_Per_Unit IS NOT NULL 
  AND r.Item IS NULL;
  
-- 604 rows have both Total_Spent and Quantity missing, and will be dropped
DELETE FROM retail_sales_copy WHERE Total_Spent IS NULL AND Quantity IS NULL;