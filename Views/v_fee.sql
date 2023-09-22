CREATE VIEW v_fee AS
SELECT
 f.idfee,
 f.idregistration,
 f.value,
 f.number,
 f.dueDate,
 it.idincometype,
 it.code AS incometype_code,
 it.name AS incometype
FROM
 fee f
 INNER JOIN income_type it ON f.idincometype = it.idincometype;