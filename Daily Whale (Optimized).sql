#Shows all BTC transactions happening with more than 1000BTC in a single day

SELECT
  DATE(block_timestamp) AS transaction_date,
  COUNT(1) AS whale_transactions
FROM
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  output_value > 1e11
  AND block_timestamp_month BETWEEN '2024-01-01' AND '2025-01-01'
GROUP BY
  transaction_date
ORDER BY
  whale_transactions DESC
LIMIT 100;
