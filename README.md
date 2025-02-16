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
![image](https://github.com/user-attachments/assets/98089662-6dc1-4367-8cb4-58844d42dfa4)
![image](https://github.com/user-attachments/assets/2667754e-cf75-425d-aa40-c0cdd7070c85)
![image](https://github.com/user-attachments/assets/90f9684c-e445-4559-982d-ae7836a2582f)


## 📥 How to Run the 

- Download the dashboard from[Dashboard]
- Download the data from[Database] Dump the data into your sql
- And connect Sql to your **Power Bi**
- Wait for the data to load
- Explore the Dashboard
- Use filters and slicers to analyze sales trends.
- Hover over visual elements for additional insights.
- Check revenue trends, top customers, and product sales.
- Modify or Extend the Report
- Add new DAX measures ,See [DAX_Measures].
- Adjust Power Query transformations if needed.
- Optimize report performance using DAX Studio.
  
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
