# Limiting Data in SQL

The `LIMIT` clause is a performance constraint used to specify the maximum number of rows that a database query should return.

## Team Implementation

```sql
SELECT TrackId, AlbumId, Name, Composer
FROM Track
WHERE AlbumId = 3
ORDER BY TrackId DESC
LIMIT 5;
```

### Takeaway

- Using `LIMIT 5` caps our reverse-sorted track pool, giving us a fast snapshot of just the final 5 tracks added to Album 3 without cluttering the screen.
