-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
/*SELECT CustomerID
FROM Customers
WHERE FirstName = 'Norby';
*/
SELECT ReservationID
FROM Reservations AS R
INNER JOIN Customers AS C ON C.CustomerID = R.CustomerID
WHERE 1=1
AND R.CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Norby')
AND Date LIKE '2022-07%';

DELETE FROM Reservations
WHERE ReservationID = 2000;