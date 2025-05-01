SELECT
  EXTRACT(YEAR FROM block_timestamp) AS tx_year,
  COUNT(*) / COUNT(DISTINCT DATE(block_timestamp)) AS avg_tx_per_day
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions`
GROUP BY
  tx_year
ORDER BY
  avg_tx_per_day DESC;
