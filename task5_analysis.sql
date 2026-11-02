-- Q1: Top 10 Best-Selling Products

SELECT
    Track.TrackId,
    Track.Name AS Product_Name,
    SUM(InvoiceLine.Quantity) AS Total_Quantity_Sold,
    ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) AS Total_Revenue

FROM Track

JOIN InvoiceLine
    ON Track.TrackId = InvoiceLine.TrackId

GROUP BY
    Track.TrackId,
    Track.Name

ORDER BY
    Total_Quantity_Sold DESC

LIMIT 10;