-- Q3
-- Show me total revenue for each month, along with the percentage change from the previous month. 
-- We need to identify growth patterns and any concerning drops in revenue.

with month_sales as (
	select month(payment_date) as Month, sum(amount) as Sales_amt from payment
    group by Month
    order by Month 
),
with_previous as(
	select Month, Sales_amt,
		lag(Sales_amt) Over (ORDER BY Month) As prev_month_sales
	from month_sales
)

select Month, Sales_amt, prev_month_sales,
	ROUND((( Sales_amt - prev_month_sales) / prev_month_sales ) * 100, 2) As percent_Change
from with_previous