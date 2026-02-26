# Marketing Campaign Analysis (SQL)

## Project Overview
This project analyzes customer marketing campaign data to identify demographic and behavioral drivers of conversion. The objective was to determine which customer segments are most likely to respond to a marketing campaign and provide data-driven targeting recommendations.

## Dataset
Customer personality / marketing campaign dataset  
- 2,240 customers  
- Target variable: `Response` (1 = converted, 0 = not converted)  
- Includes demographic data (income, education), purchasing behaviour, and website engagement metrics  

## Tools Used
- SQL Server Management Studio (SSMS)
- SQL (aggregation, CASE statements, segmentation analysis)

## Key Business Questions
- What is the overall campaign conversion rate?
- Which customer segments convert most?
- Do income and education influence campaign success?
- Are behavioural indicators (spending, purchase frequency, website visits) stronger predictors of conversion?

## Key Findings

- Overall campaign conversion rate: **14.9%**
- High-spending customers had a **41.9% conversion rate**, over 4× higher than low spenders.
- Customers with high purchase frequency converted at **23.4%**, compared to 6.7% for low-frequency purchasers.
- High-income customers converted at **21.5%**, nearly double the rate of medium and low-income groups.

## Business Impact

Behavioral factors (spending and purchase frequency) were significantly stronger predictors of conversion than demographic characteristics. 

These findings suggest marketing campaigns should prioritize:
- High-value customers
- Customers with strong purchase history
- High-income segments

Targeting these groups can improve campaign efficiency and increase return on marketing investment.

## Skills Demonstrated
- SQL aggregation and segmentation
- Conditional logic using CASE statements
- KPI calculation (conversion rate)
- Business-focused data analysis
- Translating data into actionable insights

## Repository Structure
- `queries.sql` — SQL used for KPI and segmentation analysis
- `insights.md` — Detailed written findings and business recommendations
