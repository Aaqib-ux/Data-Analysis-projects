
-- Question 7
-- Show customer lifetime value ranked within their country. 
-- We want to identify top customers per region for localized VIP programs.

CREATE View Customer_LTV_Rank AS
select c.customer_id,c.first_name, c.last_name, c.email, o.country, sum(p.amount) As Total_spent,
	   Rank() over(partition by o.country Order by sum(p.amount) Desc) As Country_rank,
       Rank() over (order by sum(p.amount) Desc) As overall_rank
from customer c
join address a on a.address_id = c.address_id
join city t on t.city_id = a.city_id
join country o on t.country_id = o.country_id
join payment p on c.customer_id = p.customer_id
group by c.customer_id

