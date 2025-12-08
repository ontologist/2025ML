---
layout: default
title: Week 2 - Understanding Data and Its Role
description: Learn about data types, quality, and sources for machine learning
---

# 📊 Week 2: Understanding Data and Its Role
# 第2週：データとその役割の理解

[← Week 1](week01.md) | [Week 3 →](week03.md) | [Back to Course Overview](weeks-1-5.md)

---

## 🎯 Learning Objectives

By the end of this week, you will be able to:

- **Understand** what data is and the different types (numbers, text, categories)
- **Distinguish** between structured and unstructured data
- **Evaluate** data quality using key criteria (accuracy, completeness, consistency)
- **Identify** appropriate data sources for machine learning projects
- **Recognize** common data quality issues and their impact on ML models

学習目標：
- データとは何か、異なるタイプ（数値、テキスト、カテゴリー）を理解する
- 構造化データと非構造化データを区別する
- 主要な基準（正確性、完全性、一貫性）を使用してデータ品質を評価する
- 機械学習プロジェクトに適したデータソースを特定する
- 一般的なデータ品質の問題とMLモデルへの影響を認識する

---

## 📖 Topics Covered

### What is Data?
- **Numbers** (数字): Age, salary, company size, employee count
- **Text** (テキスト): Company descriptions, job requirements, reviews
- **Categories** (カテゴリー): Industry, location, company type

### Structured vs Unstructured Data
- **Structured**: Organized in tables (spreadsheets, databases)
- **Unstructured**: Free-form text, images, videos
- **Semi-structured**: JSON, XML, HTML

### Data Quality Matters!
Good data = Good ML models
Bad data = Bad predictions

**Key Quality Criteria**:
- ✅ **Accuracy** (正確性): Is the data correct?
- ✅ **Completeness** (完全性): Is anything missing?
- ✅ **Consistency** (一貫性): Is the format uniform?
- ✅ **Timeliness** (適時性): Is the data current?
- ✅ **Relevance** (関連性): Does it help answer our question?

### Data Sources for ML Projects
- Public datasets and APIs
- Web scraping (websites, job boards)
- Surveys and user input
- Government/institutional databases

---

## 📝 Materials & Links

### Lecture Slides
- 📊 [Week 2 Lecture: Understanding Data and Its Role](../lectures/week02-data-role-slides.md)
- **Duration**: 15-20 minutes
- **Format**: Bilingual (English/Japanese)

### Activity Plan
- 🎮 [Week 2 Hands-On Activity: Data Quality Exploration](../activities/week-plans/week02-data-role-activity.md)
- **Duration**: 40-60 minutes
- **Guided by**: ML-101 Bot

### Assignment
- 📋 [Week 2 Assignment: Data Evaluation & Quality Assessment](../assessments/week02-assignment.md)
- **Weight**: Part of 40% Weekly Activities grade
- **Due**: End of Week 2 class session

### Handouts & Resources
- 📖 [Data Types Reference Guide](../resources/week02-materials/data-types-reference.md)
- ✅ [Data Quality Checklist](../resources/week02-materials/data-quality-checklist.md)
- 📋 [Data Source Evaluation Template](../resources/week02-materials/data-source-evaluation-template.md)

### Practice Datasets
- 📁 [Sample Structured Data (CSV)](../resources/week02-datasets/sample-structured-data.csv)
- 🔍 [Messy Company Data (CSV)](../resources/week02-datasets/messy-company-data.csv)
- 🔑 [Messy Data Issues Key](../resources/week02-datasets/messy-data-issues-key.md)

---

## 🎮 Activity Details

### What You'll Do (40-60 minutes)

**With ML-101 Bot Guidance:**

1. **Explore Data Types** (10 min)
   - Examine sample datasets
   - Identify numerical, text, and categorical data
   - Understand which types work best for different ML tasks

2. **Evaluate Data Quality** (15 min)
   - Analyze messy company data
   - Identify quality issues (missing values, inconsistencies, errors)
   - Use data quality checklist to assess datasets

3. **Compare Structured vs Unstructured Data** (10 min)
   - Work with structured tables (CSV)
   - Examine unstructured text (company descriptions)
   - Understand the challenges of each type

4. **Assess Data Sources** (15 min)
   - Evaluate potential sources for the course project
   - Consider reliability, accessibility, and relevance
   - Document pros/cons of different sources

5. **Plan Project Data Collection** (10 min)
   - Identify what data is needed for company classification
   - Determine where to find company information
   - Create initial data collection plan

---

## 📅 Due Dates

**Assignment Submission**: End of Week 2 class session

**What to Submit**:
1. **Data Quality Analysis Report**
   - Analysis of messy dataset
   - 5+ data quality issues identified
   - Recommendations for improvement

2. **Data Source Evaluation**
   - 3 potential sources for company data
   - Evaluation using provided template
   - Justification for best source

3. **Project Data Plan**
   - List of data needed for company classification
   - Data collection strategy
   - Expected challenges and solutions

**Format**: Single PDF or Word document
**File naming**: `Week02_[YourName]_DataQuality`
**Submit via**: ML-101 Bot Portal

---

## 🤖 ML-101 Bot Portal

**Access the ML-101 Bot**: [Bot Portal Link - To Be Provided]

**This Week's Bot Features**:
- 🔍 Helps identify data quality issues
- 📊 Explains different data types with examples
- ✅ Provides feedback on your data evaluations
- 💡 Suggests data sources for your project
- 🗣️ Answers questions about data in English or Japanese

---

## 💡 Tips for Success

### Analyzing Data Quality
- **Be thorough**: Don't just look at the first few rows
- **Use the checklist**: It helps you catch issues systematically
- **Think like ML**: How would bad data affect model predictions?

### Evaluating Data Sources
- **Consider accessibility**: Can you actually get the data?
- **Check legality**: Is it legal and ethical to collect this data?
- **Assess relevance**: Does it contain what you need for your project?

### Common Data Quality Issues to Look For
- ❌ Missing values (blank cells, "N/A", null)
- ❌ Inconsistent formats (dates, phone numbers, addresses)
- ❌ Duplicate records
- ❌ Outliers or impossible values (age = -5, salary = ¥0)
- ❌ Inconsistent categories ("Tech", "tech", "technology" for same thing)

### Example Data Quality Issue
**Problem**: Company size listed as "50-100", "75 employees", "~80", "Medium"
**Impact**: ML model can't learn patterns from inconsistent formats
**Solution**: Standardize to numerical ranges or categories

---

## 🔗 Real-World Connection

**Why This Matters**:
Data is the **foundation** of all machine learning. Even the best ML algorithm will fail with poor-quality data. This week teaches you to:

- 🔍 Spot data problems before they ruin your models
- 📊 Choose the right data sources for your project
- ✅ Ensure your collected data is usable for ML

**For the Course Project**:
Understanding data quality helps you:
- Collect better company information from websites
- Identify which company attributes are most useful
- Clean and prepare data for training your classifier

---

## 📚 Additional Resources

**Want to Learn More?**
- [Data Quality Checklist](../resources/week02-materials/data-quality-checklist.md) - Use this for any dataset
- [Data Types Reference](../resources/week02-materials/data-types-reference.md) - Detailed guide to data types
- [Data Source Evaluation Template](../resources/week02-materials/data-source-evaluation-template.md) - Reusable template

**Practice Datasets**:
- Try analyzing the messy company data and finding ALL the issues
- Compare your findings with the [issues key](../resources/week02-datasets/messy-data-issues-key.md)

---

## 🔗 Quick Navigation

| Previous Week | Next Week | All Weeks |
|--------------|-----------|-----------|
| [← Week 1: ML Introduction](week01.md) | [Week 3: Python & Colab →](week03.md) | [Course Overview](weeks-1-5.md) |

---

## ❓ Need Help?

**During Class**:
- Use the ML-101 Bot to clarify data quality concepts
- Ask instructor about data source recommendations
- Compare findings with classmates

**Outside Class**:
- ML-101 Bot Portal (available 24/7)
- Email instructor: [To Be Provided]
- Office hours: [To Be Provided]

**Common Questions**:
- **Q**: How do I know if data is "good enough"?
  **A**: Use the 5 quality criteria - if it passes most checks, it's usable

- **Q**: What if I find too many data quality issues?
  **A**: Document them all - this shows thorough analysis!

---

**📊 Ready to Explore Data?**

1. Review the [lecture slides](../lectures/week02-data-role-slides.md)
2. Download the [practice datasets](../resources/week02-datasets/)
3. Open the [ML-101 Bot portal](#) and start the activity
4. Complete the [assignment](../assessments/week02-assignment.md)

**Key Insight**: Garbage in = Garbage out. Quality data is EVERYTHING in ML! 🎯

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#week-2-understanding-data-and-its-role)
