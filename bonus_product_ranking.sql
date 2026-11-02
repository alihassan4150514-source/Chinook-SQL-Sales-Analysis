-- Bonus: Rank Products by Total Revenue

SELECT
    Product_Name,
    Total_Quantity_Sold,
    Total_Revenue,
    RANK() OVER (
        ORDER BY Total_Revenue DESC
    ) AS Revenue_Rank

FROM (
    SELECT
        Track.Name AS Product_Name,
        SUM(InvoiceLine.Quantity) AS Total_Quantity_Sold,
        ROUND(
            SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2
        ) AS Total_Revenue

    FROM Track

    JOIN InvoiceLine
        ON Track.TrackId = InvoiceLine.TrackId

    GROUP BY Track.TrackId, Track.Name
)

ORDER BY Revenue_Rank
LIMIT 10;