SELECT
    getPatientIdentifier(p.patient_id) AS 'Identifiant Patient',
    getPatientFullName(p.patient_id) AS 'Nom Complet',
    getPatientGenderFullname(p.patient_id) AS 'Genre',
    getPatientAge(p.patient_id) AS 'Âge',
    getPatientRegistrationDate(p.patient_id) AS 'Date Enregistrement'
FROM 
    patient p
WHERE 
    patientHasRegisteredWithinReportingPeriod(p.patient_id, '2000-01-01', '2100-01-01') = 1;