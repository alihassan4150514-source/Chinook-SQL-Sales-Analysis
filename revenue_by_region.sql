-- Q2: Revenue Per Region (Country)

SELECT
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS Total_Revenue

FROM Invoice

GROUP BY BillingCountry

ORDER BY Total_Revenue DESC;