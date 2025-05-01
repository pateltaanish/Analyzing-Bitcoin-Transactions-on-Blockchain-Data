SELECT
  DATE(t.block_timestamp) AS tx_date,
  SUM(o.value) AS total_btc_moved
FROM
  `bigquery-public-data.crypto_bitcoin.outputs` AS o
JOIN
  `bigquery-public-data.crypto_bitcoin.transactions` AS t
ON
  o.transaction_hash = t.hash
WHERE
  o.value > 0
  AND t.block_timestamp BETWEEN '2018-01-01' AND '2024-01-01'
  AND t.block_timestamp < CURRENT_TIMESTAMP()
GROUP BY
  tx_date
ORDER BY
  tx_date
LIMIT 1000;



