-- Show all reservations for a user.
-- ** CODE DIFFERS DUE TO DIFFERNET DATABASE **
-- SELECT reservations.id as id, properties.title as title, cost_per_night, start_date, avg(property_reviews.rating) as average_rating 
-- FROM properties
-- JOIN reservations ON property_id = properties.id
-- -- JOIN users ON guest_id = users.id
-- JOIN property_reviews ON reservation_id = reservations.id
-- -- WHERE email = 'tristanjacobs@gmail.com'
-- WHERE properties.owner_id = 4
-- GROUP BY reservations.id, properties.title, cost_per_night
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY start_date
-- LIMIT 10

SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 4
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

