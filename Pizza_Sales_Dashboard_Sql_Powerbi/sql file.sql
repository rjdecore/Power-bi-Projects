create database pizza;
use pizza;

select order_date,
dayname(str_to_date(order_date,'%d-%m-%y')) as'day' from pizza_sales;

UPDATE pizza_sales
SET order_date_clean = STR_TO_DATE(order_date, '%d-%m-%Y');

alter table pizza_sales drop column order_date;

alter table pizza_sales add column order_time_new time;

update pizza_sales
set order_time_new = STR_TO_DATE(order_time, '%H:%i:%s');

alter table pizza_sales change column order_time_new order_time time;
alter table pizza_sales change column order_date_clean order_date date;

select order_date,dayname(order_date) as day from pizza_sales;



-- kpi
-- 1. Total Revenue:
select * from pizza_sales;

select sum(total_price) as'Total-Revenue' from pizza_sales;

-- 2.2. Average Order Value
select * from pizza_sales;
select sum(total_price)/count(distinct(order_id)) as avg_order_value from pizza_sales;

-- total pizza_sold
select sum(quantity) as'total_pizza_sold' from pizza_sales;

-- total_orders
select count(distinct(order_id)) as avg_order_value from pizza_sales;

-- avg_pizza per order
select * from pizza_sales;

select (sum(quantity) /count(distinct(order_id))) as avg_pizza_per_order from pizza_sales; 


--  daily trend for  total_orders
select* from pizza_sales;

select dayname(order_date) as 'day_name',count(distinct(order_id)) as 'total_order' from pizza_sales
group by day_name
order by total_order desc;

select dayname(order_date) as 'day_name',sum(total_price) as 'total_revenue' from pizza_sales
group by day_name
order by total_revenue desc;
-- monthly trend of total_order and revenue
select monthname(order_date) as 'month_name',count(distinct(order_id)) as 'total_order' from pizza_sales
group by month_name
order by total_order desc;

select monthname(order_date) as 'month_name',sum(total_price) as 'total_revenue' from pizza_sales
group by month_name
order by total_revenue desc;

--  % of sales by pizza_category

select pizza_category,sum(total_price) as sum from pizza_sales
group by pizza_category;


SELECT 
  pizza_category,
  round(SUM(total_price),3) AS category_sales,
  round(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales),2) AS percent_of_total_sales
FROM pizza_sales
GROUP BY pizza_category;


-- % sales by pizza_size
select 
  pizza_size,
  sum(total_price) as 'size-sale',
  sum(total_price)*100/(select sum(total_price) from pizza_sales) as 'percentage_sales'
  from pizza_sales
  group by pizza_size
  order by sum(total_price) desc ;
  
  -- total pizza sold by category
  select pizza_category,sum(quantity)  as 'total_pizza'from pizza_sales
  group by pizza_category
  order by total_pizza desc;
  
  
  -- top 5 pizza by revenue
  select pizza_name ,sum(total_price)as'Revenue' from pizza_sales
  group by pizza_name
  order by Revenue desc limit 5;
  
  -- bottom 5 pizza by revenue
    select pizza_name ,sum(total_price)as'Revenue' from pizza_sales
  group by pizza_name
  order by Revenue  limit 5;
  
  -- top 5 pizza by quantity
    select pizza_name ,sum(quantity)as'Total_quantity' from pizza_sales
  group by pizza_name
  order by Total_quantity desc limit 5;
  
  -- bottom 5 pizza by quantity
    select pizza_name ,sum(quantity)as'Total_quantity' from pizza_sales
  group by pizza_name
  order by Total_quantity  limit 5;
  
  -- top 5 pizza by total_order
    select pizza_name ,count(distinct(order_id))as'Total_order' from pizza_sales
  group by pizza_name
  order by Total_order desc limit 5;
  
    -- bottom 5 pizza by total_order
    select pizza_name ,count(distinct(order_id))as'Total_order' from pizza_sales
  group by pizza_name
  order by Total_order  limit 5;
 
 -- top 5 pizza by total order for classic category
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC limit 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Veggie'
GROUP BY pizza_name
ORDER BY Total_Orders ASC limit 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Supreme'
GROUP BY pizza_name
ORDER BY Total_Orders ASC limit 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Chicken'
GROUP BY pizza_name
ORDER BY Total_Orders ASC limit 5;

select distinct(pizza_category) from pizza_sales









