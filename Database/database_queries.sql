-- Extract total revenue by region
SELECT region, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;

-- Identify top-performing customers
SELECT customer_name, SUM(revenue) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

-- Identify top-performing products
SELECT product_name, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
