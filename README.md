<h1 align = "center"> 🌐 Quantum Health Pulse: Data Preprocessing for Heart Disease Prediction Using R </h1>

<p align="center">
  <img src="https://img.shields.io/badge/R-4.3%2B-blue.svg" alt="R Version">
  <img src="https://img.shields.io/badge/License-MIT-brightgreen.svg" alt="License">
  <img src="https://img.shields.io/github/forks/basharulalammazu/HeartHealth-DataPreprocessing-R?style=flat-square" alt="GitHub forks">
</p>




Welcome to the **Quantum Health Pulse**, a data preprocessing pipeline designed for **heart disease prediction** using **R**. This project leverages traditional medical features and introduces an innovative, quantum-inspired variable, creating an opportunity to explore hybrid learning models.

---

## 📊 **Dataset Overview**

**File Name**: `health_data_cleaning.csv`  
**Samples**: 151  
**Target Variable**: `HeartDisease` (Binary: 1 = Disease, 0 = No Disease)

### 📌 Features:

| Feature | Description |
|--------|-------------|
| **Age** | Patient's age (numerical; originally had outliers like -65, 260—now cleaned to a realistic 30–79 range). |
| **Gender** | Binary (0 = Female, 1 = Male); ~51% male, ~49% female after imputation. |
| **BloodPressure** | Numeric blood pressure readings; cleaned by correcting non-numeric entries (e.g., "138X"). |
| **Cholesterol** | Cholesterol levels (numeric); missing values handled using statistical imputation. |
| **Heart_Rate** | Categorical (High / Low); converted to binary (1 = High, 0 = Low) for modeling. |
| **QuantumPatternFeature** | A continuous, quantum-derived metric simulating non-linear interactions; range: 6.419 – 10.784. |
| **HeartDisease** | Target variable (binary classification): 0 = No disease, 1 = Disease (~54% positive cases). |

### 🔍 Data Quality Summary:

- **Missing Values**: Initially affected Age, Gender, Cholesterol, Heart_Rate; resolved via elimination or imputation.
- **Outliers**: Detected and capped in Age and BloodPressure.
- **Duplicates**: Removed 2 duplicate records for consistency.
- **Invalid Entries**: Rectified invalid Age and BloodPressure values.

### ⚙️ Key Improvements via Preprocessing:

- Applied **min-max normalization** on continuous features for uniformity.
- Handled **class imbalance** using **under-sampling**, improving model fairness.
- Performed **feature conversion** and **binning** for clarity and enhanced interpretability.

### 🧠 QuantumPatternFeature Insight:

This feature represents a **quantum-inspired** numerical input, possibly mimicking feature entanglement or encoding. It remains a **novel signal** in the dataset, ideal for testing hybrid classical-quantum ML models. Further analysis is required to interpret its medical significance.

### 🎯 Use Case Potential:

- Ideal for **binary classification models** (Logistic Regression, XGBoost, Neural Networks).
- Supports **quantum-enhanced learning** research.
- Rich for **statistical analysis** (age dispersion by gender, heart rate patterns, etc.).


---

## 🧪 **Preprocessing Workflow**

In this repository, we present a structured and thoughtful approach to data preprocessing, which includes:

### 1. **Missing Value Treatment**
   - Identified missing values through visualization.
   - Handled using various strategies, including:
     - Row elimination.
     - Imputation with mean, median, mode, or the most frequent value.

### 2. **Outlier Detection & Handling**
   - Utilized statistical techniques to identify outliers.
   - Applied transformations or capping to limit the impact of extreme values.

### 3. **Feature Conversion**
   - Converted categorical variables into numeric values when required.
   - Binned continuous variables, such as age, into meaningful categories (e.g., age groups).

### 4. **Normalization**
   - Min-max normalization was applied to continuous variables to ensure features are on a consistent scale.

### 5. **Duplicate & Invalid Data Handling**
   - Duplicates were detected and removed to maintain data integrity.
   - Inconsistent or invalid entries were identified and rectified.

### 6. **Data Filtering**
   - Logical filtering techniques were applied to retain only relevant records.

### 7. **Class Imbalance Handling**
   - Addressed imbalances in the target variable using **under-sampling**, ensuring a more balanced dataset for training.

### 8. **Dataset Splitting**
   - Split the dataset into training and testing subsets to evaluate model performance accurately.

---

## 📊 **Exploratory Statistical Analysis**

### Central Tendency of Age by Gender
- Compared measures such as **mean**, **median**, and **mode** across gender categories.

### Central Tendency of Age by Heart Rate
- Analyzed the age distribution across **Heart_Rate** categories to uncover trends.

### Dispersion of Age by Gender
- Assessed the **range**, **variance**, **standard deviation**, and **IQR** to understand the variability in age based on gender.

---

## 🛠 **Technologies Used**

- **R Programming Language**: For data preprocessing, statistical analysis, and model building.
- **dplyr**: A powerful package for data manipulation and transformation.

---

## 👥 **Contributors**

<table align="center">
  <tr>
    <td align="center">
      <a href="https://github.com/basharulalammazu">
        <img src="https://avatars.githubusercontent.com/basharulalammazu" width="100px;" alt=""/>
        <br/><b>Basharul - Alam - Mazu</b>
      </a>
    </td>
     <td align="center">
      <a href="https://github.com/mdtanjimrahman">
        <img src="https://avatars.githubusercontent.com/mdtanjimrahman" width="100px;" alt=""/>
        <br/><b>Md Tanjim Rahman</b>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/shanzidazaman">
        <img src="https://avatars.githubusercontent.com/shanzidazaman" width="100px;" alt=""/>
        <br/><b>Shanzida Zaman Shimu</b>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/preronasarkarkotha">
        <img src="https://avatars.githubusercontent.com/preronasarkarkotha" width="100px;" alt=""/>
        <br/><b>Prerona Sarkar</b>
      </a>
    </td>
  </tr>
</table>



---


## 📜 **License**

This project is distributed under the **MIT License**. Feel free to modify, distribute, and use the code with proper attribution.

---

> **Quantum Health Pulse** seeks to integrate classical medical data with modern computational techniques, offering a unique perspective on heart disease prediction. By incorporating quantum-inspired features, the project sets the stage for innovative, hybrid models in healthcare prediction and analytics.
