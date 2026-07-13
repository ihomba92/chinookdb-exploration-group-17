-- Grouping the country with the number of customer from that country
SELECT Country, COUNT(customerId) AS customer_count
FROM customers
GROUP BY Country
ORDER BY customer_count DESC
LIMIT 4;