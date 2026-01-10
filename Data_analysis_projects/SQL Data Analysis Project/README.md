# 📊 Sakila Database Business Analysis

## 📌 Project Objective
The goal of this project is to analyze the Sakila MySQL sample database to extract actionable business insights. The project focuses on understanding customer behavior, film performance, and revenue trends. By transforming raw database records into meaningful analytics, this project demonstrates how data-driven decisions can improve marketing strategies, inventory management, and customer engagement.

### 📂 Dataset
- **Source**: [Sakila MySQL Sample Database](https://dev.mysql.com/doc/sakila/en/)
- **Tables**: 16+ (including customer, film, rental, payment, inventory, actor, store)
- **Key Metrics**: Total revenue, customer spending, film rental performance, ROI, customer lifetime value

### 📂 Dataset Context
The Sakila database is a sample MySQL database representing a DVD rental store. It contains data on customers, films, rentals, payments, actors, and stores. Each table is connected through foreign keys, allowing analysis of relationships such as which customers spend the most, which films are highly profitable, and how revenue varies over time. This project leverages SQL queries to extract insights that can inform marketing campaigns, inventory decisions, and regional customer strategies.

### 🛠 Tools Used

- **SQL**: SELECT, JOINs, GROUP BY, HAVING, CASE WHEN, CTEs, window functions, views
- **MySQL Workbench** (for query execution and view creation)

---

# 🔍 Business Questions & My Findings

1. Q – Customer Segmentation by Spending
  - Segment customers into High, Medium, and Low value tiers based on total spending
  - Purpose: Identify top spenders for targeted marketing campaigns.
  - [View SQL Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_01.sql)
### Findings:
- 20% of customers are High Value, representing the top spenders.  
- 60% of customers are Medium Value, forming the core revenue group.  
- 20% of customers are Low Value, contributing the least to total revenue.
---
2. Q – Underperforming Films in Inventory
  - Identify films that have fewer than 10 rentals but 3+ copies in stock.
  - Purpose: Highlight films that might need promotion or removal to optimize inventory.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_02.sql)
### Findings
- Several films have 3 or more copies in inventory but fewer than 10 rentals, indicating low demand.  
- Examples of underperforming films include *ALI FOREVER*, *DAUGHTER MADIGAN*, and *SPARTACUS CHEAPER*.  
- These titles could be candidates for promotion, repositioning, or removal to optimize inventory and reduce holding costs.
---

3. Q – Monthly Revenue and Growth Trends
  - Calculate total revenue per month and the month-over-month percentage change.
  - Purpose: Monitor revenue growth patterns and detect any concerning drops.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_03.sql)
### Findings
- Revenue saw **significant growth** from febuary to July, with the highest increase in May (838% growth compared to Febuary).  
- The growth rate stabilized in June (~100%) and **remained strong in July** (~195%), indicating increasing customer activity.  
- August **experienced a slight decline** in revenue **(-15%)**, suggesting a possible slowdown or seasonal effect that may need further investigation.
---  

4. Q – Top-Grossing Actors
  - Rank actors based on total revenue generated from their films and show average revenue per film.
  - Purpose: Prioritize high-performing actors for future film acquisitions or promotions.
  - [View_SQL_Quer](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_04.sql)

### Findings
- Top high Performing actors with the high movie count and revenue are **_GINA	DEGENERES_**, **_MATTHEW	CARREY_**, **_MARY	KEITEL_**
- With total Movie Count **42, 39, 40** with total revenue **3442.49, 2742.19 2689.25** respectively
- These actor have high ROI and should be prioritized for next Movies or Marketing Campaign
---

5. Q – Inactive Customers (Re-Engagement Candidates)
  - Identify customers who haven’t rented in the last 180 days, showing their last rental date and days since last rental.
  - Purpose: Target inactive customers with re-engagement campaigns.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_05.sql)
### Findings
- Due to the static nature of the Sakila dataset, **most customers show inactivity between 176–181 days.**  
- In a real-world scenario, **this query would help target inactive customers** for re-engagement campaigns.  
- The analysis demonstrates **how to calculate inactivity and days since last rental** using SQL window functions.
--- 

6. Q – Film ROI Analysis
  - Compare total rental revenue to replacement cost and categorize films as Highly Profitable, Profitable, or Low ROI.
  - Purpose: Make informed inventory and marketing decisions based on profitability.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_06.sql)

### Findings
- Out of all films, **46 are High ROI**, **645 are Medium ROI**, and **267 are Low ROI**, showing that most films generate moderate profits.  
- Top High ROI films include *TITANS JERK*, *MAIDEN HOME*, and *VIDEOTAPE ARSENIC*, with ROI exceeding 1,200%.  
- These insights can guide decisions on which films to promote or prioritize for marketing and inventory management.  
---

7. Q – Customer Lifetime Value by Country
  - Rank customers within their countries by total lifetime value.
  - Purpose: Identify top regional customers for VIP programs and localized campaigns.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_07.sql)

### Findings
- The top customers have spent between **$174.66 and $221.55**, highlighting the most valuable clients per region.  
- Examples include **KARL SEAL (United States)**, **ELEANOR HUNT (Réunion)**, and **CLARA SHAW (Belarus)**.  
- This analysis helps identify **regional VIP customers** for personalized campaigns, loyalty programs, and targeted promotions
---

8. Q – Monthly Revenue with Cumulative Analysis
  - Show revenue per month with a running total and contribution percentage to annual revenue. 
  - Purpose: Visualize revenue trends and the relative impact of each month on total annual revenue.
  - [View_SQL_Query](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_QUESTION_08.sql)
### Findings
- Revenue peaked in **July 2005**, contributing **42.41%** of total revenue, making it the strongest performing month.  
- By **August 2005**, cumulative revenue reached over **66,000**, accounting for nearly the entire annual revenue.  
- This analysis highlights seasonal revenue concentration, helping identify peak periods for promotions and capacity planning.
---
## 📁 Views & Exported Outputs

#### To support reusable analysis and reporting, key queries were converted into SQL views and exported as CSV files for external analysis and visualization.

- **ROI_Status_by_film_VIEW (Q6):**  
  Contains film-level revenue, replacement cost, ROI percentage, and ROI classification (High / Medium / Low).  
  Exported as a CSV for profitability analysis and reporting.
  [ROI_Status_by_film_VIEW](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_VIEW_Tables/ROI_Status_by_film_VIEW.csv)

- **Customer_LTV_Rank_VIEW (Q7):**  
  Contains customer lifetime value ranked within each country.  
  Exported as a CSV to support regional customer segmentation and VIP targeting.
  [Customer_LTV_Rank_VIEW](https://github.com/Aaqib-ux/Data-Analysis-projects/blob/main/Data_analysis_projects/SQL%20Data%20Analysis%20Project/SQL_Scripts/SQL_VIEW_Tables/Customer_LTV_Rank_VIEW.csv)

## Summary

📌 Project Summary & Conclusion

This project demonstrates how SQL can be used to transform a relational database into actionable business insights. 
By analyzing customer behavior, film performance, revenue trends, and profitability, the project highlights key opportunities for targeted marketing, inventory optimization, and regional customer engagement.
Advanced SQL techniques such as CTEs, window functions, and views were used to structure complex analysis in a clean and reusable way. 
While the Sakila dataset is static, the analytical logic and business reasoning reflect real-world decision-making scenarios. 
Overall, this project showcases strong SQL-based data analysis skills with a clear focus on business impact.
