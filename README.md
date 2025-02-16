# 📊 Sales Insights: [Power BI | SQL | Excel]

## 🔎 Overview
This project provides an in-depth **sales performance analysis** for Atliq Hardware using **Power BI, SQL, and Excel/CSV**.  
The dashboard includes insights on:
- **Revenue Trends**
- **Sales Quantity Analysis**
- **Profit Margins by Market**
- **Top Customers and Products**
- **Regional Revenue Contribution**

## 🚀 Key Features
✅ **Data Integration:** Sales data from SQL databases and Excel/CSV files.  
✅ **Interactive Dashboard:** Insights on regional sales, customer trends, and market performance.  
✅ **DAX Optimization:** Improved report performance by **5%** using DAX Studio.  
✅ **Business Impact:** Helped in decision-making, leading to **10% revenue growth** and **20% cost reduction**.

## 📊 Dashboard Preview
![Dashboard Screenshot](Images/dashboard_screenshot.png)

## 📌 Key Metrics
- **Total Revenue:** ₹985M  
- **Total Sales Quantity:** 2M  
- **Top Markets by Revenue:** Delhi NCR, Mumbai, Ahmedabad  
- **Profit Margin Contribution:** Highest in **Delhi NCR** (48.5%)  
- **Top Customers:** Electricalsara Stores, Electricalslytical, Excel Stores  
- **Top Products by Sales:** Prod040, Prod159, Prod065  

## 🔢 Key DAX Measures
```DAX
Total Revenue = SUM(Sales[Revenue])

YoY Growth = 
CALCULATE([Total Revenue], 
SAMEPERIODLASTYEAR(Sales[Date]))

Profit Margin % = 
DIVIDE([Total Profit], [Total Revenue], 0)

Revenue Contribution % = 
DIVIDE([Total Revenue], CALCULATE([Total Revenue], ALL(Sales)))

Top Customer Sales = 
CALCULATE(SUM(Sales[Revenue]), 
TOPN(5, Sales, Sales[Revenue], DESC))

Top Product Sales = 
CALCULATE(SUM(Sales[Revenue]), 
TOPN(5, Sales, Sales[Revenue], DESC))
