# 🍕 Pizza Sales Analysis (SQL + Power BI)  

## 📊 Project Overview  
This project combines **SQL queries** and an **interactive Power BI dashboard** to analyze one year of pizza sales data (Jan 2015 – Dec 2015).  

The analysis provides insights into **revenue, ordering trends, category/size performance, and best & worst selling pizzas**.  

---

## 🔹 SQL Analysis  

SQL was used to perform data exploration, calculate KPIs, and prepare datasets for visualization.  

### 📌 KPIs Calculated  
- **Total Revenue**  
- **Average Order Value**  
- **Total Pizzas Sold**  
- **Total Orders**  
- **Average Pizzas per Order**  

📌 Example Query – **Total Revenue**  
```sql
SELECT SUM(total_price) AS Total_Revenue 
FROM pizza_sales;
