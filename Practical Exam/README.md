# 📊 Training Performance Analysis — Excel & SQL & Python

> **A practical Data Analytics project demonstrating data cleaning, data enrichment, assessment analysis, Excel reporting, and relational database design using Excel and SQL.**

---

## 👩‍💻 Project Information

**Student Name:** Sneha Gupta  
**Project:** Training Performance Analysis    
**Course:** Data Analysis  
**Tools Used:** Microsoft Excel, MySQL, Python, Jupyter Notebook  

---

## 🎯 Business Objective

The objective of this project is to analyze training assessment performance and answer the following business questions:

1. Which course needs the most academic support?
2. How does performance differ across batches?

The analysis uses assessment scores, attendance percentages, courses, departments, months, and batches.

---

# 📁 Dataset

Two CSV files were used:

- `assessments.csv` — Assessment/fact data
- `courses.csv` — Course lookup data

### Dataset Structure

| Column | Type | Description |
|---|---|---|
| assessment_id | Integer | Unique assessment identifier |
| month | Text | Assessment month: Jan, Feb, Mar |
| course_id | Text | Course identifier |
| batch | Text | Training batch |
| score | Numeric | Assessment score |
| attendance_pct | Numeric | Attendance percentage |
| course | Text | Course name |
| department | Text | Business or Technology |

### Data Rules

- The original assessment dataset contained **13 rows**.
- One exact duplicate record was present.
- After duplicate removal, **12 unique records** remained.
- `course_id` was used as the lookup/join key.
- `pass_flag = 1` when `score >= 50`; otherwise `pass_flag = 0`.
- A score of exactly 50 is considered a pass.
- Pass rate = Passing Assessments ÷ Total Assessments.

---

# 📗 Task 1 — Excel Data Analysis

## 📌 Objective

The Excel analysis was performed to clean the assessment data, retrieve department information, identify passing assessments, and summarize performance using formulas, PivotTables, and charts.

## 📄 Excel Workbook Structure

The workbook contains four sheets:

### 1. Raw
Contains the original assessment dataset with all **13 rows**, including the intentional duplicate.

### 2. Lookup
Contains the course lookup table with:

- Course ID
- Course
- Department

### 3. Clean
Contains the cleaned dataset after removing the exact duplicate.

The Clean sheet contains **12 unique records**.

The department was retrieved using the `XLOOKUP` function.

```excel
=XLOOKUP(C4,Lookup!$A$2:$A$5,Lookup!$C$2:$C$5)
```

The pass flag was created using:
```excel
=IF(E4>=50,1,0)
```

---

### 4. Summary

The Summary sheet contains batch-wise passing assessment counts using `COUNTIFS`.

| Batch   | Passing Assessments |
|---------|---------------------|
| Morning | 3                   |
| Evening | 3                   |
| Weekend | 2                   |

---

## 📊 Excel PivotTable Analysis

A PivotTable was created to calculate the **average score by department and month**.

The months were maintained in the required order:

**Jan → Feb → Mar**

The Excel chart created from this PivotTable is titled:

**Average Score by Department and Month**

<img width="752" height="449" alt="image" src="https://github.com/user-attachments/assets/15a9e6e9-e01f-4ec9-bfc6-adb1785986a3" />

---

# 🗄️ Task 2 — SQL Data Analysis

## 📌 Objective

SQL was used to create the training performance database, establish relationships between courses and assessments, and perform analytical queries.

## 🛠️ SQL Environment

**Database:** MySQL

**SQL Files:**

```text
sql/
├── setup.sql
└── queries.sql
```

---

## 🏗️ Database Setup

The `setup.sql` file:

- Creates the `training_performance` database.
- Creates the `courses` table.
- Creates the `assessments` table.
- Defines primary keys.
- Defines the foreign key relationship using `course_id`.
- Inserts the supplied course and assessment data.

The SQL assessment table contains the **12 unique assessment records** after removing the intentional duplicate.

---

## 🔍 SQL Analysis

The `queries.sql` file contains the required analytical queries.

### S2a — Average Score by Department

The query calculates the average assessment score for each department.

Results:

| Department | Average Score |
|------------|---------------|
| Business   | 67.00         |
| Technology | 56.00         |

---

### S2b — Courses with Average Score Below 60

The query identifies courses whose average assessment score is below 60.

| Course  | Average Score |
|---------|---------------|
| PowerBI | 53.33         |
| Python  | 49.33         |

---

### S2c — Top 2 Batches by Average Score

The query calculates average score by batch and returns the top two batches.

| Batch   | Average Score |
|---------|---------------|
| Evening | 67.00         |
| Morning | 61.25         |

---

## 🔗 SQL Data Validation

A `LEFT JOIN` was also used to verify the relationship between assessment records and course information.

The join confirmed that the assessment records could be matched with their corresponding course and department information.

---

# 🐍 Task 3 — Python Data Analysis

## 📌 Objective

Python was used for data loading, validation, cleaning, merging, derived-field creation, summary analysis, visualization, and output generation.

## 🛠️ Python Tools Used

- Python
- Pandas
- Matplotlib
- Jupyter Notebook

## 📄 Python File

```text
python/
└── analysis.ipynb
```

---

## 🔄 Python Data Analysis Workflow

### 1. Load Data

The following datasets were loaded:

```text
assessments.csv
courses.csv
```

### 2. Validate Numeric Columns

The `score` and `attendance_pct` columns were validated and converted to numeric data types.

### 3. Remove Duplicate

The exact duplicate assessment record was removed.

```text
Rows before duplicate removal: 13
Rows after duplicate removal: 12
```

### 4. Merge Data

A LEFT JOIN equivalent was performed using Pandas:

```python
merged_data = assesments.merge(
    courses,
    on="course_id",
    how="left",
    validate="many_to_one"
)
```
The merged dataset was validated to ensure:

- 12 rows remained.
- No unmatched course IDs were present.

### 5. Create Pass Flag

The following rule was applied:

```text
Score >= 50 → Pass (1)
Score < 50  → Fail (0)
```

---

# 📊 Python Department Summary

| Department | Assessments | Average Score | Pass Count | Pass Rate |
|------------|-------------|---------------|------------|-----------|
| Business   | 6           | 67.00         | 5          | 83.33%    |
| Technology | 6           | 56.00         | 3          | 50.00%    |

---

# 📉 Lowest Course Pass Rate

The course-wise analysis identified **Python (C4)** as the course with the lowest pass rate.

| Course | Average Score | Pass Rate |
|--------|---------------|-----------|
| Python | 49.33         | 33.33%    |

This indicates that Python has the lowest passing proportion among the analyzed courses and therefore requires focused academic support.

---

# 📈 Python Monthly Average Score

| Month | Average Score |
|-------|---------------|
| Jan   | 55.00         |
| Feb   | 62.75         |
| Mar   | 66.75         |

The monthly average score increased from January to March.

<img width="970" height="506" alt="Screenshot 2026-09-27 131003" src="https://github.com/user-attachments/assets/a709fa12-9906-40a1-8e27-6479027f23d4" />

---

# 📁 Python Output Files

The Python analysis generates the following output files:

```text
outputs/
├── clean_data.csv
├── python_summary.csv
└── python_chart.png
```
### `clean_data.csv`

Contains the cleaned and merged 12-row dataset.

### `python_summary.csv`

Contains the department-level summary generated from Python.

### `python_chart.png`

Contains the monthly average score visualization.

---

# 📊 Key Findings

### Finding 1 — Department Performance

The Business department has an average score of **67.00**, while the Technology department has an average score of **56.00**.

### Finding 2 — Course Performance

Python has the lowest course pass rate at **33.33%**, with an average score of **49.33**.

### Finding 3 — Monthly Performance

The overall monthly average score increased from:

**55.00 in January → 62.75 in February → 66.75 in March.**

---

# 🎯 Recommendation

Based on the analyzed 12 unique assessment records, academic support should be prioritized for the **Python course**, particularly by reviewing difficult topics, providing additional practice, and monitoring future assessment performance.

This recommendation is based on a small dataset of 12 unique assessment records, so further assessment data would be useful before making broader conclusions.

---

# 🔄 Cross-Tool Reconciliation

The same clean dataset and metric definitions were used across Excel, SQL, and Python.

A key aggregate confirmed across the tools is the **Technology department average score**:

| Tool   | Technology Average Score |
|--------|---------------------------|
| Excel  | 56.00                     |
| SQL    | 56.00                     |
| Python | 56.00                     |

The results are consistent across the completed modules.

---

# 📂 Project Structure
```text
data-analysis-set-C-YOUR-STUDENT-ID/
│
├── README.md
│
├── data/
│   └── raw/
│       ├── assessments.csv
│       └── courses.csv
│
├── excel/
│   └── analysis.xlsx
│
├── sql/
│   ├── setup.sql
│   └── queries.sql
│
├── python/
│   └── analysis.ipynb
│
└── outputs/
    ├── clean_data.csv
    ├── python_summary.csv
    ├── python_chart.png
    └── excel_chart.png
```

---

# ▶️ How to Run the Project

## Excel

Open:

```text
excel/analysis.xlsx
```

## SQL

Run the files in this order:

```text
1. sql/setup.sql
2. sql/queries.sql
```

## Python

Open:

```text
python/analysis.ipynb
```
Run all notebook cells from top to bottom.

The notebook performs data loading, validation, duplicate removal, merging, analysis, visualization, and output generation.

---

# 🏆 Achievements

- Completed a practical **Excel Data Analysis** workflow.
- Created an SQL database and performed analytical queries using **MySQL**.
- Completed a **Python data analysis workflow** using Pandas and Matplotlib.
- Performed data cleaning and duplicate removal.
- Used lookup and join techniques to combine datasets.
- Created analytical summaries and visualizations.
- Generated reusable CSV outputs from the Python analysis.
- Reconciled an aggregate result across Excel, SQL, and Python.

---

# 🙏 Acknowledgement

This project was completed as part of practical Data Analysis training.

I would like to acknowledge the guidance and learning resources provided during the Data Analysis training for helping me understand and apply concepts related to:

- Microsoft Excel
- SQL and MySQL
- Python
- Pandas
- Matplotlib
- Data Cleaning
- Data Analysis
- Data Visualization

---

<div align="center">

# 👩‍💻 Author

## <span style="color:#7B61A8;">Sneha Gupta</span>

### <span style="color:#555555;">BBA Student | Aspiring Data Analyst</span>

📍 **Surat, Gujarat, India**

---

### 🛠️ Skills

<span style="color:#5B4B8A;">Excel</span> ·
<span style="color:#5B4B8A;">SQL</span> ·
<span style="color:#5B4B8A;">Python</span> ·
<span style="color:#5B4B8A;">Data Analysis</span> ·
<span style="color:#5B4B8A;">Data Handling</span> ·
<span style="color:#5B4B8A;">Data Visualization</span>

### 🔗 GitHub

<a href="https://github.com/snehagupta47103-stack">
github.com/snehagupta47103-stack
</a>

</div>

---

## 📜 Authorship Declaration

> All work in this repository is my own except where cited.

<div align="center">

### **Training Performance Analysis — Data Analysis**

*Excel • SQL • Python*

**Prepared by Sneha Gupta**

</div>
