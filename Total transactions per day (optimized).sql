SELECT  
  DATE(block_timestamp) AS tx_date,
  COUNT(*) AS tx_count
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  block_timestamp BETWEEN '2018-01-01' AND '2024-01-01'
  AND block_timestamp < CURRENT_TIMESTAMP()
GROUP BY
  tx_date
ORDER BY
  tx_date
LIMIT 1000;

