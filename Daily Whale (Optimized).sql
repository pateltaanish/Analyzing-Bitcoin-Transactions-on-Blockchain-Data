#Shows all BTC transactions happening with more than 1000BTC in a single day

SELECT
 DATE(block_timestamp) AS transaction_date,
 COUNT(1) AS whale_transactions
FROM
 `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
# greater than 1000 BTC - 1 Bitcoin = 100,000,000 satoshis
 output_value > 1e11 
 AND block_timestamp IS NOT NULL  
GROUP BY
 transaction_date
ORDER BY
 whale_transactions DESC
LIMIT 100;
