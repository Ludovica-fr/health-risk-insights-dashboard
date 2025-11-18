Health Risk Insights Dashboard (R + Tableau)
1. Project Overview

Chronic diseases such as diabetes, hypertension, and heart disease are often influenced by lifestyle and demographic factors.
This project identifies the strongest drivers (age, diet, activity level, sleep, alcohol, etc) of chronic disease risk using R, and presents insights in an interactive Tableau dashboard.

This simulates the work of a data analyst in a healthcare or wellbeing team.

2. Business Questions

Which demographics and lifestyle factors are most associated with chronic disease?

Can we create a simple risk score per individual?

Which population groups should be prioritised for health interventions?

How do risk levels differ across age, gender, lifestyle categories, etc.?

3. Data

Source: (To be added once we select the dataset)

Granularity: One row per individual

Key variables may include:

Age, gender

BMI, activity level

Sleep hours, diet score

Smoking, alcohol

Disease presence

Data folders:

/data/raw/       → original data  
/data/processed/ → cleaned dataset  

4. Tools

R → data cleaning, feature engineering, modelling

Tableau → dashboard & visual insights

GitHub → version control and reproducibility

5. Methodology

Data Understanding & Cleaning

Feature Engineering

Exploratory Data Analysis (EDA)

Risk Score Model (logistic regression or similar)

Segmentation & Insights

Tableau Dashboard Creation

Business Summary & Recommendations

6. Repository Structure
data/raw/  
data/processed/  
notebooks/  
src/  
dashboard/  
reports/figures/  
reports/pdf/  
README.md  

7. Key Insights (to be filled later)

(This will be completed once we run the analysis.)

8. Next Steps

Test additional models (Random Forest, XGBoost)

Add predictive scoring

Build preventive scenario simulations
