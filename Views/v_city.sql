CREATE VIEW v_city AS
SELECT
	c.idcity,
	co.idcountry,
	co.code AS country_code,
	co.name AS country_name,
	c.code,
	c.name
FROM
	city c
	INNER JOIN country co ON c.idcountry = co.idcountry;