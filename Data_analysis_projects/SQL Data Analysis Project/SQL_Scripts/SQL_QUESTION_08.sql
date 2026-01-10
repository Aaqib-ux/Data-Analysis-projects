-- Q8
-- Show monthly revenue with a running total (cumulative revenue) and what percentage each month contributes to total annual revenue.

with monthly_data as (
	select date_format(payment_date, '%Y-%m') as year_month_col,
    year(payment_date) As year,
    sum(amount) as monthly_rev
    from payment
    
    group by year , year_month_col
)

select year_month_col,
       monthly_rev,
       sum(monthly_rev) over(order by year_month_col) AS Running_total,
       round((monthly_rev/ sum(monthly_rev)  over (partition by year))* 100, 2) as percent_of_year
from monthly_data
order by Year_Month_col;