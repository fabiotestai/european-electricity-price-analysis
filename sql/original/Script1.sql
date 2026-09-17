SELECT *
FROM pragma_table_info('electricity_raw');
SELECT GROUP_CONCAT(
    printf(
        '("%w" IS NOT NULL AND TRIM(CAST("%w" AS TEXT)) = '''')',
        name,
        name
    ),
    ' OR '
)
FROM pragma_table_info('electricity_raw');
SELECT COUNT(*)
FROM electricity_raw
WHERE ("datetime" IS NOT NULL AND TRIM(CAST("datetime" AS TEXT)) = '') OR ("country" IS NOT NULL AND TRIM(CAST("country" AS TEXT)) = '') OR ("price" IS NOT NULL AND TRIM(CAST("price" AS TEXT)) = '') OR ("nuclear" IS NOT NULL AND TRIM(CAST("nuclear" AS TEXT)) = '') OR ("fossil_gas" IS NOT NULL AND TRIM(CAST("fossil_gas" AS TEXT)) = '') OR ("solar" IS NOT NULL AND TRIM(CAST("solar" AS TEXT)) = '') OR ("waste" IS NOT NULL AND TRIM(CAST("waste" AS TEXT)) = '') OR ("wind_offshore" IS NOT NULL AND TRIM(CAST("wind_offshore" AS TEXT)) = '') OR ("wind_onshore" IS NOT NULL AND TRIM(CAST("wind_onshore" AS TEXT)) = '') OR ("_biomass_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_biomass_actual_aggregated_" AS TEXT)) = '') OR ("_fossil_brown_coal_lignite_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_fossil_brown_coal_lignite_actual_aggregated_" AS TEXT)) = '') OR ("_fossil_coal_derived_gas_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_fossil_coal_derived_gas_actual_aggregated_" AS TEXT)) = '') OR ("_fossil_gas_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_fossil_gas_actual_aggregated_" AS TEXT)) = '') OR ("_fossil_hard_coal_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_fossil_hard_coal_actual_aggregated_" AS TEXT)) = '') OR ("_fossil_oil_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_fossil_oil_actual_aggregated_" AS TEXT)) = '') OR ("_hydro_pumped_storage_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_hydro_pumped_storage_actual_aggregated_" AS TEXT)) = '') OR ("_hydro_pumped_storage_actual_consumption_" IS NOT NULL AND TRIM(CAST("_hydro_pumped_storage_actual_consumption_" AS TEXT)) = '') OR ("_hydro_run_of_river_and_poundage_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_hydro_run_of_river_and_poundage_actual_aggregated_" AS TEXT)) = '') OR ("_hydro_water_reservoir_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_hydro_water_reservoir_actual_aggregated_" AS TEXT)) = '') OR ("_other_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_other_actual_aggregated_" AS TEXT)) = '') OR ("_other_renewable_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_other_renewable_actual_aggregated_" AS TEXT)) = '') OR ("_solar_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_solar_actual_aggregated_" AS TEXT)) = '') OR ("_wind_onshore_actual_aggregated_" IS NOT NULL AND TRIM(CAST("_wind_onshore_actual_aggregated_" AS TEXT)) = '') OR ("biomass" IS NOT NULL AND TRIM(CAST("biomass" AS TEXT)) = '') OR ("energy_storage" IS NOT NULL AND TRIM(CAST("energy_storage" AS TEXT)) = '') OR ("fossil_brown_coal_lignite" IS NOT NULL AND TRIM(CAST("fossil_brown_coal_lignite" AS TEXT)) = '') OR ("fossil_coal_derived_gas" IS NOT NULL AND TRIM(CAST("fossil_coal_derived_gas" AS TEXT)) = '') OR ("fossil_hard_coal" IS NOT NULL AND TRIM(CAST("fossil_hard_coal" AS TEXT)) = '') OR ("fossil_oil" IS NOT NULL AND TRIM(CAST("fossil_oil" AS TEXT)) = '') OR ("fossil_oil_shale" IS NOT NULL AND TRIM(CAST("fossil_oil_shale" AS TEXT)) = '') OR ("fossil_peat" IS NOT NULL AND TRIM(CAST("fossil_peat" AS TEXT)) = '') OR ("geothermal" IS NOT NULL AND TRIM(CAST("geothermal" AS TEXT)) = '') OR ("hydro_pumped_storage" IS NOT NULL AND TRIM(CAST("hydro_pumped_storage" AS TEXT)) = '') OR ("hydro_run_of_river_and_poundage" IS NOT NULL AND TRIM(CAST("hydro_run_of_river_and_poundage" AS TEXT)) = '') OR ("hydro_total" IS NOT NULL AND TRIM(CAST("hydro_total" AS TEXT)) = '') OR ("hydro_water_reservoir" IS NOT NULL AND TRIM(CAST("hydro_water_reservoir" AS TEXT)) = '') OR ("marine" IS NOT NULL AND TRIM(CAST("marine" AS TEXT)) = '') OR ("other" IS NOT NULL AND TRIM(CAST("other" AS TEXT)) = '') OR ("other_renewable" IS NOT NULL AND TRIM(CAST("other_renewable" AS TEXT)) = '');
SELECT GROUP_CONCAT(
    printf(
        '("%w" IS NULL OR TRIM(CAST("%w" AS TEXT)) = '''')',
        name,
        name
    ),
    ' AND '
)
FROM pragma_table_info('electricity_raw');
SELECT COUNT(*)
FROM electricity_raw
WHERE ("datetime" IS NULL OR TRIM(CAST("datetime" AS TEXT)) = '') AND ("country" IS NULL OR TRIM(CAST("country" AS TEXT)) = '') AND ("price" IS NULL OR TRIM(CAST("price" AS TEXT)) = '') AND ("nuclear" IS NULL OR TRIM(CAST("nuclear" AS TEXT)) = '') AND ("fossil_gas" IS NULL OR TRIM(CAST("fossil_gas" AS TEXT)) = '') AND ("solar" IS NULL OR TRIM(CAST("solar" AS TEXT)) = '') AND ("waste" IS NULL OR TRIM(CAST("waste" AS TEXT)) = '') AND ("wind_offshore" IS NULL OR TRIM(CAST("wind_offshore" AS TEXT)) = '') AND ("wind_onshore" IS NULL OR TRIM(CAST("wind_onshore" AS TEXT)) = '') AND ("_biomass_actual_aggregated_" IS NULL OR TRIM(CAST("_biomass_actual_aggregated_" AS TEXT)) = '') AND ("_fossil_brown_coal_lignite_actual_aggregated_" IS NULL OR TRIM(CAST("_fossil_brown_coal_lignite_actual_aggregated_" AS TEXT)) = '') AND ("_fossil_coal_derived_gas_actual_aggregated_" IS NULL OR TRIM(CAST("_fossil_coal_derived_gas_actual_aggregated_" AS TEXT)) = '') AND ("_fossil_gas_actual_aggregated_" IS NULL OR TRIM(CAST("_fossil_gas_actual_aggregated_" AS TEXT)) = '') AND ("_fossil_hard_coal_actual_aggregated_" IS NULL OR TRIM(CAST("_fossil_hard_coal_actual_aggregated_" AS TEXT)) = '') AND ("_fossil_oil_actual_aggregated_" IS NULL OR TRIM(CAST("_fossil_oil_actual_aggregated_" AS TEXT)) = '') AND ("_hydro_pumped_storage_actual_aggregated_" IS NULL OR TRIM(CAST("_hydro_pumped_storage_actual_aggregated_" AS TEXT)) = '') AND ("_hydro_pumped_storage_actual_consumption_" IS NULL OR TRIM(CAST("_hydro_pumped_storage_actual_consumption_" AS TEXT)) = '') AND ("_hydro_run_of_river_and_poundage_actual_aggregated_" IS NULL OR TRIM(CAST("_hydro_run_of_river_and_poundage_actual_aggregated_" AS TEXT)) = '') AND ("_hydro_water_reservoir_actual_aggregated_" IS NULL OR TRIM(CAST("_hydro_water_reservoir_actual_aggregated_" AS TEXT)) = '') AND ("_other_actual_aggregated_" IS NULL OR TRIM(CAST("_other_actual_aggregated_" AS TEXT)) = '') AND ("_other_renewable_actual_aggregated_" IS NULL OR TRIM(CAST("_other_renewable_actual_aggregated_" AS TEXT)) = '') AND ("_solar_actual_aggregated_" IS NULL OR TRIM(CAST("_solar_actual_aggregated_" AS TEXT)) = '') AND ("_wind_onshore_actual_aggregated_" IS NULL OR TRIM(CAST("_wind_onshore_actual_aggregated_" AS TEXT)) = '') AND ("biomass" IS NULL OR TRIM(CAST("biomass" AS TEXT)) = '') AND ("energy_storage" IS NULL OR TRIM(CAST("energy_storage" AS TEXT)) = '') AND ("fossil_brown_coal_lignite" IS NULL OR TRIM(CAST("fossil_brown_coal_lignite" AS TEXT)) = '') AND ("fossil_coal_derived_gas" IS NULL OR TRIM(CAST("fossil_coal_derived_gas" AS TEXT)) = '') AND ("fossil_hard_coal" IS NULL OR TRIM(CAST("fossil_hard_coal" AS TEXT)) = '') AND ("fossil_oil" IS NULL OR TRIM(CAST("fossil_oil" AS TEXT)) = '') AND ("fossil_oil_shale" IS NULL OR TRIM(CAST("fossil_oil_shale" AS TEXT)) = '') AND ("fossil_peat" IS NULL OR TRIM(CAST("fossil_peat" AS TEXT)) = '') AND ("geothermal" IS NULL OR TRIM(CAST("geothermal" AS TEXT)) = '') AND ("hydro_pumped_storage" IS NULL OR TRIM(CAST("hydro_pumped_storage" AS TEXT)) = '') AND ("hydro_run_of_river_and_poundage" IS NULL OR TRIM(CAST("hydro_run_of_river_and_poundage" AS TEXT)) = '') AND ("hydro_total" IS NULL OR TRIM(CAST("hydro_total" AS TEXT)) = '') AND ("hydro_water_reservoir" IS NULL OR TRIM(CAST("hydro_water_reservoir" AS TEXT)) = '') AND ("marine" IS NULL OR TRIM(CAST("marine" AS TEXT)) = '') AND ("other" IS NULL OR TRIM(CAST("other" AS TEXT)) = '') AND ("other_renewable" IS NULL OR TRIM(CAST("other_renewable" AS TEXT)) = '');
SELECT datetime, country, COUNT(*)
FROM electricity_raw
GROUP BY datetime, country 
HAVING COUNT(*)>1;
SELECT *
FROM pragma_table_info('electricity_raw');
SELECT typeof(wind_offshore), COUNT(*)
FROM electricity_raw
GROUP BY typeof(wind_offshore);
SELECT DISTINCT wind_offshore
FROM electricity_raw
WHERE TRIM(wind_offshore) <> ''
LIMIT 30;
SELECT DISTINCT wind_offshore
FROM electricity_raw
WHERE TRIM(wind_offshore) <> ''
  AND wind_offshore GLOB '*[^0-9.+-]*';
SELECT GROUP_CONCAT(
    printf(
        'SELECT %Q AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("%w") <> ''''
         AND "%w" GLOB ''*[^0-9.+-]*''',
        name,
        name,
        name
    ),
    ' UNION ALL '
)
FROM pragma_table_info('electricity_raw')
WHERE type LIKE '%CHAR%'
  AND name NOT IN ('datetime', 'country');
 SELECT 'wind_offshore' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("wind_offshore") <> ''
         AND "wind_offshore" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_biomass_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_biomass_actual_aggregated_") <> ''
         AND "_biomass_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_fossil_brown_coal_lignite_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_fossil_brown_coal_lignite_actual_aggregated_") <> ''
         AND "_fossil_brown_coal_lignite_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_fossil_coal_derived_gas_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_fossil_coal_derived_gas_actual_aggregated_") <> ''
         AND "_fossil_coal_derived_gas_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_fossil_gas_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_fossil_gas_actual_aggregated_") <> ''
         AND "_fossil_gas_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_fossil_hard_coal_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_fossil_hard_coal_actual_aggregated_") <> ''
         AND "_fossil_hard_coal_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_fossil_oil_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_fossil_oil_actual_aggregated_") <> ''
         AND "_fossil_oil_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_hydro_pumped_storage_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_hydro_pumped_storage_actual_aggregated_") <> ''
         AND "_hydro_pumped_storage_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_hydro_pumped_storage_actual_consumption_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_hydro_pumped_storage_actual_consumption_") <> ''
         AND "_hydro_pumped_storage_actual_consumption_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_hydro_run_of_river_and_poundage_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_hydro_run_of_river_and_poundage_actual_aggregated_") <> ''
         AND "_hydro_run_of_river_and_poundage_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_hydro_water_reservoir_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_hydro_water_reservoir_actual_aggregated_") <> ''
         AND "_hydro_water_reservoir_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_other_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_other_actual_aggregated_") <> ''
         AND "_other_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_other_renewable_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_other_renewable_actual_aggregated_") <> ''
         AND "_other_renewable_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_solar_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_solar_actual_aggregated_") <> ''
         AND "_solar_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT '_wind_onshore_actual_aggregated_' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("_wind_onshore_actual_aggregated_") <> ''
         AND "_wind_onshore_actual_aggregated_" GLOB '*[^0-9.+-]*' UNION ALL SELECT 'energy_storage' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("energy_storage") <> ''
         AND "energy_storage" GLOB '*[^0-9.+-]*' UNION ALL SELECT 'fossil_oil_shale' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("fossil_oil_shale") <> ''
         AND "fossil_oil_shale" GLOB '*[^0-9.+-]*' UNION ALL SELECT 'fossil_peat' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("fossil_peat") <> ''
         AND "fossil_peat" GLOB '*[^0-9.+-]*' UNION ALL SELECT 'geothermal' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("geothermal") <> ''
         AND "geothermal" GLOB '*[^0-9.+-]*' UNION ALL SELECT 'marine' AS colonna, COUNT(*) AS valori_sospetti
         FROM electricity_raw
         WHERE TRIM("marine") <> ''
         AND "marine" GLOB '*[^0-9.+-]*';
SELECT DISTINCT datetime
FROM electricity_raw
WHERE datetime IS NOT NULL
LIMIT 30;
SELECT COUNT(*)
FROM electricity_raw
WHERE datetime IS NOT NULL
  AND TRIM(datetime) <> ''
  AND datetime(datetime) IS NULL;
SELECT
    CAST(NULLIF(TRIM(wind_offshore), '') AS REAL) AS wind_offshore
FROM electricity_raw;
SELECT
    COUNT(*) AS totale,
    COUNT(NULLIF(TRIM(wind_offshore), '')) AS presenti
FROM electricity_raw;
CREATE VIEW electricity_clean AS
SELECT
    datetime(NULLIF(TRIM("datetime"), '')) AS "datetime_utc",
    "country",
    "price",
    "nuclear",
    "fossil_gas",
    "solar",
    "waste",
 
    CAST(NULLIF(TRIM("wind_offshore"), '') AS REAL)
        AS "wind_offshore",
 
    "wind_onshore",
 
    CAST(NULLIF(TRIM("_biomass_actual_aggregated_"), '') AS REAL)
        AS "_biomass_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_brown_coal_lignite_actual_aggregated_"), '') AS REAL)
        AS "_fossil_brown_coal_lignite_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_coal_derived_gas_actual_aggregated_"), '') AS REAL)
        AS "_fossil_coal_derived_gas_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_gas_actual_aggregated_"), '') AS REAL)
        AS "_fossil_gas_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_hard_coal_actual_aggregated_"), '') AS REAL)
        AS "_fossil_hard_coal_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_oil_actual_aggregated_"), '') AS REAL)
        AS "_fossil_oil_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_pumped_storage_actual_aggregated_"), '') AS REAL)
        AS "_hydro_pumped_storage_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_pumped_storage_actual_consumption_"), '') AS REAL)
        AS "_hydro_pumped_storage_actual_consumption_",
 
    CAST(NULLIF(TRIM("_hydro_run_of_river_and_poundage_actual_aggregated_"), '') AS REAL)
        AS "_hydro_run_of_river_and_poundage_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_water_reservoir_actual_aggregated_"), '') AS REAL)
        AS "_hydro_water_reservoir_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_other_actual_aggregated_"), '') AS REAL)
        AS "_other_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_other_renewable_actual_aggregated_"), '') AS REAL)
        AS "_other_renewable_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_solar_actual_aggregated_"), '') AS REAL)
        AS "_solar_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_wind_onshore_actual_aggregated_"), '') AS REAL)
        AS "_wind_onshore_actual_aggregated_",
 
    "biomass",
 
    CAST(NULLIF(TRIM("energy_storage"), '') AS REAL)
        AS "energy_storage",
 
    "fossil_brown_coal_lignite",
    "fossil_coal_derived_gas",
    "fossil_hard_coal",
    "fossil_oil",
 
    CAST(NULLIF(TRIM("fossil_oil_shale"), '') AS REAL)
        AS "fossil_oil_shale",
 
    CAST(NULLIF(TRIM("fossil_peat"), '') AS REAL)
        AS "fossil_peat",
 
    CAST(NULLIF(TRIM("geothermal"), '') AS REAL)
        AS "geothermal",
 
    "hydro_pumped_storage",
    "hydro_run_of_river_and_poundage",
    "hydro_total",
    "hydro_water_reservoir",
    "other",
    "other_renewable"
 
FROM "electricity_raw";
 
SELECT COUNT(*) AS "righe_clean"
FROM "electricity_clean";
PRAGMA table_info('electricity_clean');
SELECT
    datetime_utc,
    typeof(datetime_utc) AS tipo_datetime
FROM electricity_clean
WHERE datetime_utc IS NOT NULL
LIMIT 10;
SELECT country,COUNT(*), COUNT(price), MAX(datetime_utc), MIN(datetime_utc)
FROM "electricity_clean"
GROUP BY country;
SELECT COUNT(price)
FROM electricity_raw;
SELECT COUNT(price)
FROM electricity_clean;
SELECT COUNT(*)
FROM electricity_clean;
SELECT COUNT(*)
FROM electricity_raw;
DROP VIEW electricity_clean;
SELECT COUNT(*)
FROM electricity_raw
WHERE TRIM(CAST(price AS TEXT))='';
SELECT COUNT(*)
FROM electricity_clean
WHERE TRIM(CAST(price AS TEXT))='';
SELECT
    price AS price_originale,
    CAST(NULLIF(TRIM(CAST(price AS TEXT)), '') AS REAL) AS clean_price
FROM electricity_clean
WHERE TRIM(CAST(price AS TEXT)) = '';
DROP VIEW electricity_clean;
CREATE VIEW electricity_clean AS
SELECT
    datetime(NULLIF(TRIM("datetime"), '')) AS "datetime_utc",
    "country",
    CAST(NULLIF(TRIM(CAST(price AS TEXT)), '') AS REAL) AS price,
    "nuclear",
    "fossil_gas",
    "solar",
    "waste",
 
    CAST(NULLIF(TRIM("wind_offshore"), '') AS REAL)
        AS "wind_offshore",
 
    "wind_onshore",
 
    CAST(NULLIF(TRIM("_biomass_actual_aggregated_"), '') AS REAL)
        AS "_biomass_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_brown_coal_lignite_actual_aggregated_"), '') AS REAL)
        AS "_fossil_brown_coal_lignite_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_coal_derived_gas_actual_aggregated_"), '') AS REAL)
        AS "_fossil_coal_derived_gas_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_gas_actual_aggregated_"), '') AS REAL)
        AS "_fossil_gas_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_hard_coal_actual_aggregated_"), '') AS REAL)
        AS "_fossil_hard_coal_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_fossil_oil_actual_aggregated_"), '') AS REAL)
        AS "_fossil_oil_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_pumped_storage_actual_aggregated_"), '') AS REAL)
        AS "_hydro_pumped_storage_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_pumped_storage_actual_consumption_"), '') AS REAL)
        AS "_hydro_pumped_storage_actual_consumption_",
 
    CAST(NULLIF(TRIM("_hydro_run_of_river_and_poundage_actual_aggregated_"), '') AS REAL)
        AS "_hydro_run_of_river_and_poundage_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_hydro_water_reservoir_actual_aggregated_"), '') AS REAL)
        AS "_hydro_water_reservoir_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_other_actual_aggregated_"), '') AS REAL)
        AS "_other_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_other_renewable_actual_aggregated_"), '') AS REAL)
        AS "_other_renewable_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_solar_actual_aggregated_"), '') AS REAL)
        AS "_solar_actual_aggregated_",
 
    CAST(NULLIF(TRIM("_wind_onshore_actual_aggregated_"), '') AS REAL)
        AS "_wind_onshore_actual_aggregated_",
 
    "biomass",
 
    CAST(NULLIF(TRIM("energy_storage"), '') AS REAL)
        AS "energy_storage",
 
    "fossil_brown_coal_lignite",
    "fossil_coal_derived_gas",
    "fossil_hard_coal",
    "fossil_oil",
 
    CAST(NULLIF(TRIM("fossil_oil_shale"), '') AS REAL)
        AS "fossil_oil_shale",
 
    CAST(NULLIF(TRIM("fossil_peat"), '') AS REAL)
        AS "fossil_peat",
 
    CAST(NULLIF(TRIM("geothermal"), '') AS REAL)
        AS "geothermal",
 
    "hydro_pumped_storage",
    "hydro_run_of_river_and_poundage",
    "hydro_total",
    "hydro_water_reservoir",
    "other",
    "other_renewable"
 
FROM "electricity_raw";
SELECT COUNT(*)
FROM electricity_clean;
SELECT COUNT(price)
FROM electricity_clean;
SELECT COUNT(price)
FROM electricity_raw;
SELECT COUNT(*)
FROM electricity_raw;
SELECT datetime_utc, COUNT(datetime_utc), country
FROM electricity_clean
GROUP BY country, datetime_utc
HAVING COUNT(datetime_utc)>1;

SELECT a.datetime_utc, ie.datetime_utc
FROM electricity_clean AS a
LEFT JOIN electricity_clean AS ie
ON a.datetime_utc = ie.datetime_utc
   AND ie.country = 'IE_SEM'
WHERE a.country = 'AT'
  AND ie.datetime_utc IS NULL;
SELECT COUNT(*), country, COUNT(price), ec.datetime_utc 
FROM electricity_clean ec
GROUP BY country
HAVING COUNT(*) - COUNT(price)>0;
SELECT country, datetime_utc
FROM electricity_clean ec 
WHERE ec.price IS NULL;
CREATE VIEW electricity_price_analysis
AS SELECT *
FROM electricity_clean
WHERE price IS NOT NULL;
SELECT COUNT(DISTINCT country), datetime_utc
FROM electricity_price_analysis
GROUP BY datetime_utc
HAVING COUNT(DISTINCT country) <> 23;
SELECT AVG(price), MAX(price), MIN(price), country
FROM electricity_price_analysis
GROUP BY country;
SELECT
    country,
    AVG(price) AS avg_price,
    SQRT(
        AVG(price * price) - AVG(price) * AVG(price)
    ) AS std_price
FROM electricity_price_analysis
GROUP BY country;
WITH ordinati AS (
    SELECT
        country,
        price,
        ROW_NUMBER() OVER (
            PARTITION BY country
            ORDER BY price
        ) AS numero_progressivo
    FROM electricity_price_analysis
)

SELECT country, price
FROM ordinati
WHERE numero_progressivo = 6552;
WITH ordinati AS (
		SELECT
        country,
        price,
        ROW_NUMBER() OVER (
            PARTITION BY country
            ORDER BY price
        ) AS numero_progressivo
    FROM electricity_price_analysis),
	mediana AS(
					SELECT
					country,
					price AS prezzo_mediano
					FROM ordinati
					WHERE numero_progressivo = 6552),
	statistiche AS (
    SELECT
        country,
        AVG(price) AS prezzo_medio,
        SQRT(
            AVG(price * price) - AVG(price) * AVG(price)
        ) AS std_price,
        MIN(price) AS min_price,
        MAX(price) AS max_price
    FROM electricity_price_analysis
    GROUP BY country
)
SELECT 
	p.country,
    p.prezzo_mediano,
    s.prezzo_medio,
    s.std_price,
    s.min_price,
    s.max_price
FROM mediana AS p
JOIN statistiche AS s
    ON p.country = s.country;
SELECT COUNT(datetime_utc) AS numero_prezzi_negativi, country, price
FROM electricity_price_analysis epa
WHERE price<0
GROUP BY country;
ok quindi sarebbe;
SELECT country, SUM(
    CASE
        WHEN price < 0 THEN 1
        ELSE 0
    END) AS numero_prezzi_negativi
FROM electricity_price_analysis epa
GROUP BY country; 
SELECT COUNT(price)
FROM electricity_price_analysis epa 
WHERE price=0 AND country='IT_NORD';
SELECT epa.datetime_utc 
FROM electricity_price_analysis epa 
WHERE price=0 AND country='IT_NORD';
SELECT country, (SUM(
    CASE
        WHEN price < 0 THEN 1
        ELSE 0
    END)*100.0/COUNT(price)) AS percentuale_prezzi_negativi
FROM electricity_price_analysis epa
GROUP BY country; 
SELECT country,STRFTIME('%Y-%m', datetime_utc) AS mese, AVG(price)
FROM electricity_price_analysis epa 
GROUP BY country, mese;
SELECT country,STRFTIME('%Y-%m', datetime_utc) AS mese, AVG(price)
FROM electricity_price_analysis epa 
WHERE strftime('%m', datetime_utc) = '12' OR strftime('%m', datetime_utc) = '06'
GROUP BY country, mese;
SELECT country,STRFTIME('%Y-%m', datetime_utc) AS mese, AVG(price)
FROM electricity_price_analysis epa 
GROUP BY country, mese;
SELECT *
FROM electricity_price_analysis;

