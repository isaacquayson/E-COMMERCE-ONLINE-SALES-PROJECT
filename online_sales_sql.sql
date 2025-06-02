
-- viewing the data
SELECT * FROM online_sales_data
LIMIT 10;

-- Total Revenue
SELECT SUM(Quantity * UnitPrice) AS 'Total Revenue'
FROM online_sales_data ;

-- CHECKING THE YEARS IN THE DATA
SELECT DISTINCT SUBSTRING(InvoiceDate, 7, 4) AS 'years' FROM online_sales_data;

-- Total Price per each year
SELECT SUBSTRING(InvoiceDate, 7, 4) AS 'years',
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- TOP 10 CUSTOMERS BY SPENDING
SELECT online_sales_data.CustomerID, Country, ROUND(SUM(Quantity * UnitPrice * (1 - Discount)), 3) AS 'TOTAL SPENT'
FROM online_sales_data
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

-- Total Price per each MONTH
SELECT SUBSTRING(InvoiceDate, 4, 2) AS 'years',
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- ORDERS BY SHIPMENT COST
SELECT ShipmentProvider, COUNT(*) AS NUMBER_OF_ORDERS, 
SUM(ShippingCost) AS 'TOTAL SHIPPING COST'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- TOTAL PRICE PER EACH CATEGORY
SELECT online_sales_data.Category,
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- Total Price per each COUNTRY
SELECT online_sales_data.Country,
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- Payment method mostly used 
SELECT online_sales_data.PaymentMethod, COUNT(*) AS COUNT 
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- TOTAL PRICE OF GOODS PER EACH PAYMENT METHOD 
SELECT online_sales_data.PaymentMethod, 
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- MOST PATRONISED PRODUCT CATEGORY PER EACH COUNTRY 
SELECT online_sales_data.Country, online_sales_data.Category, 
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1, 2
ORDER BY 1, 3 DESC;

-- NUMBER OF ITEMS RETURNED COMPARED TO NOT RETURNED 
SELECT online_sales_data.ReturnStatus, COUNT(*) AS COUNT 
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- AVERAGE SHIPPING COST FOR EACH COUNTRY 
SELECT online_sales_data.Country, ROUND(AVG(online_sales_data.ShippingCost), 2) AS 'AVERAGE SHIP COST'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- TOTAL SHIPPING COST FOR EACH SHIPMENT PROVIDER 
SELECT online_sales_data.ShipmentProvider, ROUND(SUM(online_sales_data.ShippingCost), 2) AS 'TOTAL SHIP COST'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- TOTAL PRICE PER EACH WARE HOUSE LOCATION 
SELECT online_sales_data.WarehouseLocation, 
ROUND(SUM(online_sales_data.Quantity * online_sales_data.UnitPrice), 3) AS 'Total Price'
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- ORDER PRIORITY COUNT FOR EACH CATEGORY

SELECT online_sales_data.OrderPriority, COUNT(*) AS COUNT 
FROM online_sales_data
GROUP BY 1
ORDER BY 2 DESC;

-- Product return rate by category
SELECT Category,
       COUNT(CASE WHEN ReturnStatus = 'Returned' THEN 1 END) AS ReturnedOrders,
       COUNT(*) AS TotalOrders,
       ROUND((COUNT(CASE WHEN ReturnStatus = 'Returned' THEN 1 END) / COUNT(*)) * 100, 2) AS ReturnRate
FROM online_sales_data
GROUP BY Category
ORDER BY ReturnRate DESC;

