# Power Query

[entsoe_data_2024_2025.m](entsoe_data_2024_2025.m) contains the preparation query extracted from the original Excel workbook. Both recovered preparation workbooks contained the same query.

The saved transformations are:

1. Import the CSV with a comma delimiter, UTF-8 encoding and 39 columns.
2. Promote the first row to column headers.
3. Assign numeric types to prices and generation values, date/time with timezone to `datetime`, and text to `country`, using the en-US locale.

The transformations have not been changed. To make the export usable as a single query, the surrounding `section/shared` declarations and final section-level semicolon were removed. The original machine-specific CSV path was replaced with the editable `RawCsvPath` variable.

## Use in Excel

Create a blank Power Query query, open the Advanced Editor and paste the contents of the `.m` file. Set `RawCsvPath` to the downloaded original CSV and name the query `entsoe_data_2024_2025`.

The exported transformation body has been compared with the workbook's saved code. A fresh Excel refresh of this standalone export was not part of the SQL reproduction test.

This query documents the initial preparation step. The final Excel report uses the cleaned SQL export and does not contain this Power Query connection.
