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

- **Average age at diagnosis:** 61.09 years.
- **Most represented age group:** 60–69 years.
- **Missing tumor-stage information:** 26.31%.
- **Most frequent known tumor stage:** Stage II.
- **Both chemotherapy and radiation therapy:** 2.95% at Stage I, 24.63% at Stage II, and 45.22% at Stage III.

## Limitations

This is a descriptive, observational analysis. Missing tumor-stage information, small sample sizes in some stage groups, and differences in follow-up duration limit interpretation. Treatment patterns should not be interpreted as evidence of treatment effectiveness or causality.

## Data Source

METABRIC breast cancer dataset

## Power BI Dashboard

<img width="945" height="754" alt="METABRIC_Dashboard" src="https://github.com/user-attachments/assets/5585c52b-051a-4952-bc80-f50bcfedd590" />
