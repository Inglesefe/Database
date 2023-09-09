CREATE VIEW v_user_role AS
SELECT
	ur.iduserrole, u.iduser, u.login,
    u.name as user, u.active, r.idrole,
    r.name as role
FROM
	user_role ur
    INNER JOIN user u ON ur.iduser = u.iduser
    INNER JOIN role r ON ur.idrole = r.idrole;