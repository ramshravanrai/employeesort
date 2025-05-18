# Employee Compensation Forecasting

## Overview  
A WPF proof-of-concept app that lets HR stakeholders filter, chart, simulate and export employee compensation.

## Tech Stack  
- DB: SQL Server  
- Backend: C#/.NET 6, ADO.NET  
- Frontend: WPF, LiveCharts.Wpf  
- CSV Export: CsvHelper  

## Setup

1. Database  
   - Run `/Database/schema.sql`  
   - Run `/Database/stored_procs.sql`  
   - Bulk-load `EmployeeData.xlsx` into `employees`, `locations`, `roles`, etc.

2. App  
   - Open `CompForecast.sln` in Visual Studio  
   - Update connection string in `MainWindow.xaml.cs`  
   - Restore NuGet packages (LiveCharts, CsvHelper)  
   - Build & run  

## User Stories Fulfilled  

1. Filter & Display  
   - `sp_FilterEmployees` → DataGrid; combo-boxes + checkbox  

2. Avg Compensation by Location  
   - `sp_CalcAverageCompensation` → bar chart  

3. Experience Buckets  
   - `sp_GetExperienceDistribution` → second bar chart  

4. Simulate % Increment  
   - Client-side multiply + display both values  

5. CSV Export  
   - `sp_ExportFilteredEmployees` → CsvHelper → `.csv`  

---

