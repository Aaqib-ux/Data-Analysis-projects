-- customer Segmentation question
-- Q1
-- We want to run targeted campaigns. Can you segment our customers into 3 tiers based on their total spending: 
-- 'High Value' (top 20%), 'Medium Value' (middle 60%), and 'Low Value' (bottom 20%)? Show customer names and their tier."

with customer_info as 
	(select c.first_name, c.last_name , sum(p.amount) as Total_spent from payment p
	join customer c on p.customer_id = c.customer_id
	group by c.customer_id
	order by Total_spent desc),
customer_tiers AS (
select *, Ntile(5) over (order by Total_spent DESC) as tile
from customer_info
),
final_segment AS (
	select first_name, last_name, Total_spent,
		CASE 
			WHEN tile = 1 THEN 'High Value'
			WHEN tile in(2,3,4) THEN 'Mediam Value'
			ELSE 'Low Value'
		END as customer_tier
	from customer_tiers )
    
-- Part 1: All customers
SELECT first_name, last_name, Total_spent, customer_tier, NULL as customer_count
FROM final_segment

UNION ALL

-- Part 2: Summary counts
SELECT NULL, NULL, NULL, customer_tier, COUNT(*) as customer_count
FROM final_segment
GROUP BY customer_tier;


