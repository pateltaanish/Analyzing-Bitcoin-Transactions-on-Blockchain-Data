WITH yearly_stats AS (
  SELECT
    EXTRACT(YEAR FROM timestamp) AS tx_year,
    SUM(transaction_count) AS total_tx_count,
    COUNT(DISTINCT DATE(timestamp)) AS days_with_blocks
  FROM 
    `bigquery-public-data.crypto_bitcoin.blocks`  
  WHERE
    timestamp >= '2011-01-01'
    AND timestamp < '2025-01-01'
  GROUP BY
    tx_year
)

SELECT
  tx_year,
  SAFE_DIVIDE(total_tx_count, days_with_blocks) AS avg_tx_per_day
FROM 
  yearly_stats
ORDER BY
  avg_tx_per_day DESC;