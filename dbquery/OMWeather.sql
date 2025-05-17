CREATE TABLE "OMWeather" (
    "location_id" INT,
    "datetime" DATETIME,
    "temperature" DECIMAL(5,2),
    "humidity" INT,
    PRIMARY KEY ("location_id", "datetime")
 )