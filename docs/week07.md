---
layout: default
title: Week 7 - Data Cleaning & Preparation
description: Clean and prepare your company dataset for machine learning
---

# Week 7: Data Cleaning & Preparation
# 第7週：データクリーニングと準備

[← Back to Course Overview](weeks-1-5.md)

---

## Learning Objectives

By the end of this week, you will be able to:

- **Identify** and handle missing data effectively
- **Detect** and treat outliers appropriately
- **Standardize** and normalize numerical features
- **Encode** categorical variables for ML algorithms
- **Create** a complete data preprocessing pipeline

学習目標：
- 欠損データを効果的に特定して処理する
- 外れ値を適切に検出して処理する
- 数値特徴を標準化して正規化する
- ML アルゴリズムのためにカテゴリ変数をエンコードする
- 完全なデータ前処理パイプラインを作成する

---

## Topics Covered

### The Importance of Data Quality
- **Garbage In, Garbage Out**: Clean data = Better models
- **Common Data Issues**: Missing values, duplicates, inconsistencies, outliers
- **Impact on ML**: Poor data quality leads to poor predictions

### Missing Data Handling

#### Types of Missing Data
1. **MCAR (Missing Completely At Random)**: Random, no pattern
2. **MAR (Missing At Random)**: Related to other variables
3. **MNAR (Missing Not At Random)**: Systematic pattern

#### Handling Strategies
- **Deletion**: Remove rows/columns with missing data
- **Imputation**: Fill with mean, median, mode, or predicted values
- **Indicator Variables**: Create "is_missing" flag

### Outlier Detection and Treatment
- **Visual Methods**: Box plots, scatter plots
- **Statistical Methods**: Z-score, IQR (Interquartile Range)
- **Treatment Options**: Remove, cap, transform, or keep

### Feature Scaling
- **Standardization**: Mean=0, SD=1 (Z-score normalization)
- **Min-Max Scaling**: Scale to [0,1] range
- **Robust Scaling**: Using median and IQR (resistant to outliers)

### Categorical Encoding
- **Label Encoding**: Assign numbers to categories
- **One-Hot Encoding**: Create binary columns for each category
- **Target Encoding**: Use target variable statistics

---

## Materials & Links

### Lecture Slides
- [Week 7 Lecture: Data Cleaning & Preparation](../lectures/week07-data-cleaning-slides.md)
- **Duration**: 15-20 minutes
- **Format**: Bilingual (English/Japanese)

### Activity Plan
- [Week 7 Hands-On Activity: Cleaning Company Dataset](../activities/week-plans/week07-data-cleaning-activity.md)
- **Duration**: 40-60 minutes
- **Guided by**: ML-101 Bot

### Assignment
- [Week 7 Assignment: Complete Data Preparation Pipeline](../assessments/week07-assignment.md)
- **Weight**: Part of 40% Weekly Activities grade
- **Due**: End of Week 7 class session

### Handouts & Resources
- [Missing Data Handling Guide](../resources/week07-materials/missing-data-guide.md)
- [Outlier Detection Methods](../resources/week07-materials/outlier-detection.md)
- [Feature Scaling Comparison](../resources/week07-materials/scaling-comparison.md)
- [Data Cleaning Code Examples](../resources/week07-materials/cleaning-examples.py)

---

## Activity Details

### What You'll Do (40-60 minutes)

**With ML-101 Bot Guidance:**

1. **Data Quality Assessment** (10 min)
   - Load your company dataset
   - Check for missing values
   - Identify data quality issues
   - Generate data quality report

2. **Handle Missing Data** (15 min)
   - Analyze missing data patterns
   - Decide on handling strategy for each column
   - Implement imputation or deletion
   - Validate completeness

3. **Outlier Detection and Treatment** (10 min)
   - Visualize distributions
   - Identify outliers using statistical methods
   - Decide on treatment approach
   - Document decisions

4. **Feature Encoding and Scaling** (15 min)
   - Encode categorical variables (industry, location, etc.)
   - Scale numerical features
   - Handle text features from Week 6
   - Create feature matrix

5. **Build Preprocessing Pipeline** (10 min)
   - Combine all preprocessing steps
   - Create reusable sklearn pipeline
   - Save pipeline for model training
   - Validate pipeline works on new data

---

## Quick Navigation

| Previous Week | Next Week | All Weeks |
|--------------|-----------|-----------|
| [Week 6: Text Mining →](week06.md) | [Week 8: Advanced Classification →](week08.md) | [Course Overview](weeks-1-5.md) |

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#week-7-data-cleaning--preparation)
