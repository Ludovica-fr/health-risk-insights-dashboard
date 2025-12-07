# exploratory_analysis.R
# Purpose: Exploratory data analysis of the cleaned heart disease dataset.
# Includes:
# - Sample fairness (age and sex)
# - Key clinical indicators vs disease
# - Plots used for Tableau and insights

library(tidyverse)

# 1. Load cleaned data -----------------------------------------------------

df <- read_csv("data/clean/heart_disease_clean.csv",
               show_col_types = FALSE)

glimpse(df)

# 2. Sample fairness: age & sex -------------------------------------------

# Age summary
age_summary <- summary(df$age)
print(age_summary)

# Sex distribution (counts and proportions)
sex_counts <- table(df$sex)
sex_props  <- prop.table(sex_counts)

print(sex_counts)
print(round(sex_props, 3))

# 3. Disease prevalence ----------------------------------------------------

disease_counts <- table(df$target)
disease_props  <- prop.table(disease_counts)

print(disease_counts)
print(round(disease_props, 3))

# 4. Key plots -------------------------------------------------------------
# Note: these can be used directly in the report or exported for GitHub.

# 4.1 Heart disease distribution
p_disease <- ggplot(df, aes(x = target)) +
  geom_bar() +
  labs(
    title = "Heart Disease Distribution",
    x = "Heart Disease Status",
    y = "Number of Patients"
  ) +
  theme_minimal()

# 4.2 Age distribution
p_age <- ggplot(df, aes(x = age)) +
  geom_histogram(bins = 20) +
  labs(
    title = "Age Distribution of Patients",
    x = "Age (years)",
    y = "Number of Patients"
  ) +
  theme_minimal()

# 4.3 Age by disease status
p_age_target <- ggplot(df, aes(x = target, y = age, fill = target)) +
  geom_boxplot(alpha = 0.7) +
  labs(
    title = "Age by Heart Disease Status",
    x = "Heart Disease Status",
    y = "Age (years)"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# 4.4 Sex vs disease (proportions)
p_sex_target <- ggplot(df, aes(x = sex, fill = target)) +
  geom_bar(position = "fill") +
  labs(
    title = "Proportion of Heart Disease by Sex",
    x = "Sex",
    y = "Proportion"
  ) +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()

# 4.5 Chest pain vs disease
p_cp_target <- ggplot(df, aes(x = cp, fill = target)) +
  geom_bar(position = "fill") +
  labs(
    title = "Heart Disease by Chest Pain Type",
    x = "Chest Pain Type",
    y = "Proportion"
  ) +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()

# 4.6 Number of vessels (ca) vs disease
p_ca_target <- ggplot(df, aes(x = ca, fill = target)) +
  geom_bar(position = "fill") +
  labs(
    title = "Heart Disease by Number of Affected Vessels (ca)",
    x = "Number of Major Vessels",
    y = "Proportion"
  ) +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()

# 4.7 Max heart rate (thalach) by disease
p_thalach_target <- ggplot(df, aes(x = target, y = thalach, fill = target)) +
  geom_boxplot(alpha = 0.7) +
  labs(
    title = "Maximum Heart Rate by Disease Status",
    x = "Heart Disease Status",
    y = "Max Heart Rate (thalach)"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# 5. Saving key plots to /reports/visuals -------------------------

# dir.create("reports/visuals", recursive = TRUE, showWarnings = FALSE)
# ggsave("reports/visuals/disease_distribution.png", p_disease, width = 5, height = 4)
# ggsave("reports/visuals/age_distribution.png", p_age, width = 5, height = 4)
# ggsave("reports/visuals/sex_vs_disease.png", p_sex_target, width = 5, height = 4)
# ggsave("reports/visuals/cp_vs_disease.png", p_cp_target, width = 6, height = 4)
# ggsave("reports/visuals/ca_vs_disease.png", p_ca_target, width = 6, height = 4)
# ggsave("reports/visuals/thalach_vs_disease.png", p_thalach_target, width = 5, height = 4)

message("Exploratory analysis completed.")

