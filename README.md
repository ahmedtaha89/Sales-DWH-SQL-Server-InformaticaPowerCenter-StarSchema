# Sales Data Warehouse (SQL Server + Informatica PowerCenter) — Star Schema

A Sales Data Warehouse project built on **Microsoft SQL Server** and loaded using **Informatica PowerCenter**.  
The warehouse follows a **Star Schema** model (Fact + Dimensions) to support fast analytics and reporting.

---

## 📌 Project Highlights

- ✅ Star Schema Data Model (FactSales + conformed Dimensions)
- ✅ ETL implemented with Informatica PowerCenter mappings & workflows
- ✅ Separate loads for each dimension + final Fact load
- ✅ SQL scripts for creating/loading the warehouse objects
- ✅ Visual documentation (diagrams, workflow screenshots, mapping screenshots)

---

## 🧱 Data Warehouse Model

The warehouse is designed as a **Star Schema**:

- **Fact Table**
  - `FactSales`

- **Dimensions**
  - `DimTerritory`
  - `DimShipMethods`
  - `DimProducts`
  - `DimOrderDates`
  - `DimDueDates`
  - `DimShipDates`

📷 Star Schema Diagram:  
![Star Schema](./Sales%20DWH%20Diagram%20-%20Star%20Schema.png)

---

## 🔁 ETL Flow (Informatica PowerCenter)

ETL loads are executed in the following order:

1. Load **Bronze Layer / Staging Sales**
2. Load Dimensions:
   - Territory
   - Ship Methods
   - Products
   - Order Dates
   - Due Dates
   - Ship Dates
3. Load **FactSales**

📷 Workflow Manager / Monitor:
- ![Workflow Manager](./SalesDWH-Workflow-Manager.png)
- ![Workflow Monitor](./SalesDWH-Workflow-Monitor.png)

📷 Mapping Screenshots:
- ![Bronze Mapping](./Sales%20Bronze%20Layer%20Mapping.png)
- ![Load Territory](./Load%20Territory%20Mapping.png)
- ![Load Ship Method](./Load%20ShipMethod%20Mapping.png)
- ![Load Product](./Load%20Product%20Mapping.png)
- ![Load Order Dates](./Load%20Order%20Dates.png)
- ![Load Due Dates](./Load%20Due%20Dates.png)
- ![Load Ship Dates](./Load%20Ship%20Dates.png)
- ![Load Fact](./Load%20Fact%20Mapping.png)

---

## 📂 Repository Structure

```bash
.
├── Data Source/                # Source files / dataset (if any)
├── Informatica Mapping/        # Informatica exported objects (mappings, sessions, workflows)
├── Scripts/                    # SQL scripts (DDL/DML) to build & load the DWH
├── Visualization/              # Any dashboards / visuals / docs
├── *.png                       # Diagrams + screenshots (mappings, workflows)
└── Sales_DWH.bak               # SQL Server backup (restore to run locally)
