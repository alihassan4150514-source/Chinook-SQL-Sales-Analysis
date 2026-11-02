# SQL-Based Product Sales Analysis

## Project Overview
This project analyzes sales data from the Chinook database using SQL and Python SQLite. The objective is to identify best-selling products, analyze revenue by country, and evaluate monthly sales performance.

## Tools & Technologies
- SQL
- SQLite
- Python
- SQLite3
- VS Code

## Database
Chinook SQLite Database

Main tables used:
- Track
- InvoiceLine
- Invoice
- Customer

## Analysis Tasks

### 1. Top 10 Best-Selling Products
- Joined Track and InvoiceLine tables.
- Calculated total quantity sold.
- Calculated total revenue for each product.
- Sorted products by quantity sold.

### 2. Revenue Per Country
- Used Invoice table.
- Grouped sales by billing country.
- Calculated total revenue for each country.

**Key Finding:** USA generated the highest revenue ($523.06), followed by Canada ($303.96).

### 3. Monthly Sales Performance
- Extracted year and month from invoice dates.
- Calculated monthly order counts.
- Calculated monthly revenue.

**Key Findings:**
- Data covers January 2009 to December 2013.
- Highest monthly revenue was $52.62 in January 2010.
- Lowest monthly revenue was $23.76 in November 2011.

### 4. Bonus: Product Revenue Ranking
- Used SQL window function `RANK()`.
- Ranked products based on total revenue.
- Products with equal revenue received the same rank.

## Project Files
- `Chinook_Sqlite.sqlite` – Database file
- `check_database.py` – Database connection and table inspection
- `run_queries.py` – Executes SQL queries
- `task5_analysis.sql` – Best-selling products analysis
- `revenue_by_region.sql` – Country-wise revenue analysis
- `monthly_sales.sql` – Monthly sales analysis
- `bonus_product_ranking.sql` – Revenue ranking using RANK()

## Conclusion
This project demonstrates the use of SQL joins, aggregate functions, GROUP BY, ORDER BY, date functions, and window functions to analyze sales data and extract business insights.

## Internship
Elevvo Path – Data Analytics Internship