<h1 align="center">🌐 Quantum Health Pulse: Data Preprocessing for Heart Disease Prediction Using R</h1>

<p align="center">
  <img src="https://img.shields.io/badge/R-4.3%2B-blue.svg" alt="R Version">
  <img src="https://img.shields.io/badge/License-MIT-brightgreen.svg" alt="License">
  <img src="https://img.shields.io/github/forks/basharulalammazu/HeartHealth-DataPreprocessing-R?style=flat-square" alt="GitHub forks">
</p>

---

Welcome to **Quantum Health Pulse**, a data preprocessing pipeline tailored for **heart disease prediction** using **R**. This project integrates traditional medical data with an innovative **quantum-inspired variable**, paving the way for hybrid learning models.

---

## 📊 Dataset Overview

**File**: `health_data_cleaning.csv`  
**Records**: 151 samples  
**Target Variable**: `HeartDisease` (Binary: 1 = Disease, 0 = No Disease)

### 📌 Key Features

| Feature                 | Description                                                                                |
| ----------------------- | ------------------------------------------------------------------------------------------ |
| `Age`                   | Patient's age (cleaned: 30–79 range; removed outliers like -65, 260)                       |
| `Gender`                | Binary (0 = Female, 1 = Male); Imputed ~51% male, ~49% female                              |
| `BloodPressure`         | Numeric; cleaned non-numeric entries (e.g., "138X")                                        |
| `Cholesterol`           | Numeric; missing values imputed statistically                                              |
| `Heart_Rate`            | Categorical → Binary (1 = High, 0 = Low)                                                   |
| `QuantumPatternFeature` | Continuous, quantum-derived metric simulating complex interactions (Range: 6.419 – 10.784) |
| `HeartDisease`          | Binary classification label (~54% positive cases)                                          |

### 🔍 Data Quality Summary

- ✅ **Missing Values**: Handled via imputation or row removal
- ✅ **Outliers**: Detected & capped (`Age`, `BloodPressure`)
- ✅ **Invalid Entries**: Rectified non-numeric values
- ✅ **Duplicates**: Removed for consistency

---

## ⚙️ Preprocessing Highlights

| Step                           | Method                                                         |
| ------------------------------ | -------------------------------------------------------------- |
| **Missing Values**             | Imputation (mean, mode, or most frequent); removal when needed |
| **Outlier Handling**           | Statistical detection; capped extreme values                   |
| **Feature Conversion**         | Categorical to numeric; binning (`Age groups`)                 |
| **Normalization**              | Applied **min-max normalization** to continuous variables      |
| **Duplicate/Invalid Handling** | Cleaned inconsistencies and removed duplicates                 |
| **Data Filtering**             | Applied logical filters for relevance                          |
| **Class Imbalance Handling**   | **Under-sampling** technique used                              |
| **Dataset Splitting**          | Train/test split for evaluation                                |

---

## 🧠 QuantumPatternFeature Insight

This **quantum-inspired** continuous feature is designed to simulate **entangled or nonlinear** dependencies, offering a novel input for experimentation in classical and quantum machine learning models. While its clinical relevance is still under investigation, its inclusion makes this dataset a candidate for **hybrid model research**.

---

## 📈 Exploratory Statistical Analysis

- **Central Tendency (Age by Gender)**: Mean, median, mode by gender
- **Central Tendency (Age by Heart Rate)**: Analyzed across heart rate classes
- **Dispersion (Age by Gender)**: Range, variance, SD, and IQR measured

---

## 🚀 Getting Started

### 🔧 Requirements

- R (≥ 4.3.0)
- R packages: `dplyr`

Install packages in R:

```r
install.packages(c("dplyr"))
```

### 📥 Installation

Clone the repository:

```bash
git clone https://github.com/basharulalammazu/HeartHealth-DataPreprocessing-R.git
cd HeartHealth-DataPreprocessing-R
```

### ▶️ Run Preprocessing

Open R or RStudio and execute:

```r
source("preprocessing_script.R")
```

Ensure the `health_data_cleaning.csv` file is in the working directory.

---

## 💡 Use Case Potential

- Ready for **binary classification** models (e.g., Logistic Regression, Random Forest, XGBoost)
- Suitable for **quantum-classical hybrid ML research**
- Supports **exploratory data analysis**, medical insights & feature engineering practices

---

## 🛠 Technologies Used

- **R Programming Language**
- **dplyr**: Data manipulation

---

## 👥 Contributors

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

## 📜 License

Distributed under the **MIT License**.
