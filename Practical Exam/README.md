# 📊 Assessment Performance Analysis — Excel & SQL

> **A practical Data Analytics project demonstrating data cleaning, data enrichment, assessment analysis, Excel reporting, and relational database design using Excel and SQL.**

---

## 📌 Project Overview

This project focuses on analyzing assessment performance across different technical and business-related courses.

The project combines **Microsoft Excel** and **SQL** to demonstrate an end-to-end data analytics workflow — starting from raw assessment data and progressing toward cleaned, structured, and analysis-ready information.

### 🎯 Project Objectives

- Clean and organize assessment data
- Identify and handle duplicate records
- Enrich data using course reference information
- Create derived analytical fields
- Summarize assessment performance
- Build a relational SQL database
- Establish relationships using primary and foreign keys
- Prepare data for further business analysis

---

# 📁 Project Files

| File | Description |
|---|---|
| `analysis.xlsx` | Excel-based data cleaning, lookup, analysis and summary workbook |
| `setup(1).sql` | SQL database and table creation script |
| `README.md` | Project documentation |

---

# 📗 Excel Analysis

The Excel workbook is designed to demonstrate a structured data-analysis workflow.

## 📑 Workbook Structure

### 1. Raw Sheet

Contains the assessment dataset used as the starting point for the analysis.

The assessment information includes:

- Assessment ID
- Month
- Course ID
- Batch
- Score
- Attendance Percentage

---

### 2. Lookup Sheet

Contains the course reference information used to enrich the assessment dataset.

The course mapping includes:

| Course ID | Course | Department |
|---|---|---|
| C1 | Excel | Business |
| C2 | Power BI | Business |
| C3 | SQL | Technology |
| C4 | Python | Technology |

---

### 3. Clean Sheet

The cleaned dataset demonstrates practical data-preparation techniques, including:

- Duplicate identification and handling
- Course information lookup
- Department enrichment
- Creation of derived fields
- Preparation of data for analysis

### 🔎 Excel Functions & Techniques

- `XLOOKUP`
- Data Cleaning
- Duplicate Handling
- Derived Fields
- Pivot Tables
- Data Aggregation
- Summary Analysis

---

### 4. Summary Sheet

The summary section is used to organize the cleaned information into meaningful analytical views.

It supports analysis of:

- Assessment scores
- Monthly performance
- Course performance
- Department-level performance
- Batch-level results
- Pass/flag classification

---

# 🗄️ SQL Database Project

The SQL component converts the assessment information into a structured relational database.

## 🏗️ Database

The SQL script creates the database:

# 🗄️ SQL Database Structure

The database contains two main tables:

## `courses`

The `courses` table stores course master information.

| Column | Description |
|---|---|
| `course_id` | Unique course identifier |
| `course` | Course name |
| `department` | Department/category of the course |

## `assesments`

The `assesments` table stores assessment-level information.

| Column | Description |
|---|---|
| `assesment_id` | Unique assessment identifier |
| `month` | Assessment month |
| `course_id` | Course reference ID |
| `batch` | Batch/session |
| `score` | Assessment score |
| `attendance_pct` | Attendance percentage |

---

# 🔗 Database Relationship

The two tables are connected using `course_id`.

```text
┌─────────────────────────┐
│        courses          │
├─────────────────────────┤
│ course_id (PK)          │
│ course                  │
│ department              │
└────────────┬────────────┘
             │
             │ course_id
             │
             ▼
┌─────────────────────────┐
│       assesments        │
├─────────────────────────┤
│ assesment_id (PK)       │
│ month                   │
│ course_id (FK)          │
│ batch                   │
│ score                   │
│ attendance_pct          │
└─────────────────────────┘
```

---

## 🔗 Relationship

**Relationship:**

`courses.course_id → assesments.course_id`

Here, `course_id` acts as the **Primary Key (PK)** in the `courses` table and as a **Foreign Key (FK)** in the `assesments` table.

---

# 🧠 SQL Concepts Demonstrated

The SQL project demonstrates the following concepts:

- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- `INSERT INTO`
- Primary Keys
- Foreign Keys
- `NOT NULL` constraints
- `AUTO_INCREMENT`
- Relational Database Design
- Table Relationships

The `courses` table is created as the reference table, while the `assesments` table stores assessment records connected through the `course_id` foreign key.

---

# 📊 Dataset Overview

The assessment dataset contains information across:

- 📅 **3 Months:** January, February and March
- 📚 **4 Courses:** Excel, Power BI, SQL and Python
- 👥 **3 Batches:** Morning, Evening and Weekend
- 📈 **Score**
- 📊 **Attendance Percentage**

## 📚 Course Categories

### 💼 Business

- Excel
- Power BI

### 💻 Technology

- SQL
- Python

---

# 🔄 Data Analytics Workflow

```text
Raw Data
    ↓
Data Cleaning
    ↓
Duplicate Handling
    ↓
Course Lookup
    ↓
Data Enrichment
    ↓
Derived Fields
    ↓
Summary & Pivot Analysis
    ↓
SQL Database Structure
    ↓
Analysis-Ready Data
```
---

# 💡 Business Questions

This project can be used to explore questions such as:

1. Which course has higher assessment performance?
2. How does performance change across different months?
3. How do Business and Technology courses compare?
4. How does attendance percentage relate to assessment scores?
5. How do different batches perform?
6. Which assessment records meet the defined passing condition?
7. How can the same dataset be structured in both Excel and SQL?
8. How can relational database design improve data organization?

---

# 🛠️ Tools & Technologies

## 📗 Microsoft Excel

- Data Cleaning
- XLOOKUP
- Pivot Tables
- Data Aggregation
- Derived Fields
- Summary Analysis

## 🗄️ SQL / MySQL

- Database Creation
- Table Creation
- Primary Keys
- Foreign Keys
- Data Insertion
- Relational Database Design

---

# 📈 Skills Demonstrated

This project demonstrates practical foundational skills in:

- 🧹 Data Cleaning
- 📋 Data Preparation
- 🗂️ Data Organization
- 🔎 Data Enrichment
- 📊 Excel Analysis
- 🗄️ SQL Database Design
- 🔗 Relational Data Modeling
- 📈 Data Aggregation
- 🧠 Analytical Thinking
- 💼 Business Question Formulation

---

---

# 🏆 Achievements

- 📊 Successfully completed an end-to-end Data Analytics project using **Microsoft Excel and SQL**.
- 🧹 Applied practical data cleaning and preparation techniques to transform raw assessment data into an analysis-ready dataset.
- 🔎 Implemented **XLOOKUP, Pivot Tables, Data Aggregation and Derived Fields** in Excel.
- 🗄️ Designed a relational SQL database using **Primary Keys, Foreign Keys and table relationships**.
- 💡 Developed a structured approach to analyzing assessment performance and formulating business questions.
- 📁 Created a portfolio-ready project demonstrating practical foundational **Data Analyst skills**.

---

# 👩‍💻 Author

## Sneha Gupta

**Aspiring Data Analyst | Business Analyst**

I am a BBA student developing practical skills in **Data Analytics, Business Analysis, Excel, SQL and Python**.

I am interested in transforming raw data into structured information and meaningful insights. Through hands-on projects, I am building practical experience in **data cleaning, analysis, database design and analytical problem-solving**.

### 💻 Technical Interests

- Microsoft Excel
- SQL
- Python
- Data Analytics
- Business Analysis
- Data Visualization
- Database Management

### 🎯 Career Goal

To build a career in **Data Analytics and Business Analysis** and use data-driven approaches to understand business problems and support informed decision-making.

---

### ⭐ Project Note

> **From Raw Data → Clean Data → Structured Database → Analysis → Insights**

**Created by Sneha Gupta | Data Analytics Portfolio Project**

