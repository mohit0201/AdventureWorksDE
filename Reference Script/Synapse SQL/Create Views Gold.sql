------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'DELTA'
        ) as QUER1


------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'DELTA'
        ) as QUER1



------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'DELTA'
        ) as QUER1


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'DELTA'
        ) as QUER1
        

------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'DELTA'
        ) as QUER1


    ------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'DELTA'
        ) as QUER1


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_SUbCategories/',
            FORMAT = 'DELTA'
        ) as QUER1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://sacadlsdatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'DELTA'
        ) as QUER1