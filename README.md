# 📊 SQL Statistical Analysis Project

## Overview

This project demonstrates how **SQL and Python can be used together for statistical analysis of transactional data**.
The workflow includes data storage in PostgreSQL, statistical querying using SQL, and visualization using Python.

The goal of the project is to showcase common **data analysis techniques used by data analysts and data scientists**.

---

## Project Structure

```
sql-statistical-analysis-project
│
├── dataset
│   └── transactions.csv
│
├── sql
│   ├── 01_descriptive_stats.sql
│   ├── 02_percentiles.sql
│   ├── 03_outlier_detection.sql
│   ├── 04_correlation.sql
│   ├── 05_frequency_distribution.sql
│   └── 06_zscore_analysis.sql
│
├── results
│   ├── descriptive_stats.csv
│   ├── percentiles.csv
│   ├── frequency_distribution.csv
│   ├── correlation.csv
│   ├── outliers.csv
│   ├── zscore_analysis.csv
│   └── charts
│       ├── amount_distribution.png
│       ├── age_vs_amount.png
│       └── outliers.png
│
├── analysis
│   └── analysis.py
│
└── README.md
```

---

## Dataset

The dataset contains synthetic customer transaction data with the following columns:

| Column            | Description                        |
| ----------------- | ---------------------------------- |
| transaction_id    | Unique ID for each transaction     |
| customer_age      | Age of the customer                |
| amount            | Transaction amount                 |
| days_since_signup | Days since the customer registered |

---

## Statistical Analysis Performed

### 1️⃣ Descriptive Statistics

Measures the central tendency and spread of transaction amounts.

Metrics calculated:

* Mean
* Median
* Standard Deviation
* Variance
* Minimum & Maximum

---

### 2️⃣ Percentile Analysis

Used to understand the distribution of transaction amounts.

Calculated percentiles:

* 25th percentile (Q1)
* 50th percentile (Median)
* 75th percentile (Q3)
* 90th percentile

---

### 3️⃣ Outlier Detection

Outliers are detected using the **Interquartile Range (IQR)** method.

Formula:

```
Lower Bound = Q1 − 1.5 × IQR
Upper Bound = Q3 + 1.5 × IQR
```

---

### 4️⃣ Correlation Analysis

Examines relationships between variables using Pearson correlation.

Relationships analyzed:

* Transaction amount vs customer age
* Transaction amount vs customer tenure

---

### 5️⃣ Frequency Distribution

Transaction amounts are grouped into ranges to understand spending patterns.

Example ranges:

```
0–100
100–200
200–300
300–400
400+
```

---

### 6️⃣ Z-Score Analysis

Used to measure how far each transaction amount deviates from the mean.

Formula:

```
Z = (X − μ) / σ
```

This helps identify unusual transactions.

---

## Data Visualization

Python was used to create visual insights from the dataset.

Libraries used:

* pandas
* matplotlib
* seaborn

Generated charts include:

### Transaction Amount Distribution

Histogram showing how transaction amounts are distributed.

### Age vs Transaction Amount

Scatter plot showing how spending varies with age.

### Outlier Detection

Boxplot used to visualize extreme values.

---

## Technologies Used

* SQL (PostgreSQL)
* Python
* Pandas
* Matplotlib
* Seaborn
* Git
* GitHub

---

## How to Run the Project

### 1. Clone the repository

```
git clone https://github.com/Daredevil-suburbs/sql-statistical-analysis-project.git
```

### 2. Install Python dependencies

```
pip install pandas matplotlib seaborn
```

### 3. Run the analysis

```
python analysis/analysis.py
```

Charts will be generated in:

```
results/charts
```

---

## Key Insights

This project demonstrates how SQL can be used to:

* Perform statistical analysis directly in databases
* Identify outliers and unusual data
* Understand data distributions
* Analyze correlations between variables

Combining SQL with Python enables both **data querying and visualization in a complete data analysis workflow**.

---

## Author

Daredevil Suburbs