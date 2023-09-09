CREATE VIEW v_consecutive_number AS
SELECT
	cn.idconsecutivenumber,
	cn.number,
	ct.idconsecutivetype,
    ct.name AS consecutivetype,
	c.idcity,
    c.code AS city_code,
    c.name AS city_name,
    c.idcountry,
    c.country_code,
    c.country_name
FROM
	consecutive_number cn
    INNER JOIN consecutive_type ct ON cn.idconsecutivetype = ct.idconsecutivetype
    INNER JOIN v_city c ON cn.idcity = c.idcity;