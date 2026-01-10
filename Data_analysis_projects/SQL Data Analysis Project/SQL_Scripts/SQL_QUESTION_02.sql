-- Q2
-- Some films sit on shelves while others are always rented. 
-- Show me films that have fewer than 2 rentals total but we have 3+ copies in inventory. 
-- These might be candidates to remove from our inventory.

with films_details AS (
	select f.film_id, f.title, count(v.inventory_id) AS copies_in_stock from film f
    left join inventory v on f.film_id = v.film_id
    group by f.film_id
),
rental_details as (
	select f.film_id, count(r.rental_id) as total_rentals 
    from film f
    left join inventory i on i.film_id = f.film_id
    left join rental r on i.inventory_id = r.inventory_id
    group by f.film_id
)

select fd.title, fd.copies_in_stock, rd.total_rentals
from films_details fd
left join rental_details rd on fd.film_id = rd.film_id
where fd.copies_in_stock >= 3
and rd.total_rentals < 10
order by fd.copies_in_stock desc;




