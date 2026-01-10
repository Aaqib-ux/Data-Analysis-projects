# 👟 Adidas Sales Performance Analysis

### 📌 Project Objective

The goal of this project is to analyze Adidas sales data to understand sales performance, profitability patterns, and identify opportunities for business growth.
The project focuses on uncovering insights about product performance, regional differences, and seasonal trends that can help optimize sales strategies and improve overall profitability.

### 📂 Dataset

- Source: [Kaggle - Adidas Sales Dataset](https://www.kaggle.com/datasets/afzashaikh/adidas-sales-dataset)
- Rows: ~10,000+
- Columns: Multiple (including product categories, regions, sales methods, units sold, revenue, operating profit)
- Key Metrics: Total Revenue, Units Sold, Operating Profit, Operating Margin

### 📂 Dataset Context
This dataset contains sales transaction data from Adidas across different regions, products, and sales channels.
Each row represents a sales transaction with details about the product sold, the region where it was sold, the sales method used (In-store, Online, or Outlet), and financial metrics like revenue and operating profit.
The data includes six main product categories: Men's Street Footwear, Men's Athletic Footwear, Men's Apparel, Women's Street Footwear, Women's Athletic Footwear, and Women's Apparel.
It covers sales across five regions (West, Northeast, Southeast, South, and Midwest) and includes both retail and wholesale transactions, giving us a complete picture of Adidas's sales operations.

### Tools & Feature Used
- Power BI
- Features: Measure Calculating, Drill Down, Kpi cards, Bar/line/Pie Chart, Slicer
--- 

## 🎯 What I Wanted to Find Out

### Before starting the analysis, I came up with these key questions:

1. How's our overall **sales and profit performance**?
2. Are there any **seasonal patterns in sales** throughout the year?
3. How Do **Sales Methods** (In-store, Online, Outlet) Perform Across Regions?
4. Which products bring in the **most revenue across regions**?
5. How do **different regions perform** in terms of profit margins?
6. What's the difference between **retail and wholesale sales** volume?
7. Which products generate the **highest operating profit**?
---

## 🔍 Key Findings

### After analyzing The data here what we found:

### Dashboard 1- Overall Sales performance **(Q1 Answer)**

<img width="1000" height="645" alt="Screenshot 2026-01-10 092143" src="https://github.com/user-attachments/assets/137b0812-8651-41bf-8e5b-7fa21931c38c" />


#### Key Metrics
- Total Revenue: $899.90M
- Total Unit Sold: 2.48M
- Operating Profit: $332.13M
- Operating Margin: 36.91%

### What This Means:
The company is performing really well with a solid 37% profit margin. For every dollar we make, we're keeping about 37 cents as profit, which is pretty healthy for retail business.
### Business Recommendation:
✅ Maintain this strong margin while looking for growth opportunities. The goal should be to increase revenue without sacrificing this healthy profit margin.

#### Seasonal Sales Patterns Throughout the Year (Line Chart) **(Q2. Answer)**

- Peaked Months
   - Sales peaked in 2021 in the following months such as july doing $76M, June $72M, May $66M and December $78M.
   - Some of the strong month also noticable such as August 2021 doing $59M sales  qith in April 2021 $55M sales
   - Weakest month are notice in 2020 June, November, octobar making $9M, $8M and $11M respectivly
### What This Means:
There's a clear seasonal pattern. Summer months (May-August) are consistently strong. There's also a noticeable difference between 2020 and 2021 performance, with 2021 showing much stronger sales overall (possibly recovery from COVID-19 impact in 2020).

### Business Recommendation:
- Prepare for summer peak season (May-August):
- Increase inventory 2-3 months in advance
- Hire seasonal staff
- Ramp up marketing campaigns in April
- Boost slow months with targeted promotions:
    - Run "Spring Refresh" campaign in March-April
    - Create "Fall Collection Launch" in October-November
    - Offer limited-time discounts during historically slow periods

✅ Optimize inventory management - Don't overstock in slow months. Use the data to forecast more accurately and reduce carrying costs.
✅ Holiday strategy - December shows strong performance. Invest in holiday marketing and ensure popular items are in stock.

---

### Dashboard 2: Sales Analysis by Region and Product

<img width="850" height="700" alt="Screenshot 2026-01-10 102746" src="https://github.com/user-attachments/assets/f9383bc2-5719-497a-a3b9-afc0853abab5" />

### Key Findings:

#### Channel preferences vary dramatically by region **(Q3. Answer)**
- Northeast prefers in-store (62%),
- Southeast loves online (52%),
- South relies on outlets (56%)
#### South's outlet strategy is profitable -
- Despite 56% outlet sales,
- they have the BEST margins (45.28%),
- proving outlets don't have to kill profits
#### West's multi-channel problem 
 - Uses all channels heavily but has worst margins (33.20%),
 - suggesting poor execution across all three
#### Southeast is the most digital 
 - 52% online sales shows they're ahead of the curve and younger demographic

### Business Recomendation

#### Match channel investment to regional preferences:

1. Northeast: Invest in premium in-store experiences, skip online push
2. Southeast: Boost website/app, invest in digital marketing heavily
3. South: Expand outlets, copy their profitable outlet model to West
4. West: Fix outlet pricing (too discounted), improve profitability across all channels
5. Midwest: Maintain balanced approach - it's working with good margins

### Which products bring in the most revenue across regions? **(Q4. Answer)**

#### Findings

- **Men’s Street Footwear** brings the **highest** revenue in all regions (Midwest, Northeast, South, Southeast, and West).
- Product performance is similar across regions, showing no **major difference in customer preference.**
- Women’s Apparel and Men’s Athletic Footwear generate **moderate revenue** in most regions.
- Women’s Athletic Footwear is the **lowest revenue-generating product** in every region.

#### Business Recomendation

1. Focus more on Men’s Street Footwear by **increasing stock and promotions**, as it performs best everywhere.
2. Maintain **current strategy for Women’s Apparel** and **Men’s Athletic Footwear**, as they provide steady revenue.
3. Review Women’s Athletic Footwear performance and **improve design or marketing**, or consider reducing its focus.
4. Since product trends are similar across regions, use a **standard product strategy and adjust only quantities by region**.

---
### Dashbord 3: PROFITABILITY & SALES SEGMENTATION ANALYSIS

<img width="930" height="796" alt="image" src="https://github.com/user-attachments/assets/66f7ef49-f6f7-41bc-a2d9-3111076fdfd1" />

### How do different regions perform in terms of profit margins? **(Q.5 Answer)**

#### Findings

- South has the **highest operating margin (~42%)**, making it the most profitable region.
- Midwest (~39%) and Southeast (~37%) also **perform well in terms of margins**.
- Northeast (~36%) has **average profitability**.
- **West (~33%)** has the **lowest operating margin** among all regions.

#### Business Recommendations

1. Maintain current strategy in the South, as it is highly profitable.
2. Focus on cost control and pricing strategy in the West to improve margins.
3. Increase sales volume in Midwest and Southeast, since they already have strong margins.
4. Use best practices from the South region in lower-margin regions.

### What’s the difference between retail and wholesale sales volume? **(Q.6 Answer)**

#### Findings

- Retail sales **dominate total units sold** (~2.05M units).
- Wholesale sales are much lower (~430K units).
- Retail contributes the **major share of total volume.**
 
#### Business Recommendations

1. Continue **focusing on retail channels**, as they drive most sales.
2. Improve **wholesale partnerships** to increase volume without heavy marketing costs.
3. Use wholesale mainly for **bulk and stable demand**, not primary revenue growth.

### Which products generate the highest operating profit? **(Q.7 Answer)**

#### Key Findings

- Men’s Street Footwear generates the **highest operating profit.**
- Women’s Apparel is the **second highest** profit contributor.
- Men’s Athletic Footwear **performs moderately.**
- Women’s Athletic Footwear generates the **lowest operating profit.**

#### Business Recommendations

1. **Invest more in Men’s Street Footwear** (marketing, new designs, visibility).
2. **Support Women’s Apparel*** as a strong secondary profit product.
3. Review and **improve Women’s Athletic Footwear,** or reduce focus if performance stays low.
4. Allocate shelf space and promotions based on profit contribution.

---

## Summary

This project analyzed sales, revenue, and profitability across regions and product categories using interactive dashboards. The analysis shows that Men’s Street Footwear is the top-performing product in terms of both revenue and operating profit across all regions. Retail sales contribute the majority of total units sold compared to wholesale.
Region-wise, the South has the highest operating margin, while the West, despite high sales volume, has the lowest margin, indicating cost or pricing issues. Product preferences are consistent across regions, which allows for a standardized product strategy with regional adjustments in volume.
Overall, this analysis helps identify high-performing products, profitable regions, and areas for improvement, supporting better business and data-driven decision-making.











