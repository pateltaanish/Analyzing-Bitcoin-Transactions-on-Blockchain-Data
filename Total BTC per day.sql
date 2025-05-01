SELECT
  DATE(t.block_timestamp) AS tx_date,
  SUM(o.value) AS total_btc_moved
FROM
  `bigquery-public-data.crypto_bitcoin.outputs` AS o
JOIN
  `bigquery-public-data.crypto_bitcoin.transactions` AS t
ON
  o.transaction_hash = t.hash
GROUP BY
  tx_date
ORDER BY
  tx_date
LIMIT 1000;

