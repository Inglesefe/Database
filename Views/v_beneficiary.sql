CREATE VIEW v_beneficiary AS
SELECT
	b.idbeneficiary,
	b.idowner,
	o.name AS owner,
	o.ididentificationtype AS owner_ididentificationtype,
	o.identificationtype AS owner_identificationtype,
	o.identification AS owner_identification,
	o.address_home AS owner_address_home,
	o.address_office AS owner_address_office,
	o.phone_home AS owner_phone_home,
	o.phone_office AS owner_phone_office,
	o.email AS owner_email,
	b.name,
	b.ididentificationtype,
	it.name AS identificationtype,
	b.identification,
	b.relationship
FROM
	beneficiary b
	INNER JOIN identification_type it ON b.ididentificationtype = it.ididentificationtype
	INNER JOIN v_owner o ON b.idowner = o.idowner;
