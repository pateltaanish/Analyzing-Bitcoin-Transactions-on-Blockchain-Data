SELECT  
  DATE(timestamp) AS tx_date,
  SUM(transaction_count) AS tx_count
FROM 
  `bigquery-public-data.crypto_bitcoin.blocks` 
WHERE
  timestamp >= '2024-01-01' 
  AND timestamp < '2025-01-01'
GROUP BY
  tx_date
ORDER BY
  tx_count DESC;