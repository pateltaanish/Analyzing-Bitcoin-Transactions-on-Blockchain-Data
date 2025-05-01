SELECT
  EXTRACT(YEAR FROM block_timestamp_month) AS year,
  EXTRACT(MONTH FROM block_timestamp_month) AS month,
  COUNT(*) AS coinbase_transaction_count
FROM
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  is_coinbase = TRUE
  AND block_timestamp_month BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
  year, month
ORDER BY
  year, month
