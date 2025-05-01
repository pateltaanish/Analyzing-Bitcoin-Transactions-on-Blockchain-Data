SELECT
  EXTRACT(YEAR FROM block_timestamp) AS year,
  EXTRACT(MONTH FROM block_timestamp) AS month,
  COUNT(*) AS coinbase_transaction_count
FROM
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  is_coinbase = TRUE
  AND block_timestamp >= '2024-01-01'
  AND block_timestamp < '2025-01-01'  
GROUP BY
  year, month
ORDER BY
  year, month

