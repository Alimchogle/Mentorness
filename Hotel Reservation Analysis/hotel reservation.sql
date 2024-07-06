SELECT COUNT(*) AS total_reservations
FROM hotel_reservations;



SELECT type_of_meal_plan, COUNT(*) AS num_reservations
FROM hotel_reservations
GROUP BY type_of_meal_plan
ORDER BY num_reservations DESC
LIMIT 1;



SELECT AVG(avg_price_per_room) AS avg_price_with_children
FROM hotel_reservations
WHERE no_of_children > 0;




SELECT COUNT(*) AS reservations_in_2023
FROM hotel_reservations
WHERE YEAR(arrival_date) = 2023;







SELECT room_type_reserved, COUNT(*) AS num_reservations
FROM hotel_reservations
GROUP BY room_type_reserved
ORDER BY num_reservations DESC
LIMIT 1;


SELECT COUNT(*) AS weekend_reservations
FROM hotel_reservations
WHERE no_of_weekend_nights > 0;



SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM hotel_reservations;






SELECT market_segment_type, COUNT(*) AS num_reservations
FROM hotel_reservations
GROUP BY market_segment_type
ORDER BY num_reservations DESC
LIMIT 1;




SELECT COUNT(*) AS confirmed_reservations
FROM hotel_reservations
WHERE booking_status = 'Confirmed';






SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM hotel_reservations;





SELECT AVG(no_of_weekend_nights) AS avg_weekend_nights_with_children
FROM hotel_reservations
WHERE no_of_children > 0;




SELECT MONTH(arrival_date) AS month, COUNT(*) AS num_reservations
FROM hotel_reservations
GROUP BY MONTH(arrival_date)
ORDER BY month;





SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS avg_nights
FROM hotel_reservations
GROUP BY room_type_reserved;







SELECT room_type_reserved, AVG(avg_price_per_room) AS avg_price
FROM hotel_reservations
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY COUNT(*) DESC
LIMIT 1;













SELECT market_segment_type, AVG(avg_price_per_room) AS avg_price_per_room
FROM hotel_reservations
GROUP BY market_segment_type
ORDER BY avg_price_per_room DESC
LIMIT 1;