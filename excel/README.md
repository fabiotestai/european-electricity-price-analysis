# Excel report

[Energy_Price_Report.xlsx](Energy_Price_Report.xlsx) is self-contained. Open it to view the Report, Markets, Monthly and Data sheets without connecting to an external CSV.

`Data > Refresh All` refreshes the two PivotTables from the workbook's `EnergyData` table. It does not download or reimport source data.

## Replace the report data

Use the cleaned export described in [data/README.md](../data/README.md). Replace the table's data rows while preserving the table name `EnergyData` and these exact headers:

| Cleaned export | Excel table header | Cell value type |
| --- | --- | --- |
| datetime_utc | Datetime UTC | Excel date/time, parsed as day/month/year; keep UTC |
| country | Market | Text |
| price | Price EUR per MWh | Number, imported using a decimal point |
| Derived from datetime_utc | Month | Text in `yyyy-mm` form |

Remove any leftover rows from the previous dataset and resize the table to cover exactly the new rows. Then use `Data > Refresh All`.

The KPI formulas cover the full table. The chart reads the Monthly PivotTable and is fixed to January 2024–June 2025 for IE_SEM, IT_NORD and NO_3. New months or markets do not automatically extend the chart. Filtering out chart inputs produces `#N/A` (`#N/D` in Italian Excel) in its support cells so those values are not plotted.
