-- 1.
SELECT COUNT(*), g.Name
FROM Track t
Join Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name;

-- 2.
SELECT COUNT(*), g.Name
FROM Track t
JOIN Genre g
ON t.GenreId = g.GenreId
WHERE g.Name IS 'Pop' OR g.Name IS 'Rock'
GROUP BY g.Name;

-- 3.
SELECT ar.Name, COUNT(*)
FROM Artist ar
JOIN Album al
ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId;