CREATE VIEW v_account_number AS
SELECT
	an.idaccountnumber,
	an.number,
	at.idaccounttype,
    at.name AS accounttype,
	c.idcity,
    c.code AS city_code,
    c.name AS city_name,
    c.idcountry,
    c.country_code,
    c.country_name
FROM
	account_number an
    INNER JOIN account_type at ON an.idaccounttype = at.idaccounttype
    INNER JOIN v_city c ON an.idcity = c.idcity;