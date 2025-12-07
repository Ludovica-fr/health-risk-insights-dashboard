# Heart Disease Risk & Clinical Insights Dashboard  
*A full data analytics project using R + Tableau*

This project explores the **clinical factors associated with heart disease** using the Cleveland Heart Disease dataset.  
It demonstrates skills across:

- **R** → data cleaning, transformation, exploratory analysis  
- **Tableau** → dashboard creation and visual storytelling  
- **Medical reasoning** → interpreting clinical indicators  
- **GitHub workflow** → structuring a full analytics project  

This project is part of my Data Analytics portfolio as I transition from the energy sector into data analytics.

---

## 📦 Project Structure

health-risk-insights-dashboard/
│
├── data/
│ ├── raw/ # original dataset
│ └── clean/ # cleaned dataset used for analysis
│
├── src/
│ ├── data_cleaning.R # cleaning + preprocessing
│ └── exploratory_analysis.R # core EDA + plots
│
├── reports/
│ ├── clinical_summary.md # written analysis & insights
│ ├── visuals/ # exported R plots
│ 
├── notebooks/
│ └── EDA_notebook.Rmd # reproducible R Markdown notebook
│
└── README.md

---

## 🧪 Dataset Description

The dataset contains **303 patients** with various clinical and demographic variables traditionally used in cardiology.

| Variable | Description |
|---------|-------------|
| age | Age in years |
| sex | 0 = Female, 1 = Male |
| cp | Chest pain type (4 categories) |
| trestbps | Resting blood pressure |
| chol | Serum cholesterol |
| fbs | Fasting blood sugar (>120 mg/dl) |
| restecg | Resting ECG results |
| thalach | Maximum heart rate achieved |
| exang | Exercise-induced angina |
| oldpeak | ST depression induced by exercise |
| slope | Slope of ST segment |
| ca | Number of major vessels (0–3) |
| thal | Thallium stress-test result |
| target | 0 = No Disease, 1 = Disease |

---

## 🧹 Data Cleaning (R)

Cleaning steps performed in `data_cleaning.R`:

- Loaded raw dataset and applied column names  
- Replaced invalid characters (“?”) with NA  
- Converted categorical variables to **labeled factors**  
- Collapsed disease into **binary outcome** (0 = No Disease, 1 = Disease)  
- Saved clean dataset to `data/clean/heart_disease_clean.csv`

---

## 📊 Exploratory Analysis (R)

### Key visual analyses include:

- **Age and sex distribution**
- **Disease prevalence**
- **Chest pain type vs disease**
- **Coronary vessels (ca) vs disease**
- **Maximum heart rate vs disease**
- **Sex differences by disease status**

Plots were exported to:  
👉 `reports/visuals/`

All EDA code is available in:

- `src/exploratory_analysis.R`  
- `notebooks/EDA_notebook.Rmd`

---

## ⭐ Key Clinical Insights

### **Chest Pain Type (cp)**
- Asymptomatic patients have the **highest heart disease prevalence**.  
- Angina types are not always reliable indicators — symptoms can be misleading.

### **Coronary Vessels (ca)**
- Number of blocked vessels is the **strongest predictor** of disease.  
- Risk rises sharply with **1, 2, or 3 affected vessels**.

### **Sex & Age**
- Men develop heart disease earlier (40–60 range).  
- Women develop it later (after age 55–60), consistent with clinical literature.  

### **Exercise Capacity (thalach)**
- Heart disease patients tend to reach **lower maximum heart rates**.  
- Indicates reduced cardiovascular performance.

Full narrative is available in:  
👉 `reports/clinical_summary.md`

---

## 📊 Tableau Dashboard

The interactive dashboard includes:

- Sex & age distribution  
- Disease KPI  
- Chest pain vs disease  
- Coronary vessels vs disease  
- Clinical summary interpretations  

👉 **Dashboard link:** https://public.tableau.com/app/profile/ludovica.douniama/viz/HeathCare_17650341618970/HeartDiseaseClinicalOverviewDashboard#1  

Screenshots are stored in:  
`reports/dashboard/screenshots/`

---

## 🛠 Tools and Technologies

| Tool | Use |
|------|-----|
| **R (tidyverse)** | Data cleaning + EDA |
| **ggplot2** | Visual analytics |
| **R Markdown** | Notebook reporting |
| **Tableau Public** | Dashboarding |
| **Git & GitHub** | Project structure + version control |

---

## 🚀 How to Reproduce

1. Clone the repo:
   ```bash
   git clone https://github.com/Ludovica-fr/health-risk-insights-dashboard.git
Open RStudio and run:
source("src/data_cleaning.R")
source("src/exploratory_analysis.R")
Open the Tableau dashboard using the public link.

🙋‍♀️ About Me
I am transitioning from the energy sector into data analytics.
I am developing strong skills in:
R, Python, SQL
Tableau & Power BI
Statistical analysis
Data storytelling

Feel free to connect with me on LinkedIn!
