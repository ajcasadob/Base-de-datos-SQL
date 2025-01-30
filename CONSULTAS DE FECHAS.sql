SELECT CURRENT_DATE - '1995-01-12'::date;


SELECT CURRENT_TIMESTAMP -
	'1995-01-12 08:15:21' ::timestamp;


SELECT age(CURRENT_TIMESTAMP)-'1995-01-12 08:20:30' ::timestamp;

SELECT CURRENT_DATE +1;

SELECT 'tomorrow'::timestamp;


SELECT 'allballs'::time;

SELECT CURRENT_DATE + '365 day'::interval;


SELECT llegada- salida
FROM vuelo
WHERE llegada -salida >= '2 hour'::interval;


SELECT EXTRACT (day FROM CURRENT_DATE);

SELECT date_part ('day', CURRENT_DATE);

SELECT extract (isodow FROM '1995-01-12'::date);


SELECT date_trunc('minute', CURRENT_TIMESTAMP);

SELECT *
FROM climatologia
WHERE fecha BETWEEN
MAKE_DATE(2019,03,21) AND
MAKE_DATE (2019,06,20)
ORDER BY fecha;

SELECT MAKE_INTERVAL (days => 10, weeks => 11);