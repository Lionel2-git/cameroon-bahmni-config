SELECT
    CAST(@a:=@a+1 AS CHAR) as "serialNumber",
    getDateFirstANCVisit(p.patient_id) as "dateOfService",
    getPatientBirthdate(p.patient_id) as "dateOfBirth",
    " " as "siteCode",
    getMostRecentProgramEnrollmentDate(p.patient_id, "PMTCT_PROGRAM_KEY") as "enrollmentDateIntoPMTCT",
    getPatientANCNumber(p.patient_id) as "pregnancyId",
    getPatientPhoneNumber(p.patient_id) as "telephoneNumber",
    getPatientEmergencyContactName(p.patient_id) as "contactPerson",
    CONCAT(getPatientVillage(p.patient_id),",",getPatientPreciseLocation(p.patient_id)) as "address",
    (getObsCodedValueInSectionByNames(p.patient_id, "Obstetric History", "Obstetrical/Delivery History") = "ANC, Gravida") as "GAWeeks",
    (getObsCodedValueInSectionByNames(p.patient_id, "Obstetric History", "Obstetrical/Delivery History") = "ANC, Parity") as "Gpabc",
    getObsDatetimeValueInSection(p.patient_id,"47cffd8e-d84f-471f-8468-1e8f951c56c1", "f9ca8b2d-d89f-493e-a531-9ee815597569") as "EDD",
    getObsCodedValueInSectionByNames(p.patient_id, "HTC,Result", "At ANC Enrolment") as "HIVDiagnosisStatus",
    getObsDatetimeValueInSection(p.patient_id,"d986e715-14fd-4ae1-9ef2-7a60e3a6a54e", "89b1cd66-c33a-4ef4-b208-5d86502f14ec") as "ARTStartDate",
    getObsDatetimeValueInSection(p.patient_id,"c6c08cdc-18dc-4f42-809c-959621bc9a6c", "d6cc3709-ffa0-42eb-b388-d7def4df30cf") as "dateOfTest",
    getObsTextValue(p.patient_id,"d09552b6-302c-427a-b757-dfeeb0ec1d50") as "existingARTCode",
    getViralLoadTestResult(p.patient_id) as "viralLoadResult",
    " " as "ViralLoadResultType",
    " " as "DateOfSampleCollection",
    " " as "GestationAgeAtSampleCollection",
    " " as "DateOfResultReception",
    " " as "DateOfResultReception1",
    " " as "DateOfSampleCollection1",
    " " as "GestationAgeAtSampleCollection1",
    " " as "ViralLoadResult1",
    " " as "ViralLoadResultType1",
    " " as "DateOfSampleCollection2",
    " " as "GestationAgeAtSampleCollection2",
    " " as "ViralLoadResult2",
    " " as "ViralLoadResultType2",
    " " as "DateOfCD4SampleCollection",
    " " as "CD4Result",
    getObsDatetimeValueInSection(p.patient_id,"0da273f6-92ee-4ddb-8a37-5e18cdc35441", "85177a85-f412-42eb-a81e-22f2d8eab1ef") as "dateOfDelivery",
    getObsCodedValueInSectionByNames(p.patient_id, "Place of delivery", "Delivery") as "placeOfDelivery",
    getObsCodedValueInSectionByNames(p.patient_id, "Status", "ART status in delivery room") as "visitStatus",
    getObsCodedValueInSectionByNames(p.patient_id, "Protocol", "ART status in delivery room") as "regimenCode",
    getNextAppointmentDate(p.patient_id) as "dateOfAppointment",
    getObsCodedValue(p.patient_id, "3dce13a8-c7e5-45ec-a6f0-8050fd4a2ca2") as "TBStatus",
    getObsCodedValueInSectionByNames(p.patient_id, "Received Cotrimoxazole", "LLIN/Medication received") as "CTX",
    getObsNumericValue(p.patient_id, "5089AAAAAAAAAAAAAAAAAAAAAAAAAAAA") as "Weight",
    " " as "FPMethod",
    getObsCodedValueInSectionByNames(p.patient_id, "Outcome", "Complications /Outcome") as "motherOutcome",
    " " as "dateOfOutcome",
    " " as "siteCodeOfFacilityTransferredTo",
    " " as "Comment"
FROM patient p,(SELECT @a:= 0) AS a
WHERE
  getDateFirstANCVisit(p.patient_id) BETWEEN "#startDate#" AND "#endDate#";
