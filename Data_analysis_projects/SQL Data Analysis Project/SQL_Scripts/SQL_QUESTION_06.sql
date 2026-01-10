-- Question 6
-- Compare each films total rental revenue against its replacement cost.
-- Calculate ROI percentage and flag films as 'Highly Profitable' (ROI > 900%), 'Profitable' (100-900%), or 'Low ROI' (< 100%).
USE sakila;

CREATE OR REPLACE VIEW  ROI_Status_by_Film AS 
	with film_replacememt_Cost as(
		select f.film_id, f.title, f.replacement_cost
		from film f

	),
	total_Rev as (
		select f.film_id, sum(p.amount) as total_rev 
		from film f
		join inventory i on f.film_id = i.film_id
		join rental r on r.inventory_id = i.inventory_id
		left join payment p on r.rental_id = p.rental_id
		group by f.film_id
	)

	select fp.title, 
		   fp.replacement_cost,
		   tr.total_rev,	
		   round(((tr.total_rev - fp.replacement_cost) / fp.replacement_cost) * 100, 2) as roi_percentage,
		   case 
				when round(((tr.total_rev - fp.replacement_cost) / fp.replacement_cost) * 100, 2) >= 901 then 'High ROI'
				when round(((tr.total_rev - fp.replacement_cost) / fp.replacement_cost) * 100, 2) between 100 and 900 then 'Mediam ROI'
				Else 'low roi'
		   End as Roi_status
	from film_replacememt_Cost fp
	join total_Rev tr on fp.film_id = tr.film_id
	order by roi_percentage DESC
