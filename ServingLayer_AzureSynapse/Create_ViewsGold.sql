--Calendar View--
CREATE VIEW gold.calendar
AS
(
    SELECT * FROM OPENROWSET(
    BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Calendar/',
    FORMAT= 'PARQUET'
    ) AS QUERY_CAL
)

--Customer View--
CREATE VIEW gold.customer
AS 
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Customter/',
        FORMAT= 'PARQUET'
    ) AS QUERY_CUS
)

--Product Categories--
CREATE VIEW gold.product_categories
AS
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Product_Categories/',
        FORMAT= 'PARQUET'
    ) AS QUERY_PROCAT
)
--Product Subcategories--
CREATE VIEW gold.product_subcategories
AS
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Product_SubCategories/',
        FORMAT= 'PARQUET'
    ) AS QUERY_PROSUBCAT
)

--Products View--
CREATE VIEW gold.products
AS 
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Porducts/',
        FORMAT= 'PARQUET'
    ) AS QUERY_PRO
)

--Sales View--
CREATE VIEW gold.sales
AS 
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Sales/',
        FORMAT= 'PARQUET'
    ) AS QUERY_SALES
)

--Returns View--
CREATE VIEW gold.retrn
AS
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Returns/',
        FORMAT= 'PARQUET'
    ) AS QUERY_RETRN
)

--Territories View--
CREATE VIEW gold.territories
AS
(
    SELECT * FROM OPENROWSET(
        BULK 'https://azureproject1zarstorage.blob.core.windows.net/silver/Territories/',
        FORMAT= 'PARQUET'
    ) AS QUERY_TERI
)