-- Rebuild only the two project views; electricity_raw is not changed.
DROP VIEW IF EXISTS electricity_price_analysis;
DROP VIEW IF EXISTS electricity_clean;

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

CREATE VIEW electricity_price_analysis AS
SELECT * FROM electricity_clean
WHERE price IS NOT NULL;
