UPDATE patients
SET doctor_id = ids.doctor_id
FROM (SELECT TRUNC(RANDOM() * (SELECT COUNT(*) FROM doctors) + 1) doctor_id,
  GENERATE_SERIES(1, (SELECT COUNT(*) FROM patients)) patient_id) ids
WHERE patients.id = ids.patient_id;
