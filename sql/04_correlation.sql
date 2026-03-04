SELECT
CORR(amount, customer_age) AS amount_age_correlation,
CORR(amount, days_since_signup) AS amount_signup_correlation
FROM transactions;