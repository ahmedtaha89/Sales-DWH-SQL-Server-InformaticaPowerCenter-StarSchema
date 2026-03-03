
CREATE TABLE DimTerritory
(
    TerritoryID    int,
    Territory      varchar(100),
    TerritoryGroup varchar(100)
);

CREATE TABLE DimStatus
(
    StatusID decimal(10),
    Status   varchar(20)
);

CREATE TABLE DimProducts
(
    ProductID          int,
    Product            varchar(100),
    ProductSubCategory varchar(100),
    ProductCategory    varchar(100)
);

CREATE TABLE FactSales
(
    FactSalesKey  bigint NOT NULL,
    OrderDetailID int,
    OrderID       int,
    StatusID      int NOT NULL,
    CustomerID    int,
    SalesPersonID int,
    TerritoryID   int NOT NULL,
    ShipMethodID  int NOT NULL,
    ProductID     int NOT NULL,
    OrderQty      decimal(10),
    UnitPrice     decimal(10,2),
    LineTotal     decimal(10,2),
    TaxAmt        decimal(10,2),
    Freight       decimal(10,2),
    TotalDue      decimal(10,2),
    OrderDateKey  int NOT NULL,
    DueDateKey    int NOT NULL,
    ShipDateKey   int NOT NULL
);

ALTER TABLE FactSales ADD PRIMARY KEY (FactSalesKey, StatusID, TerritoryID, ShipMethodID, ProductID, OrderDateKey, DueDateKey, ShipDateKey);

CREATE TABLE DimOrderDates
(
    OrderDateKey decimal(19),
    OrderDate    datetime,
    Year         decimal(10),
    Month        decimal(10),
    Day          decimal(10),
    MonthName    varchar(12)
);

CREATE TABLE DimDueDates
(
    DueDateKey int,
    DueDate    datetime,
    Year       int,
    Month      int,
    Day        int,
    MonthName  varchar(12)
);

CREATE TABLE DimShipDates
(
    ShipDate    datetime,
    ShipDateKey decimal(10),
    Year        decimal(10),
    Month       decimal(10),
    Day         decimal(10),
    MonthName   varchar(12)
);

CREATE TABLE DimShipMethods
(
    ShipMethodID int,
    ShipMethod   varchar(50)
);


ALTER TABLE DimTerritory ADD 
    FOREIGN KEY (TerritoryID) REFERENCES FactSales (TerritoryID);

ALTER TABLE DimStatus ADD 
    FOREIGN KEY (StatusID) REFERENCES FactSales (StatusID);

ALTER TABLE DimProducts ADD 
    FOREIGN KEY (ProductID) REFERENCES FactSales (ProductID);

ALTER TABLE DimOrderDates ADD 
    FOREIGN KEY (OrderDate) REFERENCES FactSales (OrderDateKey);

ALTER TABLE DimDueDates ADD 
    FOREIGN KEY (DueDateKey) REFERENCES FactSales (DueDateKey);

ALTER TABLE DimShipDates ADD 
    FOREIGN KEY (ShipDateKey) REFERENCES FactSales (ShipDateKey);

ALTER TABLE DimShipMethods ADD 
    FOREIGN KEY (ShipMethodID) REFERENCES FactSales (ShipMethodID);
