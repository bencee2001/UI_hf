CREATE VIEW HourlyWithDailyAvgDamPrice AS
SELECT
    e.datetime,
    e.dam_price,
    a.dam_price as avg_price
FROM
    EntoseDamPrice e
JOIN
    EntoseAvgDamPrice a ON CAST(e.datetime AS DATE) = CAST(a.datetime AS DATE)