# Power BI report

Open [Report_UE_energy_price_analysis.pbix](Report_UE_energy_price_analysis.pbix) in Power BI Desktop to explore its saved data. It includes price KPI cards, a negative-price percentage measure, a monthly price chart, a market comparison and a market slicer.

## Example view

![Power BI report filtered to DE_LU and DK_1](../screenshots/power-bi-report.png)

This screenshot shows **DE_LU (Germany–Luxembourg)** and **DK_1 (Western Denmark)** selected. The cards and charts refer to that selection, not all 23 markets. The displayed average of 78.42 EUR/MWh and negative-price frequency of 5.90% are consistent with the selected markets in the project export.

## Source and refresh

The report is supplied with its saved data and original source configuration. A complete refresh against a newly exported CSV has not been validated in Power BI Desktop.

The project's cleaned CSV can be reproduced using [data/README.md](../data/README.md). Before refreshing a working copy of the report, inspect its existing Power Query Source step and subsequent type conversions. Check the file location, column mapping and day/month/year parsing of UTC timestamps; changing a path alone is not a verified refresh procedure for this package.
