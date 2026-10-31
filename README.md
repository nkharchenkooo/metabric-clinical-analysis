# METABRIC | Breast Cancer Clinical Analysis

**End-to-End Data Analytics Project | Excel • SQL Server • Power BI**

## Project Overview

This project explores clinical characteristics, tumor stages, recorded outcomes, and treatment patterns using the METABRIC breast cancer dataset.

The analysis covers **1,904 patient records** and demonstrates a complete data analytics workflow, from data preparation and exploratory analysis to SQL-based transformations and interactive visualization.

## Tools & Technologies

- **Excel & Power Query:** Data cleaning, exploratory data analysis, PivotTables, descriptive statistics, and charts.
- **SQL Server & SSMS:** Database import, data validation, SQL views, CTEs, aggregation, and window functions.
- **Power BI:** Interactive dashboard, DAX calculations, KPIs, and slicers.

## Project Workflow

### 1. Data Preparation & Exploratory Analysis

Selected relevant clinical variables from the original dataset, evaluated missing values, and explored patient demographics, tumor characteristics, and recorded outcomes using Excel.

### 2. SQL Data Validation & Transformation

Imported the prepared clinical dataset into Microsoft SQL Server, checked data integrity, and created an analysis-ready SQL view with standardized tumor-stage labels, treatment categories, and age groups.

### 3. Treatment Pattern Analysis

Used SQL to investigate combinations of chemotherapy and radiation therapy across tumor stages, calculating patient counts and percentages within each stage.

### 4. Power BI Dashboard

Developed an interactive report featuring patient demographics, tumor stage distribution, recorded outcomes, treatment combinations, and age-group filtering.

## Key Findings


### 1. Patient Demographics
- The dataset contains **1,904 patient records**, with an average age at diagnosis of **61.09 years**.
- The largest age group was **60–69 years**, representing 552 patients (29.0%).
- Most patients were diagnosed between the ages of 50 and 79.

### 2. Tumor Stage Distribution
- **Stage II was the most frequently recorded tumor stage**, with 800 patients, followed by Stage I with 475 patients.
- Tumor stage information was missing for **501 patients (26.31%)**, representing a significant data completeness limitation.

### 3. Tumor Size and Disease Stage
- Average tumor size increased across Stages I–III:
  - Stage I: **17.40 mm**
  - Stage II: **27.57 mm**
  - Stage III: **48.23 mm**
- Tumor size varied considerably within stages, indicating that size alone does not fully describe disease severity. Tumor size also contributes to clinical staging, so this association is partly expected.

### 4. Tumor Size and Positive Lymph Nodes
- The correlation between tumor size and the number of positive lymph nodes was **r ≈ 0.265**, indicating a weak positive relationship.
- Tumor size explained approximately **7% of the variation** in positive lymph node counts in a simple linear analysis.
- Larger tumors were not consistently associated with proportionally higher numbers of positive lymph nodes.

### 5. Recorded Outcomes by Tumor Stage
- The proportion of patients recorded as **Died of Disease** increased across Stages I–III:
  - Stage I: **22.74%**
  - Stage II: **35.75%**
  - Stage III: **58.26%**
- These values describe recorded outcomes rather than standardized survival rates, because follow-up duration and censoring were not accounted for.

### 6. Treatment Patterns by Tumor Stage
- Chemotherapy use increased from **3.79% at Stage I** to **51.30% at Stage III**.
- Radiation therapy was recorded for **58.74% of Stage I**, **67.75% of Stage II**, and **84.35% of Stage III** patients.
- Treatment use differed substantially by tumor stage, although these patterns cannot establish treatment effectiveness.

### 7. Radiation Therapy and Surgery Type
- Among Stage I patients, radiation therapy was recorded for **87.36% of patients undergoing breast-conserving surgery**, compared with **18.88% of patients undergoing mastectomy**.
- A similar difference was observed at Stage II: **93.75% versus 53.08%**, respectively.
- These findings highlight differences in recorded treatment strategies between surgical groups, without establishing why individual treatments were selected.

### 8. Combined Treatment Analysis Using SQL
- The proportion of patients receiving both chemotherapy and radiation therapy increased across Stages I–III:
  - Stage I: **2.95%**
  - Stage II: **24.63%**
  - Stage III: **45.22%**
- Radiation therapy alone was the most common treatment combination at Stage I (**55.79%**) and Stage II (**43.13%**).
- At Stage III, combined treatment was the largest individual category (**45.22%**), followed by radiation therapy alone (**39.13%**).

### Overall Interpretation

The analysis identified differences in patient demographics, tumor characteristics, recorded outcomes, and treatment patterns across clinical stages. It also highlighted the importance of missing-data assessment, subgroup sample sizes, and cautious interpretation of observational clinical data.

These findings are descriptive associations and should not be interpreted as causal relationships or clinical treatment recommendations.

## Limitations

This is a descriptive, observational analysis. Missing tumor-stage information, small sample sizes in some stage groups, and differences in follow-up duration limit interpretation. Treatment patterns should not be interpreted as evidence of treatment effectiveness or causality.

## Data Source

METABRIC breast cancer dataset


## Project Files

### Excel — Exploratory Data Analysis
- [Excel Analysis Workbook](excel/BREAST-CLINICAL_CLEAN.xlsx)

### SQL — Data Validation & Analysis
- [01 — Data Validation](sql/sql/01_data_validation.sql)
- [02 — Data Transformation](sql/sql/02_data_transformation.sql)
- [03 — Treatment Combinations Analysis](sql/sql/03_treatment_combinations.sql)

### Power BI — Interactive Dashboard
- [Power BI Dashboard (.pbix)](powerbi/METABRIC_CLINICAL_DASHBOARD.pbix)
- *Requires Power BI Desktop to open the interactive report.*


## Power BI Dashboard

<img width="945" height="754" alt="METABRIC_Dashboard" src="https://github.com/user-attachments/assets/5585c52b-051a-4952-bc80-f50bcfedd590" />
