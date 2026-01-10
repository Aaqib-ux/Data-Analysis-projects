-- Q4
-- Which actors generate the most total revenue? 
-- Show actor name, number of films they've been in, total revenue generated from those films, 
-- and average revenue per film. 
-- This helps us decide which actors to prioritize for future acquisitions."


with actor_in_film AS (
	select a.actor_id, a.first_name, a.last_name, fa.film_id
	from actor a
	join film_actor fa on a.actor_id = fa.actor_id
),
film_revenue as (	
	select i.film_id, sum(p.amount) as film_revenue
	from inventory i
	join rental r on i.inventory_id = r.inventory_id
	join payment p on r.rental_id = p.rental_id
	group by i.film_id
)

select af.first_name, af.last_name,
	count(distinct af.film_id) As film_count,
	sum(fr.film_revenue) as total_revenue,
	Round(AVg(fr.film_revenue), 2) As Avg_revenue_per_film
from actor_in_film af
left join film_revenue fr on af.film_id = fr.film_id
group by af.actor_id
order by Total_revenue desc
