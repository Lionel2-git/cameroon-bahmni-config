SELECT
    getPatientIdentifier(p.patient_id) AS "Patient_ID",
    getPatientFullName(p.patient_id) AS 'Full Name',
    getPatientBirthdate(p.patient_id) AS 'Birth Date',
    getPatientGenderFullname(p.patient_id) AS 'Gender',
    getPatientRegistrationDate(p.patient_id) AS 'Registration Date',
    CONCAT(
        IFNULL(getPatientPreciseLocation(p.patient_id), ''), ', ',
        IFNULL(getPatientVillage(p.patient_id), ''), ', ',
        IFNULL(getPatientDivision(p.patient_id), '')
    ) AS 'Address',
    getPatientVillage(p.patient_id) AS 'Location'
FROM 
    patient p
WHERE 
    p.voided = 0
ORDER BY 
    p.patient_id;