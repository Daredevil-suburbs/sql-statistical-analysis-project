SELECT
COUNT(*) AS total_transactions,
ROUND(AVG(amount),2) AS mean_amount,
PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY amount) AS median_amount,
STDDEV(amount) AS std_deviation,
VARIANCE(amount) AS variance,
MIN(amount) AS min_amount,
MAX(amount) AS max_amount
FROM transactions;