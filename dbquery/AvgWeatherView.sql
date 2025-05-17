CREATE VIEW NormalAnAvgWeather AS
SELECT
    w.datetime,
	w.location_id,
    w.temperature,
	aw.temperature as avg_temp,
    w.humidity,
	aw.humidity as avg_hum
FROM
    OMWeather w
JOIN
    OMAvgWeather aw ON CAST(w.datetime AS DATE) = CAST(aw.datetime AS DATE)