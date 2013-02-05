SELECT country_name
FROM events e INNER JOIN venues v on e.venue_id = v.venue_id
INNER JOIN countries c on c.country_code = v.country_code;