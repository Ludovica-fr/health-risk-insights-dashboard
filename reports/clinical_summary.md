# Clinical Summary – Heart Disease Insights

## 1. Sample and Demographics

- The dataset contains **303 patients** with ages ranging from **29 to 77 years**.
- The age distribution is well spread across **younger**, **middle-aged**, and **older adults**, which supports fair analysis across age groups.
- Sex distribution is **imbalanced but clinically realistic**:
  - **32% Female**
  - **68% Male**
- This reflects known epidemiological patterns where heart disease is more common in men at middle age, while women tend to develop it later in life.

Overall, the dataset is suitable for studying clinical patterns of heart disease, with good age coverage and a male-skewed but clinically typical sex ratio.

---

## 2. Disease Prevalence

- Heart disease is encoded as:
  - **0 = No Disease**
  - **1 = Disease**
- In this binary definition, approximately **45–50%** of patients in the dataset have heart disease.
- This balanced outcome distribution is useful for modelling and exploratory analysis.

---

## 3. Sex and Age Differences

- **Men** show higher and earlier prevalence of heart disease:
  - Many male patients with disease are in the **40–60** age range.
- **Women** tend to develop heart disease later:
  - Disease prevalence in women increases mainly after **age 55–60**.
- This pattern matches clinical knowledge: female patients are often protected before menopause and show a delayed onset of coronary disease.

---

## 4. Symptom Indicators

### 4.1 Chest Pain Type (cp)

- Chest pain is categorised into four types:
  - **Typical Angina**
  - **Atypical Angina**
  - **Non-Anginal Pain**
  - **Asymptomatic**
- In this dataset:
  - **Asymptomatic patients** have the **highest proportion of heart disease**.
  - **Typical and atypical angina** are not always associated with the highest disease rates.
- This suggests that **absence of pain does not mean absence of disease**. Asymptomatic patients can still have significant underlying coronary obstruction.

### 4.2 Exercise-Induced Angina (exang)

- **Yes** = chest pain during exercise  
- **No** = no chest pain during exercise
- Patients with exercise-induced angina have a **much higher probability** of heart disease in both men and women.
- This variable acts as a **symptom and functional marker**: pain triggered by exercise typically reflects existing coronary artery disease rather than future risk.

---

## 5. Functional Indicator

### Maximum Heart Rate (thalach)

- Patients with heart disease achieve a **lower maximum heart rate** during stress testing.
- In both sexes:
  - The **No Disease** group reaches **higher median heart rates**.
  - The **Disease** group shows **reduced exercise capacity**.
- This supports the idea that **thalach is a strong functional indicator** of cardiovascular limitation.

---

## 6. Anatomical and Diagnostic Indicators

### 6.1 Number of Vessels (ca)

- **ca** counts the number of major coronary vessels (0–3) with significant narrowing.
- Disease probability increases sharply with the number of affected vessels:
  - **ca = 0** → mainly healthy; ~low disease probability
  - **ca = 1** → strong increase in disease prevalence
  - **ca = 2 or 3** → very high likelihood of heart disease
- This relationship is consistent in both sexes and makes **ca one of the strongest predictors** in the dataset.

### 6.2 Thallium Test (thal)

- **thal** represents the thallium stress-test result:
  - **Normal**
  - **Fixed Defect**
  - **Reversible Defect**
- Patients with **reversible defects** show the **highest disease prevalence**, while **normal** results are mainly associated with no disease.
- This aligns with clinical practice, where reversible perfusion defects indicate stress-induced ischemia.

---

## 7. Overall Clinical Interpretation

The combination of:

- **Demographic factors** (age, sex),
- **Symptom indicators** (chest pain type, exercise-induced angina),
- **Functional capacity** (maximum heart rate),
- **Anatomical and diagnostic markers** (number of affected vessels, thallium test),

provides a coherent and clinically meaningful picture of heart disease risk.

This project demonstrates how classical clinical variables can be integrated, cleaned, and analysed to produce interpretable insights and a dashboard suitable for supporting exploratory risk assessment.
