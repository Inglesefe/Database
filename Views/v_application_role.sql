CREATE VIEW v_application_role AS
SELECT
	ar.idapplicationrole,
	a.idapplication,
	a.name AS application,
	r.idrole,
	r.name AS role
FROM
	application_role ar
	INNER JOIN application a ON ar.idapplication = a.idapplication
	INNER JOIN role r ON ar.idrole = r.idrole;