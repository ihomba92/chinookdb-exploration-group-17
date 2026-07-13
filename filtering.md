# Filtering Data in SQL

Filtering lets us restrict the rows returned by a query using specific matching conditions. Our group used the `WHERE` clause to filter tracks by a specific album identity.

## Team Implementation

### Query 1: Filter by AlbumId 3

```sql
SELECT TrackId, AlbumId, Name, Composer
FROM Track
WHERE AlbumId = 3
ORDER BY TrackId DESC
LIMIT 5;
```

### Query 2: Filter by AlbumId 1

```sql
SELECT TrackId, AlbumId, Name, Composer
FROM Track
WHERE AlbumId = 1
ORDER BY TrackId DESC;
```

### Takeaway

- The `WHERE AlbumId = 3` and `WHERE AlbumId = 1` clauses instantly filter the dataset, ensuring the engine only scans and evaluates music tracks associated with those specific albums.
