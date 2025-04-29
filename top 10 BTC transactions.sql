#Query shows the top 10 largest BTC transactions
SELECT 'bigquery-public-data.crypto_bitcoin.transactions.hash' AS UNIQUEID, block_timestamp,output_value 
FROM `bigquery-public-data.crypto_bitcoin.transactions` 
ORDER BY output_value DESC
LIMIT 10;