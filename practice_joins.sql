-- 1.
SELECT *
FROM Invoice i
JOIN InvoiceLine il 
ON il.invoiceId = i.invoiceId
WHERE il.UnitPrice > 0.99;

-- 2.
SELECT i.InvoiceDate, c.FirstName, c.LastName, i.Total
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId;

-- 3.
SELECT c.FirstName, c.LastName, e.FirstName, e.LastName
FROM Customer c
JOIN Employee e
ON c.SupportRepId = e.EmployeeId;

-- 4.
SELECT al.Title, ar.Name
FROM Album al
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;

-- 5.
SELECT p.PlaylistId
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
WHERE p.Name = 'Music';

-- 6.
SELECT t.Name
FROM Track t
JOIN PlaylistTrack pt
ON t.TrackId = pt.TrackId
WHERE pt.PlaylistId = 5;

-- 7.
SELECT t.Name, p.Name
FROM Track t
JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId;

-- 8.
SELECT t.Name, a.Title
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = 'Alternative';