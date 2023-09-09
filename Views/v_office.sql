CREATE VIEW v_office AS
SELECT
	o.idoffice,
	o.name,
	o.address,
	c.idcity,
	c.name as city,
	c.code as city_code,
	c.idcountry,
	c.country_name,
	c.country_code
FROM
	office o
	INNER JOIN v_city c ON o.idcity = c.idcity;