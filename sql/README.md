# SQL files

The numbered scripts provide a runnable selection of the project's original SQLite work. [original/Script1.sql](original/Script1.sql) is an unchanged copy of the later Desktop working script and is retained for comparison. It contains exploratory statements, repeated view definitions and a prose note, so it is not intended to run as a single batch.

## Provenance

| File | Relationship to the original work |
| --- | --- |
| [00_schema.sql](00_schema.sql) | Table definition extracted from `electricity_raw` in the original database, packaged as a separate setup file. |
| [01_data_quality.sql](01_data_quality.sql) | The opening audit block from Script1.sql, copied verbatim with an introductory comment. This is a selection, not every check in the working script. |
| [02_clean_views.sql](02_clean_views.sql) | The final `electricity_clean` definition is copied verbatim. The analysis view retains `WHERE price IS NOT NULL`. Two `DROP VIEW IF EXISTS` statements allow the views to be rebuilt in dependency order. |
| [03_price_analysis.sql](03_price_analysis.sql) | Existing calculations reorganized into six result sets. Mean, extremes, count and population standard deviation are combined; negative counts and percentages are combined; output names are standardized; the June/December `OR` filter is written as equivalent `IN`. |
| [04_export.sql](04_export.sql) | Export helper added during repository preparation. It lists the existing analysis-view columns and formats UTC timestamps as day/month/year and hours:minutes to match the project's CSV. It does not modify stored data or views. |

The organized analysis omits repeated queries, intermediate experiments, ambiguous ungrouped output columns, the non-SQL prose note and the fixed-rank median experiment. They remain visible in the original script. No median result is used in the published findings.

The organized files are therefore not a verbatim copy of the complete working script. Their retained calculations were checked against the existing export, including market statistics, negative-price frequency, monthly averages and Northern Italy's zero-price observations.

For execution order and import/export settings, see [data/README.md](../data/README.md).
