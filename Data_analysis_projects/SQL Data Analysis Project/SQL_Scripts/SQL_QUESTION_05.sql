-- Q5
-- Identify customers who haven't rented anything in the last 90 days from their last rental.
-- Show customer name, email, last rental date, and days since last rental. We need to run a re-engagement campaign.

select c.first_name, c.last_name, c.email,
		max(r.rental_date) as last_rental_date,
        DateDiff((select max(rental_date)from rental), Max(r.rental_date)) As day_since_last_rental
from customer c
join rental r on r.customer_id = c.customer_id
group by c.customer_id
Having day_since_last_rental > 90
Order by day_since_last_rental Desc;
