CREATE VIEW v_executive_office AS
SELECT
	eo.idexecutiveoffice,
    eo.idoffice,
    ae.idaccountexecutive,
    ae.name as accountexecutive,
    ae.identification,
    ae.ididentificationtype,
    ae.identificationtype
FROM 
	executive_office eo
    INNER JOIN v_account_executive ae ON eo.idaccountexecutive = ae.idaccountexecutive;