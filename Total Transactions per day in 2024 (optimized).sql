SELECT  
  DATE(block_timestamp) AS tx_date,
  COUNT(*) AS tx_count
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  block_timestamp BETWEEN '2024-01-01' AND '2024-12-31'
  AND block_timestamp < CURRENT_TIMESTAMP()
GROUP BY
  tx_date
ORDER BY
  tx_count DESC;
