# data_cleaning.R
# Purpose: Load the raw Cleveland heart disease dataset,
# clean it, and save a processed version for analysis and dashboards.

library(tidyverse)

# 1. Load raw data ---------------------------------------------------------

# Path is relative to the project root
raw_path <- "data/raw/processed.cleveland.csv"

df <- read_csv(
  raw_path,
  col_names = FALSE
)

# 2. Add column names ------------------------------------------------------

colnames(df) <- c(
  "age",      # age in years
  "sex",      # 0 = female, 1 = male
  "cp",       # chest pain type (1–4)
  "trestbps", # resting blood pressure
  "chol",     # serum cholesterol
  "fbs",      # fasting blood sugar > 120 mg/dl (1 = yes)
  "restecg",  # resting ECG result
  "thalach",  # maximum heart rate achieved
  "exang",    # exercise-induced angina (1 = yes)
  "oldpeak",  # ST depression induced by exercise
  "slope",    # slope of the ST segment
  "ca",       # number of major vessels (0–3) colored by fluoroscopy
  "thal",     # thalassemia test result
  "target"    # 0 = no disease, 1–4 = presence of disease
)

# 3. Basic structure check -------------------------------------------------

glimpse(df)
summary(df)

# 4. Handle missing values and bad characters ------------------------------

# In the raw dataset, "?" is used for unknown values in ca and thal.
df$ca[df$ca == "?"]   <- NA
df$thal[df$thal == "?"] <- NA

# Convert ca and thal to numeric
df$ca   <- as.numeric(df$ca)
df$thal <- as.numeric(df$thal)

# 5. Convert target to binary (0 = no disease, 1 = disease) ----------------

df$target <- ifelse(df$target == 0, 0, 1)

# 6. Convert variables to factors with labels ------------------------------

df <- df %>%
  mutate(
    sex = factor(sex,
                 levels = c(0, 1),
                 labels = c("Female", "Male")),
    
    cp = factor(cp,
                levels = c(1, 2, 3, 4),
                labels = c("Typical Angina",
                           "Atypical Angina",
                           "Non-Anginal Pain",
                           "Asymptomatic")),
    
    fbs = factor(fbs,
                 levels = c(0, 1),
                 labels = c("<=120 mg/dl", ">120 mg/dl")),
    
    restecg = factor(restecg,
                     levels = c(0, 1, 2),
                     labels = c("Normal",
                                "ST-T Abnormality",
                                "Left Ventricular Hypertrophy")),
    
    exang = factor(exang,
                   levels = c(0, 1),
                   labels = c("No", "Yes")),
    
    slope = factor(slope,
                   levels = c(1, 2, 3),
                   labels = c("Upsloping", "Flat", "Downsloping")),
    
    ca = factor(ca,
                levels = c(0, 1, 2, 3)),
    
    thal = factor(thal,
                  levels = c(3, 6, 7),
                  labels = c("Normal", "Fixed Defect", "Reversible Defect")),
    
    target = factor(target,
                    levels = c(0, 1),
                    labels = c("No Disease", "Disease"))
  )

# 7. Final checks ----------------------------------------------------------

glimpse(df)
summary(df)

# 8. Save cleaned dataset --------------------------------------------------

clean_path <- "data/clean/heart_disease_clean.csv"

write_csv(df, clean_path)

message("Cleaned data saved to: ", clean_path)

