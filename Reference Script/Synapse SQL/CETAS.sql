--CREATE EXTERNAL TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold_dfs,
    FILE_FORMAT = format_parquet 
) AS
SELECT *
FROM gold.sales

select * from gold.extsales