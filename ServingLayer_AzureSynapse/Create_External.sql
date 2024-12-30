--Creation of the Credentials--
CREATE DATABASE SCOPED CREDENTIAL cred_azureproject1zar
WITH 
IDENTITY= 'Managed Identity'

--Creation of the External Data Source for Silver Layer--
CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
    LOCATION= 'https://azureproject1zarstorage.blob.core.windows.net/silver',
    CREDENTIAL= cred_azureproject1zar
);

--Creation of the External Data Source for Gold Layer--
CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION = 'https://azureproject1zarstorage.blob.core.windows.net/gold',
    CREDENTIAL= cred_azureproject1zar
);

--Creation of the Extrnal File Format--
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE= PARQUET,
    DATA_COMPRESSION= 'org.apache.hadoop.io.compress.SnappyCodec'
);

--Creation of the External Table on the Gold Layer for Data pushed by Silver Layer View--
CREATE EXTERNAL TABLE extcustomers
WITH
(
    LOCATION= 'extcustomers',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.customer1;








