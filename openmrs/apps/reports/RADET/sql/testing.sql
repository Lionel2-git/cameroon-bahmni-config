SELECT "N/A" AS "HTS Client ID (EID or HEI Number)",
	getPatientBirthdate(p.patient_id) as "Date of birth (Date de naissance)",
	"" as "Current Age (Âge actuel)",
	"" as "Age (in months  for less than 5yrs) / Âge (en mois pour moins de 5 ans) ",
	"" as "Age Groups (Les groupes d'âge )",
	getPatientGender(p.patient_id) as "Sex",
	getPregnancyStatus(p.patient_id) as "Pregnancy Status/état de grossesse ",
	getMostRecentCodedObservation(p.patient_id,"HTC, Risk Group","en") as "KP Status/ Statut KP ",
	getHIVTestDate(p.patient_id, "#startDate#", "#endDate#") as "Actual date of visit for HTS (Date réelle de visite pour HTS) OR EID Sample Collected date(Échantillon EID Date de collecte)  (dd-MMM-yyyy)",
	getMostRecentCodedObservation(p.patient_id,"Testing Entry Point and Modality","en") as "HTS Entry/ entrée (Testing Modality/ modalités de test)",
	getObsCodedValueInSectionByNames(p.patient_id, "HTC, Result","Prior to ANC Enrolment") as "HIV Status before ANC1/ Statut VIH avant l'CPN1",
	getHIVResult(p.patient_id, "#startDate#", "#endDate#") as "HTS Results/ Résultats HTS",
	getTestedLocation(p.patient_id) as "Location of testing/ emplacement des tests",
	getPatientDateOfEnrolmentInProgram(p.patient_id, "HIV_PROGRAM_KEY") as "Date Enrolled to HIV care (dd-MMM-yyyy)",
	getPatientARTNumber(p.patient_id) as "Client ART Unique ID/Patient Unique ID/ART TARV",
	patientHasEnrolledIntoHivProgram(p.patient_id) as "Linked to ART (Yes or No)",
	getPatientARVStartDate(p.patient_id) as "ART Start Date/ Date de début de l'ART  (dd-MMM-yyyy)",
	getFacilityName() as "Name of Facility where Treatment is provided / Nom de l'établissement où le traitement est dispensé",
	getObsCodedValue(p.patient_id, "3447254f-501f-4b07-815c-cd0f6da98158") as "Reasons for Non-Linkage / Raisons du non-couplage",
	getDaysBetweenHIVPosAndEnrollment(p.patient_id) as "Time to Enrolment (days)",
	getDaysBetweenHIVPosAndART(p.patient_id) as "Time to ART Initiation (days)",
	getPatientIndexTestingDateOffered(p.patient_id) as "Date offered ICT / Date offerte ICT",
	getPatientIndexTestingDateAccepted(p.patient_id) as "Date accepted ICT / Date d'acceptation",
	IF(patientIsIndex(p.patient_id),getNumberOfContactsRelatedToIndex(p.patient_id),0) as "No of contacts elicited/ Nombre de contacts obtenus",
	IF(patientIsIndex(p.patient_id),getNumberOfEnrolledContactsRelatedToIndex(p.patient_id),0) as "No of contacts notified / Nombre de contacts notifiés",
	IF(patientIsIndex(p.patient_id),getNumberOfHIVTestedContactsRelatedToIndex(p.patient_id),0) as "No of contacts tested for HIV/ Nombre de contacts testés pour le VIH",
	IF(patientIsIndex(p.patient_id),getNumberOfHIVPosContactsRelatedToIndex(p.patient_id),0) as "No of contacts tested HIV positive/ Nombre de contacts testés séropositifs",
	getPatientMostRecentContactTracer(p.patient_id) as "APS"
	FROM patient p WHERE getHIVResult(p.patient_id, "2000-01-01", "2050-01-01") IS NOT NULL;