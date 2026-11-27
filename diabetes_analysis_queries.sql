-- Diabetes Dataset Analysis (SQLite-compatible)
-- Import data/diabetes_cleaned.csv into a table named diabetes.

-- 1. Total records and outcome distribution
SELECT Outcome, COUNT(*) AS patient_records
FROM diabetes
GROUP BY Outcome
ORDER BY Outcome;

-- 2. Outcome percentage
SELECT
    ROUND(100.0 * SUM(CASE WHEN Outcome = 1 THEN 1 ELSE 0 END) / COUNT(*), 2)
      AS outcome_1_percentage
FROM diabetes;

-- 3. Average glucose and BMI by outcome
SELECT Outcome,
       ROUND(AVG(Glucose), 2) AS avg_glucose,
       ROUND(AVG(BMI), 2) AS avg_bmi
FROM diabetes
GROUP BY Outcome
ORDER BY Outcome;

-- 4. Age group analysis
SELECT
    CASE
      WHEN Age < 30 THEN 'Under 30'
      WHEN Age BETWEEN 30 AND 39 THEN '30-39'
      WHEN Age BETWEEN 40 AND 49 THEN '40-49'
      ELSE '50+'
    END AS age_group,
    COUNT(*) AS records,
    SUM(CASE WHEN Outcome = 1 THEN 1 ELSE 0 END) AS outcome_1_records
FROM diabetes
GROUP BY age_group
ORDER BY age_group;

-- 5. Average BMI by age group
SELECT
    CASE
      WHEN Age < 30 THEN 'Under 30'
      WHEN Age BETWEEN 30 AND 39 THEN '30-39'
      WHEN Age BETWEEN 40 AND 49 THEN '40-49'
      ELSE '50+'
    END AS age_group,
    ROUND(AVG(BMI), 2) AS avg_bmi
FROM diabetes
GROUP BY age_group
ORDER BY age_group;
