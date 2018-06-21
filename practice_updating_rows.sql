-- 1.
UPDATE Customer
SET Fax = null
WHERE Fax IS NOT null;

-- 2.
UPDATE Customer
SET Company = 'Self'
WHERE Company IS null;

-- 3.
UPDATE Customer
SET LastName = 'Thompson'
WHERE FirstName = 'Julia' AND LastName = 'Barnett';

-- 4.
UPDATE Customer
SET SupportRepId = 4
WHERE Email IS 'luisrojas@yahoo.cl';

-- 5.
UPDATE Track
SET Composer = 'The darkness around us'
WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Metal')
AND Composer IS null;