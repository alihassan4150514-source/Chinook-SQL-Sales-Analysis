-- Q3: Monthly Sales Performance

SELECT
    strftime('%Y-%m', InvoiceDate) AS Sales_Month,
    COUNT(InvoiceId) AS Total_Orders,
    ROUND(SUM(Total), 2) AS Monthly_Revenue

FROM Invoice

GROUP BY Sales_Month

ORDER BY Sales_Month;