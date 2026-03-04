WITH quartiles AS (
SELECT
PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY amount) AS q1,
PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY amount) AS q3
FROM transactions
)

SELECT *
FROM transactions, quartiles
WHERE amount < (q1 - 1.5*(q3-q1))
OR amount > (q3 + 1.5*(q3-q1));