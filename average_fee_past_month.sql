SELECT
  DATE(block_timestamp) AS transaction_date,
  AVG(fee) AS average_fee
FROM
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
  fee IS NOT NULL 
  AND block_timestamp >= '2025-03-01' 
  AND block_timestamp < '2025-04-01'  
GROUP BY
  transaction_date
ORDER BY
  transaction_date
