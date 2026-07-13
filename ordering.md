# Ordering Data in SQL

Sorting arranges raw relational records into a clean sequence. Our group used the `ORDER BY` clause to arrange tracks sequentially.

## Team Implementation

```sql
SELECT TrackId, AlbumId, Name, Composer
FROM Track
WHERE AlbumId = 3
ORDER BY TrackId DESC
LIMIT 5;
```

### Takeaway

- By applying `ORDER BY TrackId DESC`, our query reverse-sorts the results, placing the highest track identities at the top of the output table.
