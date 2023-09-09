CREATE VIEW v_owner AS
SELECT
	o.idowner,
	o.name,
	it.ididentificationtype,
	it.name AS identificationtype,
	o.identification,
	o.address_home,
	o.address_office,
	o.phone_home,
	o.phone_office,
	o.email
FROM
	owner o
	INNER JOIN identification_type it ON o.ididentificationtype = it.ididentificationtype;