SELECT TrackId, AlbumId, Name, Composer
FROM tracks
WHERE AlbumId = 3
ORDER BY TrackId DESC
LIMIT 5; 