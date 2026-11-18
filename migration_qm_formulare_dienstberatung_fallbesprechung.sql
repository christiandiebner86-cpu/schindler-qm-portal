-- Erweiterung der gespeicherten digitalen QM-Formulare
-- Die bestehenden Formulartypen bleiben erhalten; zwei neue Typen werden ergänzt.
ALTER TABLE public.qm_form_records
  DROP CONSTRAINT IF EXISTS qm_form_records_form_type_check;

ALTER TABLE public.qm_form_records
  ADD CONSTRAINT qm_form_records_form_type_check
  CHECK (form_type IN ('pflegevisite', 'begleitung', 'dienstberatung', 'fallbesprechung'));
