/* =========================================================
   1) Territory Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       TerritoryID,
       Territory,
       TerritoryGroup
FROM dbo.Sales;

-- Dimension table
SELECT *
FROM dbo.DimTerritory;


/* =========================================================
   2) Ship Method Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       ShipMethodID,
       ShipMethod
FROM dbo.Sales;

-- Dimension table
SELECT *
FROM dbo.DimShipMethods;


/* =========================================================
   3) Ship Date Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       ShipDate
FROM dbo.Sales
WHERE ShipDate IS NOT NULL
  AND OrderDate IS NOT NULL;   -- kept your condition, can remove if not needed

-- Dimension table
SELECT *
FROM dbo.DimShipDates;


/* =========================================================
   4) Product Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       ProductID,
       Product,
       ProductSubCategory,
       ProductCategory
FROM dbo.Sales;

-- Dimension table
SELECT *
FROM dbo.DimProducts;


/* =========================================================
   5) Order Date Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       OrderDate
FROM dbo.Sales
WHERE OrderDate IS NOT NULL;

-- Dimension table
SELECT *
FROM dbo.DimOrderDates;


/* =========================================================
   6) Due Date Dimension
   ========================================================= */
-- Source (Sales)
SELECT DISTINCT
       DueDate
FROM dbo.Sales
WHERE DueDate IS NOT NULL;

-- Dimension table
SELECT *
FROM dbo.DimDueDates;