SELECT  
  DATE(block_timestamp) AS tx_date,
  COUNT(*) AS tx_count
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions`
GROUP BY
  tx_date
ORDER BY
  tx_count DESC;
