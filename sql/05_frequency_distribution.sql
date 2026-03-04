SELECT
CASE
WHEN amount < 100 THEN '0-100'
WHEN amount < 200 THEN '100-200'
WHEN amount < 300 THEN '200-300'
WHEN amount < 400 THEN '300-400'
ELSE '400+'
END AS amount_range,
COUNT(*) AS frequency
FROM transactions
GROUP BY amount_range
ORDER BY amount_range;