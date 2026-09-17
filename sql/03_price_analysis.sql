-- SQLite. Run after 02_clean_views.sql. Prices are in EUR/MWh.

-- Mean, extremes and population standard deviation by market.
SELECT country, COUNT(price) AS observations,
       AVG(price) AS avg_price, MIN(price) AS min_price, MAX(price) AS max_price,
       SQRT(AVG(price * price) - AVG(price) * AVG(price)) AS std_price
FROM electricity_price_analysis
GROUP BY country;

-- Negative-price frequency, including markets with zero negative observations.
SELECT country,
       SUM(CASE WHEN price < 0 THEN 1 ELSE 0 END) AS negative_observations,
       100.0 * SUM(CASE WHEN price < 0 THEN 1 ELSE 0 END) / COUNT(price) AS negative_pct
FROM electricity_price_analysis
GROUP BY country;

-- Monthly arithmetic averages, preserving both year and month in UTC.
SELECT country, STRFTIME('%Y-%m', datetime_utc) AS month, AVG(price) AS avg_price
FROM electricity_price_analysis
GROUP BY country, month;

-- June and December comparison from the original analysis.
SELECT country, STRFTIME('%Y-%m', datetime_utc) AS month, AVG(price) AS avg_price
FROM electricity_price_analysis
WHERE STRFTIME('%m', datetime_utc) IN ('06', '12')
GROUP BY country, month;

-- Zero-price observations in Northern Italy.
SELECT COUNT(price) AS zero_price_observations
FROM electricity_price_analysis
WHERE price = 0 AND country = 'IT_NORD';

SELECT datetime_utc
FROM electricity_price_analysis
WHERE price = 0 AND country = 'IT_NORD';
