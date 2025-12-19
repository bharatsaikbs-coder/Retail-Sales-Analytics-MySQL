SELECT * FROM gdb041.ele_store;
#1. What is total number of orders placed?  What is total number of orders placed?  
SELECT COUNT(*) AS total_orders
FROM gdb041.ele_store;
#2What are the unique channels present and how many are there?
select distinct channel from gdb041.ele_store;
select count(distinct channel) as total_number from gdb041.ele_store;
#3How many cities are there?
select count(distinct City) as cities from gdb041.ele_store;
#4) Query the total cities count by Country 
select Country,count(distinct City) as total_cities from gdb041.ele_store
group by Country;
#5)How many products are there? 
select count(distinct ProductName) as no_of_products from gdb041.ele_store;
#6)Query the total sales and total profit? 
select sum(Sales) as total_Sales , sum(Profit) as total_Profit from gdb041.ele_store;
#7)Query the total sales by region and country?
select Region,Country,sum(Sales) as total_Sales from gdb041.ele_store
group by Region,Country;
#8)Query the total order qty by promotion name?
select PromotionName,sum(OrderQty) as total_Qty
from gdb041.ele_store
group by PromotionName;
#9) How much the total sales happened in Asia region? 
select Region,sum(Sales) as total_Sales from gdb041.ele_store
where Region = "Asia";
#10))  How much profit got in Asia region and India?
SELECT SUM(Profit) AS total_profit
FROM gdb041.ele_store
WHERE Region = 'Asia'
  AND Country = 'India';
#11)  Query the total order qty by Manufacturer and Product Name?
select Manufacturer,ProductName,sum(OrderQty) as total_Qty
from gdb041.ele_store
group by Manufacturer,ProductName;
#12) Query the total order quantity greater than 27 by city? 
select City,sum(OrderQty) as total_quantity 
from gdb041.ele_store
group by City
having sum(OrderQty) > 27;
#13)How much total sales happened in China and Beijing? 
select Country,City,sum(Sales) as total_sales 
from gdb041.ele_store
where Country = 'China'  and City = "Beijing";
#14) How much total sales happened in Asian Holiday Promotion? 
select PromotionName,sum(Sales) as Total_sales
from gdb041.ele_store
where PromotionName = "Asian Holiday Promotion";
#15) How much total profit value by Contoso, Ltd Manufacturer? 
select Manufacturer,sum(Profit) as total_profit 
from gdb041.ele_store
where Manufacturer = "Contoso, Ltd"
group by 1;
#16)  Query the total sales and total order qty by productcategory?
select ProductCategory,sum(Sales) as  tptal_sales,sum(OrderQty) as total_orderqty
from gdb041.ele_store
group by 1;
#17)Query the total sales value in between 1057 and 26700 by Region? 
SELECT 
    Region,
    SUM(Sales) AS total_sales
FROM gdb041.ele_store
GROUP BY Region
HAVING SUM(Sales) BETWEEN 1057 AND 26700;     
#18)18)  How many orders placed in Pittsfield city? 
SELECT COUNT(*) AS total_orders
FROM gdb041.ele_store
WHERE City = 'Pittsfield'; 
#19)  Query the total sales and total profit by region, country and city? 
select Region,Country,City,sum(Sales) as total_Sales,sum(Profit) as total_pprofit
FROM gdb041.ele_store
group by 1,2,3;
#20)  Query the total unit cost and total price by productcategory, productsubcategory 
and #anufacturer? ;
SELECT 
    ProductCategory,
    ProductSubcategory,
    Manufacturer,
    SUM(UnitCost) AS total_unit_cost,
    SUM(Price)    AS total_price
FROM gdb041.ele_store
GROUP BY 
    ProductCategory,
    ProductSubcategory,
    Manufacturer;

















