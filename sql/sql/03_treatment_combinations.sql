USE METABRIC_ANALYSIS;

WITH TreatmentGroups AS (

SELECT 
patient_id,
stage_label,


CASE 
WHEN chemotherapy = 1 AND radio_therapy = 1
THEN 'Both Treatments'

WHEN chemotherapy = 1 AND radio_therapy = 0
THEN 'Chemotherapy Only'

WHEN chemotherapy = 0 AND radio_therapy = 1
THEN 'Radiation Only'

WHEN chemotherapy = 0 AND radio_therapy = 0
THEN 'Neither'

ELSE 'Unknown'
END AS threatment_combination

FROM dbo.vw_METABRIC_ANALYSYS )

SELECT 
stage_label,
threatment_combination,
COUNT (*) AS PatientCount,

CAST (
100.0 * COUNT(*) /
SUM (COUNT(*)) OVER (PARTITION BY stage_label)
AS DECIMAL (5,2)
)
AS Percentage 
FROM TreatmentGroups

GROUP BY 
stage_label,
threatment_combination

ORDER BY 
stage_label, 
threatment_combination;