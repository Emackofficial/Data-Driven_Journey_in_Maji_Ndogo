SHOW TABLES;

SELECT *
FROM location;

SELECT *
FROM visits;

SELECT *
FROM water_source;

SELECT *
FROM data_dictionary;

SELECT
	type_of_water_source
FROM water_source;

SELECT *
FROM visits
WHERE time_in_queue > 500;

SELECT *
FROM water_source;

/*SoRu35083224, SoRu38869224, HaRu19601224, KiRu26095224,AkRu05234224,AkLu01628224. */

SELECT *
FROM water_source
WHERE source_id IN ("SoRu35083224", "SoRu38869224","HaRu19601224","AkRu05234224","AkLu01628224");

SELECT *
FROM water_quality
WHERE subjective_quality_score = 10 
AND visit_count > 1 
AND type_of_water_source = "tap_in_home";

SELECT *
FROM well_pollution;

SELECT *
FROM well_polLution
WHERE results = "Clean"
AND biological > 0.01;








