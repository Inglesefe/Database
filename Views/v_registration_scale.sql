CREATE VIEW v_registration_scale AS
SELECT
	rs.idregistrationscale,
    rs.idregistration,
    s.idscale,
    s.code as scale_code,
    s.name as scale,
    s.comission as scale_comission,
    s.`order` as scale_order,
    ae.idaccountexecutive,
    ae.name as accountexecutive,
    ae.identification as account_executive_identification,
    ae.ididentificationtype as account_executive_ididentificationtype,
    ae.identificationtype as account_executive_identificationtype
FROM
	registration_scale rs
    INNER JOIN scale s ON rs.idscale = s.idscale
    INNER JOIN v_account_executive ae ON rs.idaccountexecutive = ae.idaccountexecutive