-- create database supermarket_db;
-- use supermarket_db;

-- show tables; 
-- drop table d6;
 describe supermarket_data;
-- KPI session-- 
select sum(`Total`) as Total_sales
from supermarket_data;

select sum(`Tax 5%`) as total_tax
from supermarket_data;

select sum(`Quantity`) as total_quantity
from supermarket_data;

select sum(`Unit price`) as total_Unitprice
from supermarket_data;

select avg(`Rating`)as avg_rate
from supermarket_data;


-- -- ANALYSIS QUERIES---
select Branch,
sum(`Total`) as total_sales
from supermarket_data
group by Branch
order by total_sales desc;

select City, sum(`Total`)as total_sales
from supermarket_data
group by City
order by total_sales desc;

select Payment, sum(`Total`)as total_sales
from supermarket_data
group by Payment
order by total_sales desc;


SELECT 
    MONTH(Date) AS month,
    SUM(`Total`) AS total_monthly_sales
FROM supermarket_data
GROUP BY MONTH(Date)
ORDER BY month;

select Branch,avg(`Rating`)as Branch_rate
from supermarket_data
group by Branch
order by Branch_rate asc;

select "Product line", sum(`Quantity`)as total_quantity
from supermarket_data
group by "Product line"
order by total_quantity
