# Diabetes Data Analysis

## Project overview
An exploratory data analysis (EDA) project using a diabetes dataset with **768 records** and **8 input features plus the Outcome target**. The project focuses on data quality checks, descriptive analysis, visualizations, and SQL-based business-style questions.

> This is an educational data-analysis project, not a medical diagnostic tool. The dataset's outcome labels should not be used to make decisions about an individual's health.

## Dataset columns
- Pregnancies
- Glucose
- BloodPressure
- SkinThickness
- Insulin
- BMI
- DiabetesPedigreeFunction
- Age
- Outcome (0/1 target label)

## Data preparation
- Checked dataset dimensions, data types, duplicate rows, and missing values.
- The source file contains zero values in Glucose, BloodPressure, SkinThickness, Insulin, and BMI. For this analysis, these zero values are treated as missing measurements and replaced with each column's median.
- Saved both the original imported data and the cleaned dataset in `data/`.

## Analysis performed
- Outcome distribution
- Average glucose by outcome
- BMI distribution by outcome
- Correlation analysis
- SQL queries for outcome, age-group, glucose, and BMI summaries

## Tools and technologies
**Python, Pandas, NumPy, Matplotlib, Seaborn (optional for further exploration), Jupyter Notebook, SQL**

## Repository structure
```text
Diabetes_Data_Analysis_Project/
├── data/
│   ├── diabetes_raw.csv
│   └── diabetes_cleaned.csv
├── visualizations/
│   ├── 01_outcome_distribution.png
│   ├── 02_average_glucose_by_outcome.png
│   ├── 03_bmi_by_outcome.png
│   └── 04_correlation_heatmap.png
├── sql/
│   └── diabetes_analysis_queries.sql
├── diabetes_data_analysis.ipynb
├── analysis_summary.csv
└── README.md
```

## Key dataset facts
- Total records: 768
- Outcome 1 records: 268
- Outcome 0 records: 500
- Outcome 1 share: 34.90%

## How to run
1. Install Python 3 and Jupyter Notebook.
2. Install dependencies: `pip install pandas numpy matplotlib seaborn jupyter`
3. Open `diabetes_data_analysis.ipynb` in Jupyter Notebook or Google Colab.
4. Run the notebook cells from top to bottom.

## Note about the uploaded file
The uploaded file was named `diabetes.csv.xls`, but its contents are comma-separated CSV data. It has been saved here with the correct `.csv` extension.
