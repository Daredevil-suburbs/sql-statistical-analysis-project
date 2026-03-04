WITH stats AS (
SELECT AVG(amount) AS mean, STDDEV(amount) AS std
FROM transactions
)

SELECT
transaction_id,
amount,
(amount - mean)/std AS z_score
FROM transactions, stats
ORDER BY z_score DESC;