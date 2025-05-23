#Shows all BTC transactions happening with more than 1000BTC in a single day

SELECT 
  DATE(block_timestamp) AS transaction_date,
  COUNT(*) AS whale_transactions
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions`
WHERE 
# greater than 1000 BTC - 1 Bitcoin = 100,000,000 satoshis
  output_value > 100000000000  
GROUP BY 
  transaction_date
HAVING 
  whale_transactions > 0
ORDER BY 
  whale_transactions DESC
LIMIT 100;