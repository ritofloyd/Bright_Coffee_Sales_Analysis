SELECT *
FROM BRIGHT.COFFEE.SHOP;

--EDA
--Checking the number of coffee stores
SELECT DISTINCT STORE_LOCATION
FROM BRIGHT.COFFEE.SHOP;

--Checking the number of product category
SELECT DISTINCT product_category
FROM BRIGHT.COFFEE.SHOP;

--Checking the number of product type
SELECT DISTINCT PRODUCT_TYPE
FROM BRIGHT.COFFEE.SHOP;

--Date and Time Functions
--Checking the first operating date
SELECT MIN(TRANSACTION_DATE) AS First_operating_date
FROM BRIGHT.COFFEE.SHOP;

--Checking the last operating date
SELECT MAX(TRANSACTION_DATE) AS Last_operating_date
FROM BRIGHT.COFFEE.SHOP;


--Checking the shop opening time
SELECT MIN (TRANSACTION_TIME) AS Opening_time
FROM BRIGHT.COFFEE.SHOP;

--Checking the shop closing time 
SELECT MAX (TRANSACTION_TIME) AS Closing_time
FROM BRIGHT.COFFEE.SHOP;

-------------------------------------------------------------------------------
SELECT transaction_date, 
DAYNAME(transaction_date) AS day_name, 
CASE 
     WHEN DAYNAME(transaction_date)IN ('Sat','Sun') THEN 'Weekend'
     ELSE 'Weekday'
     END AS day_classification, 
MONTHNAME(TRANSACTION_DATE) AS Month_name, 
transaction_time, 
CASE
     WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN 'Morning'
     WHEN transaction_time BETWEEN '12:00:00' AND '15:59:59' THEN 'Aftenoon' 
     WHEN transaction_time BETWEEN '16:00:00' AND '19:59:59' THEN 'Evening'
     WHEN transaction_time > '20:00:00' THEN 'LATE NIGHT'
     END AS time_bucket, 

    HOUR(transaction_time) AS hour_of_day,
product_category, 
store_location,
product_detail,
product_type, unit_price, 
transaction_qty, 
unit_price*transaction_qty AS Total_revenue,

FROM bright.coffee.shop;

            
