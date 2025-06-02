# E-COMMERCE-ONLINE-SALES-PROJECT

## Table of Contents
1. Abstract<br/>

2. Problem Statement

3. Introduction

4. Methodology

5. Data Source

6. Limitations

7. Key Findings from the Analysis

8. Recommendations

9. Conclusion


### Abstract
This project evaluates the performance of an e-commerce business by analyzing transactional data using SQL and visualizing insights through a dashboard.<br/>
The aim is to identify patterns in revenue generation, customer behavior, product performance,<br/>
and operational efficiency across categories, months, and countries. The dashboard provides actionable insights to enhance business decision-making.<br/>


### Problem Statement
Despite having extensive sales data, the company lacks clear insights into key performance metrics such as best-selling categories,<br/>
customer returns, and country-wise sales distribution. There is a need for a centralized, <br/>
interactive dashboard that aggregates, analyzes, and visualizes this information to support strategic planning and growth.<br/>



### Introduction
The rapid growth of e-commerce has created massive datasets that contain hidden insights. <br/>
Businesses must leverage data to understand trends, customer behaviors, and financial metrics. <br/>
This project uses real transactional data from an online retail business, <br/>
processed with SQL and visualized in a Power BI dashboard, to provide a comprehensive performance overview.<br/>


### Methodology
Tools Used:<br/>
SQL: For querying, aggregating, and preparing data<br/>

Power BI: For building the interactive sales performance dashboard<br/>

CSV File: Raw dataset uploaded for analysis<br/>

Steps:<br/>
1. Data Exploration: Viewing sample records using SELECT *<br/>

2. Revenue Analysis: Calculated total revenue by Quantity * UnitPrice<br/>

3. Time-Based Insights: Sales aggregated by year and month using substring on InvoiceDate<br/>

4. Customer Segmentation: Top spenders identified using group and order by clauses<br/>

5. Category & Country Analysis: Grouped data to find top-performing product categories and countries<br/>

6. Operational Metrics:<br/>

a. Shipping cost per provider and country<br/>

b. Return rates by category<br/>

c. Payment methods usage<br/>

d. Order priority and warehouse impact<br/>

7. Visualization: Bar charts, maps, and line graphs in Power BI<br/>

### Data Source 
https://www.kaggle.com/datasets/yusufdelikkaya/online-sales-dataset<br/>

### Limitations
1. Date Format: InvoiceDate required manual parsing using SUBSTRING

2. Missing Data: Potential data quality issues (e.g., missing CustomerIDs or Product info)

3. Static Snapshot: Dashboard reflects a point-in-time analysis; no real-time updates

4. No Demographic Data: Lacks age, gender, or customer preference details

5. Category Granularity: Categories are broad and may hide subcategory insights


### Key Findings from the Analysis

1. Total Sales: $42M

2. Total Quantity Sold: 1.115M items

3. Top-Selling Category: Furniture ($8.57M), followed closely by Accessories and Electronics

4. Most Active Months: March, August, and April had the highest sales peaks

5. Top 10 customers contributed significantly to revenue

6. Apparel and Accessories had higher return rates than Furniture

7. Return Rate overall was 9.8%

8. Shipping cost was highest for Furniture but also yielded the highest sales

9. Return volumes were concentrated in Apparel and Accessories

10. Most used payment methods were likely card-based (as per count in SQL queries)

11. Top Sales Regions: North America and Europe

12. High Return Rate Regions: Not specified, but correlated with high apparel sales


### Recommendations
1. Focus Marketing on High-Performing Categories
Promote and expand offerings in Furniture and Accessories which show high sales volumes and moderate return rates.

2. Optimize Shipping Costs
Re-negotiate with shipment providers with higher costs, especially those serving top-performing countries.

3. Analyze and Reduce Return Rates
Investigate quality issues or size inconsistencies in Apparel and Accessories categories to reduce returns.

4. Geo-Target Campaigns
Use regional insights to create country-specific promotions—e.g., bundle offers in North America where sales are high.

5. Loyalty Programs for Top Customers
Introduce incentives for the top 10% of customers who drive the majority of the revenue to retain and increase their lifetime value.


### Conclusion
This project successfully delivers a high-level overview of the e-commerce business, identifying key metrics across sales,<br/>
operations, and customer behavior. With the aid of SQL analysis and dashboard visualization, <br/>
the business can now make data-driven decisions to scale performance and enhance customer satisfaction.<br/>

