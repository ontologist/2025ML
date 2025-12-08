# Messy Company Data - Quality Issues Key
# 乱雑な企業データ - 品質問題の解答

**File:** messy-company-data.csv
**Purpose:** Training dataset with intentional data quality issues for Week 2 Activity
**用途:** 第2週アクティビティ用の意図的なデータ品質問題を含むトレーニングデータセット

---

## Data Quality Issues Included
## 含まれるデータ品質問題

### 1. Missing Values (欠損値)

**Description:** Some cells are empty when they should contain data
**説明:** データを含むべきセルが空である

**Examples in dataset:**
- Row C004: Missing `company_name`
- Row C007 (Retail Connect): Missing `employee_count`
- Row C008 (EduTech Japan): Missing `avg_rating`
- Row C009 (Food Service Innovation): Missing `last_updated`
- Row C015 (Pharmaceutical Research): Missing `industry`
- Row C020 (Logistics Solutions): Missing `is_hiring`
- Row C021: Missing `company_name`

**Impact on ML:** Models cannot process missing values without handling strategy (deletion, imputation, etc.)

---

### 2. Duplicate Records (重複レコード)

**Description:** The same company appears multiple times in the dataset
**説明:** 同じ企業がデータセットに複数回出現している

**Examples in dataset:**
- C002 appears twice (rows 2 and 6) with slightly different names:
  - "Global Finance" vs "Global Finance Corp"
- C005 appears twice (rows 5 and 19) with slightly different employee counts:
  - 150 employees vs 155 employees

**Impact on ML:** Duplicates can bias the model by giving more weight to duplicated companies

---

### 3. Inconsistent Formatting (一貫性のない書式)

**Description:** Same type of information formatted differently
**説明:** 同じタイプの情報が異なる形式で記述されている

**Examples in dataset:**

**Location capitalization:**
- "Tokyo" vs "tokyo" vs "TOKYO" (rows with different capitalizations)
- Row C005: "tokyo" (lowercase)
- Row C011: "TOKYO" (uppercase)
- Row C024: "tokyo" (lowercase)

**Industry capitalization:**
- Row C005: "marketing" (lowercase) vs others in title case

**Boolean values (is_hiring):**
- Mixed formats: "Yes", "TRUE", "No", "FALSE", "1"
- Should be consistent (all TRUE/FALSE or all Yes/No)

**Impact on ML:** Model treats "Tokyo", "tokyo", and "TOKYO" as three different locations!

---

### 4. Invalid/Impossible Values (無効/不可能な値)

**Description:** Data that doesn't make logical sense
**説明:** 論理的に意味をなさないデータ

**Examples in dataset:**
- Row C006 (Manufacturing Excellence): `employee_count = -50`
  - **Issue:** Cannot have negative employees!
  - **影響:** 従業員数が負の値になることは不可能！

**Impact on ML:** Invalid data can corrupt model training and lead to nonsensical predictions

---

### 5. Inconsistent Data Types (一貫性のないデータ型)

**Description:** Same column contains different data types
**説明:** 同じ列に異なるデータ型が含まれている

**Examples in dataset:**

**avg_rating column:**
- Most rows: Numeric values (4.2, 4.5, 3.8)
- Row C012: "N/A" (text instead of number)

**is_hiring column:**
- Text: "Yes", "No"
- Boolean: "TRUE", "FALSE"
- Integer: "1"
- Empty: missing value

**Impact on ML:** Models expect consistent data types; mixed types cause errors

---

### 6. Outdated Information (古い情報)

**Description:** Data that is no longer current or relevant
**説明:** もはや現在または関連性のないデータ

**Examples in dataset:**
- Row C011 (Transportation Systems): `last_updated = 2020-06-30`
  - **Issue:** Data is nearly 4 years old! May not be accurate anymore
  - **問題:** データが4年近く古い！もはや正確でないかもしれない

**Impact on ML:** Training on outdated data leads to predictions based on old information

---

### 7. Naming Inconsistencies (命名の不整合)

**Description:** Same company with slightly different names
**説明:** 同じ企業がわずかに異なる名前で記載されている

**Examples in dataset:**
- C002: "Global Finance" vs "Global Finance Corp"
  - Are these the same company or different? Hard to tell!
  - これらは同じ企業か異なる企業か？判断が難しい！

**Impact on ML:** Model may treat the same company as two different entities

---

## How Many Issues Should Students Find?
## 学生はいくつの問題を見つけるべきか？

### Minimum Expected (最低期待値)
Students should identify at least **5 distinct types** of data quality issues:
1. Missing values
2. Duplicates
3. Inconsistent formatting
4. Invalid values
5. Inconsistent data types

### Comprehensive Analysis (包括的分析)
Strong students may also identify:
6. Outdated information
7. Naming inconsistencies

---

## Teaching Notes
## 指導ノート

### Discussion Points

1. **Which issues are most critical?**
   - Invalid values (negative employees) are objectively wrong
   - Missing values prevent analysis
   - Inconsistent formatting causes incorrect grouping

2. **How would you fix each issue?**
   - Missing values: Remove rows or impute (fill with average/median)
   - Duplicates: Keep most recent or merge information
   - Formatting: Standardize (e.g., all lowercase or title case)
   - Invalid values: Remove or investigate and correct

3. **What's the impact on ML models?**
   - Garbage in, garbage out principle
   - Models learn from bad data → bad predictions
   - Data cleaning is critical first step

### Connection to Project

Emphasize that when students scrape company data from websites:
- They WILL encounter these issues
- They MUST clean data before training models
- Data quality directly impacts classifier performance

---

## Usage in Activity

**Step 2 of Week 2 Activity:** Data Quality Assessment (13 minutes)

Students will:
1. Open messy-company-data.csv
2. Systematically examine each column
3. Identify at least 5 different types of quality issues
4. Document each issue and explain potential ML impact
5. Discuss with bot: "What happens if we train an ML model on this data?"

**Bot will guide students** through systematic quality checking process.

---

**Created for ML-101 Week 2 Activity**
**ML-101第2週アクティビティ用に作成**

*This document is for instructor reference only. Do not distribute to students before activity.*
*この文書はインストラクター用の参考資料です。アクティビティ前に学生に配布しないでください。*
