
USE METABRIC_Analysis;
GO

-- 1. Check total records and patient ID uniqueness

SELECT
    COUNT(*) AS TotalPatients,
    COUNT(DISTINCT patient_id) AS UniquePatients,
    MIN(patient_id) AS MinPatientID,
    MAX(patient_id) AS MaxPatientID
FROM dbo.METABRIC_Clinical;


-- 2. Check missing values in key clinical columns

SELECT
    SUM(CASE WHEN tumor_stage IS NULL THEN 1 ELSE 0 END)
        AS MissingTumorStage,

    SUM(CASE WHEN tumor_size IS NULL THEN 1 ELSE 0 END)
        AS MissingTumorSize,

    SUM(CASE WHEN age_at_diagnosis IS NULL THEN 1 ELSE 0 END)
        AS MissingAge
FROM dbo.METABRIC_Clinical;


-- 3. Check tumor stage distribution

SELECT
    tumor_stage,
    COUNT(*) AS PatientCount
FROM dbo.METABRIC_Clinical
GROUP BY tumor_stage
ORDER BY tumor_stage;
