#Query shows the top 10 largest BTC transactions
SELECT
 'bigquery-public-data.crypto_bitcoin.transactions.hash' AS UNIQUEID,
 block_timestamp,
 output_value
FROM
 `bigquery-public-data.crypto_bitcoin.transactions`
WHERE
 block_timestamp_month BETWEEN '2011-01-01' AND '2024-01-01'
ORDER BY
 output_value DESC
LIMIT 10;
