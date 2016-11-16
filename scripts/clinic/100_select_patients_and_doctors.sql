SELECT d.family_name doctor, p.family_name patient, d.specialty
FROM patients p
INNER JOIN doctors d
  ON d.id = p.doctor_id
WHERE d.specialty IN ('Gastroenterology', 'Sports medicine');
