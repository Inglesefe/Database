CREATE VIEW v_account_executive AS
SELECT
	ae.idaccountexecutive, ae.name, ae.identification,
	it.ididentificationtype, it.name AS identificationtype
FROM
	account_executive ae
	INNER JOIN identification_type it on ae.ididentificationtype = it.ididentificationtype;
