SELECT *
FROM procurement_dataset
LIMIT 10;
SELECT *
FROM procurement_dataset
LIMIT 5;
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'procurement_dataset';
SELECT "Supplier",
       SUM("Purchase Order Value") AS Total_Spend
FROM procurement_dataset
GROUP BY "Supplier"
ORDER BY Total_Spend DESC;
SELECT "Category",
       SUM("Purchase Order Value") AS Total_Spend
FROM procurement_dataset
GROUP BY "Category"
ORDER BY Total_Spend DESC;
SELECT "Department",
       SUM("Purchase Order Value") AS Total_Spend
FROM procurement_dataset
GROUP BY "Department"
ORDER BY Total_Spend DESC;
SELECT "Supplier",
       ROUND(AVG("Lead Time"),2) AS Avg_Lead_Time
FROM procurement_dataset
GROUP BY "Supplier"
ORDER BY Avg_Lead_Time DESC;
SELECT "Supplier",
       SUM("Savings Achieved") AS Total_Savings
FROM procurement_dataset
GROUP BY "Supplier"
ORDER BY Total_Savings DESC;
SELECT "Payment Status",
       COUNT(*) AS Orders
FROM procurement_dataset
GROUP BY "Payment Status";
