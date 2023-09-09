CREATE VIEW v_registration AS
SELECT
	r.idregistration,
    r.date,
    r.contract_number,
    o.idoffice,
    o.name as office,
    o.address as office_address,
    o.idcity as office_idcity,
    o.city_code as office_city_code,
    o.idcountry as office_idcountry,
    o.country_name as office_country_name,
    ow.idowner,
    ow.name as owner,
    ow.ididentificationtype as owner_ididentificationtype,
    ow.identificationtype as owner_identificationtype,
    ow.identification as owner_identification,
    ow.address_home as owner_address_home,
    ow.address_office as owner_address_office,
    ow.phone_home as owner_phone_home,
    ow.phone_office as owner_phone_office,
    ow.email as owner_email,
    b1.idbeneficiary as idbeneficiary1,
    b1.name as beneficiary1,
    b1.ididentificationtype as beneficiary1_ididentificationtype,
    b1.identificationtype as beneficiary1_identificationtype,
    b1.identification as beneficiary1_identification,
    b1.relationship as beneficiary1_relationship,
    b2.idbeneficiary as idbeneficiary2,
    b2.name as beneficiary2,
    b2.ididentificationtype as beneficiary2_ididentificationtype,
    b2.identificationtype as beneficiary2_identificationtype,
    b2.identification as beneficiary2_identification,
    b2.relationship as beneficiary2_relationship,
    p.idplan,
    p.value as plan_value,
    p.initial_fee as plan_initial_fee,
    p.installments_number as plan_installments_number,
    p.installment_value as plan_installment_value,
    p.active as plan_active,
    p.description as plan_description
FROM
	registration r
    INNER JOIN v_office o ON r.idoffice = o.idoffice
    INNER JOIN v_owner ow ON r.idowner = ow.idowner
	INNER JOIN plan p ON r.idplan = p.idplan
    LEFT JOIN v_beneficiary b1 ON r.idbeneficiary1 = b1.idbeneficiary
	LEFT JOIN v_beneficiary b2 ON r.idbeneficiary2 = b2.idbeneficiary;