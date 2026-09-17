# Source data

Download version 2 of [European Electricity Price & Generation 2024–25](https://www.kaggle.com/datasets/patrikpetovsky/european-electricity-price-and-generation-2024-25/versions/2), published by Patrik Petovsky using ENTSO-E data. The publisher lists the dataset licence as Community Data License Agreement – Sharing 1.0.

The original file is `entsoe_data_2024_2025.csv`: 301,391 records and 39 columns. Prices are in EUR/MWh and generation fields in MW. Original timestamps include UTC offsets; the SQL cleaning view converts them to UTC.

The full CSV files are not bundled here. Excel and Power BI contain the data used by the saved reports.

## Reproduce the SQL analysis

All `sql/...` paths below are relative to the repository root.

1. Create an empty SQLite database and run [00_schema.sql](../sql/00_schema.sql) once. This creates `electricity_raw` with the original column names and types.
2. Import the original Kaggle CSV into that existing table. Use UTF-8, comma as delimiter, the first row as headers and a decimal point for numbers. Match all 39 columns by name. Import empty fields as SQL `NULL`, not the text `NULL` or numeric zero. Keep the original timestamp strings, including their offsets, and preserve the table schema.
3. Run [01_data_quality.sql](../sql/01_data_quality.sql) and inspect each result set. Some queries generate SQL text; the expanded checks are also included in the file.
4. Run [02_clean_views.sql](../sql/02_clean_views.sql) to create `electricity_clean` and `electricity_price_analysis`. The latter excludes missing prices while retaining negative and zero prices. The script recreates only these views, without altering the raw table.
5. Run the queries in [03_price_analysis.sql](../sql/03_price_analysis.sql). The standard-deviation expression requires a SQLite build with `SQRT` support. Each query returns a separate result set.
6. Export the result of [04_export.sql](../sql/04_export.sql) as `electricity_price_analysis.csv`, with UTF-8 encoding, comma separators, headers and decimal points. Timestamps are formatted as `dd/MM/yyyy HH:mm` and represent UTC. Preserve SQL nulls as empty CSV fields.

Expected counts for source version 2:

| Stage | Rows | Columns |
| --- | ---: | ---: |
| Original CSV / electricity_raw | 301,391 | 39 |
| electricity_clean | 301,391 | 38 |
| electricity_price_analysis / export | 301,369 | 38 |

The 22 excluded rows have missing prices. No imputation is used. The `marine` column is absent from the original final cleaning view and therefore from the export.

This sequence was tested from a fresh import of the Kaggle CSV in SQLite. Exported timestamps, market codes, missing-value positions and numeric values match the existing project export within floating-point precision. DBeaver can be used as the SQLite client; its import wizard was not part of that test, so the settings above must be applied explicitly.

For report-specific use, see the [Excel instructions](../excel/README.md) and [Power BI instructions](../power-bi/README.md).
