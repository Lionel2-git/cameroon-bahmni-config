SELECT 
    getFacilityName() AS 'Facility Name',
    getANCNumber(p.patient_id) AS 'ANC Number',
    getANCDate(p.patient_id) AS 'ANC Date',
    getPhoneNumber(p.patient_id) AS 'Phone Number'
FROM 
    patient p
    JOIN encounter e ON p.patient_id = e.patient_id
    JOIN encounter_type et ON e.encounter_type = et.encounter_type_id
WHERE 
    et.name = 'LOCATION_ANC'
    AND e.voided = 0
ORDER BY 
    e.encounter_datetime DESC;
