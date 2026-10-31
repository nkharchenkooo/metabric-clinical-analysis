USE METABRIC_ANALYSIS;

GO
CREATE OR ALTER VIEW dbo.vw_METABRIC_ANALYSYS AS

SELECT
patient_id,
CAST(age_at_diagnosis AS DECIMAL (5,2)) as age_at_diagnosis,

CASE
	WHEN age_at_diagnosis < 30 THEN '20-29'
	WHEN age_at_diagnosis < 40 THEN '30-39'
	WHEN age_at_diagnosis < 50 THEN '40-49'
	WHEN age_at_diagnosis < 60 THEN '50-59'
	WHEN age_at_diagnosis < 70 THEN '60-69'
	WHEN age_at_diagnosis < 80 THEN '70-79'
	WHEN age_at_diagnosis < 90 THEN '80-89'
	WHEN age_at_diagnosis>= 90 THEN '90+'
	ELSE 'Unknown'
END AS age_group,

tumor_stage,
CASE
	WHEN tumor_stage = 0 then 'Stage 0'
	WHEN tumor_stage = 1 then 'Stage I'
	WHEN tumor_stage = 2 then 'Stage II'
	WHEN tumor_stage = 3 then 'Stage III'
	WHEN tumor_stage = 4 then 'Stage IV'
	ELSE 'Unknown'
END AS stage_label,

tumor_size,
lymph_nodes_examined_positive,
chemotherapy,

CASE
WHEN chemotherapy = 1 THEN 'Yes'
WHEN chemotherapy = 0 THEN 'No'
ELSE 'Unknown'
END AS chemotherapy_label,

radio_therapy,

CASE
WHEN radio_therapy = 1 THEN 'Yes'
WHEN radio_therapy = 0 THEN 'No'
ELSE 'Unknown'
END AS radiation_label,

type_of_breast_surgery,
death_from_cancer,
CAST (overall_survival_months AS DECIMAL (5,2)) AS overall_survival_months


FROM dbo.METABRIC_Clinical
GO;



