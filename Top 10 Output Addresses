SELECT 
  addresses, 
  COUNT(*) AS NumberOfTransactions
FROM 
  `bigquery-public-data.crypto_bitcoin.outputs`
GROUP BY 
  addresses
ORDER BY 
  NumberOfTransactions DESC
LIMIT 10

