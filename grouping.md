# Grouping Data in SQL

Grouping gathers matching row records into unified summary metrics. Our group used `GROUP BY` paired with an aggregate count.

## Team Implementation

```sql
-- Grouping the country with the number of customer from that country
SELECT Country, COUNT(CustomerId) AS customer_count
FROM Customer
GROUP BY Country
ORDER BY customer_count DESC
LIMIT 4;
```

### Takeaway

- This groups all consumer records by their geographic `Country` column, aggregating them via `COUNT(CustomerId)` to isolate our top 4 largest international user bases.
