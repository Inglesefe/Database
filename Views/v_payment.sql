CREATE VIEW v_payment AS
SELECT
	p.idpayment,
    pt.idpaymenttype,
    pt.name AS paymenttype,
    f.idfee,
    p.value,
    p.date,
    p.invoice,
    p.proof
FROM
	payment p
    INNER JOIN payment_type pt ON p.idpaymenttype = pt.idpaymenttype
    INNER JOIN fee f ON p.idfee = f.idfee;