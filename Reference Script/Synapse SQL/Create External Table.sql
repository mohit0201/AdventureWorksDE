--0
-- CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Azure@123'

--1
-- CREATE DATABASE SCOPED CREDENTIAL cred_mht
-- WITH 
--     IDENTITY = 'Managed Identity'

--2
-- One data external data source for one container (mention path till container)
CREATE EXTERNAL DATA SOURCE source_silver_dfs
WITH
(
    LOCATION = 'https://sacadlsdatalake.dfs.core.windows.net/aze2e-silver',
    CREDENTIAL = cred_mht
) 
--One for gold
CREATE EXTERNAL DATA SOURCE source_gold_dfs
WITH
(
    LOCATION = 'https://sacadlsdatalake.dfs.core.windows.net/aze2e-gold',
    CREDENTIAL = cred_mht
) 

--3
-- CREATE EXTERNAL FILE FORMAT format_delta
-- WITH
-- (
--     FORMAT_TYPE = DELTA
--     --DATA COMPRESSION is NA FOR DELTA
--     --FOR PARQUET -> DATA_COMPRESSION = org.apache.hadoop.io.compress.SnappyCodec

-- )
-- CREATE EXTERNAL FILE FORMAT format_parquet
-- WITH
-- (
--     FORMAT_TYPE = PARQUET,
--     --DATA COMPRESSION is NA FOR DELTA
--     --FOR PARQUET -> 
--     DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
-- )