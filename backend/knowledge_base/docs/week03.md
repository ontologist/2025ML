---
layout: default
title: Week 3 - Python Basics and Google Colab
description: Learn Python fundamentals and start coding in Google Colab
---

# 🐍 Week 3: Python Basics and Google Colab
# 第3週：Python基礎とGoogle Colab

[← Week 2](week02.md) | [Week 4 →](week04.md) | [Back to Course Overview](weeks-1-5.md)

---

## 🎯 Learning Objectives

By the end of this week, you will be able to:

- **Understand** what Google Colab is and why it's perfect for ML learning
- **Write** basic Python code (variables, lists, loops, functions)
- **Use** pandas library to work with data tables
- **Create** simple data analyses in Colab notebooks
- **Navigate** Jupyter notebook interface with confidence

学習目標：
- Google Colabとは何か、ML学習に最適な理由を理解する
- 基本的なPythonコードを書く（変数、リスト、ループ、関数）
- pandasライブラリを使用してデータテーブルを操作する
- Colabノートブックで簡単なデータ分析を作成する
- Jupyterノートブックインターフェースを自信を持ってナビゲートする

---

## 📖 Topics Covered

### What is Google Colab?
- **Cloud-based Python environment** - No installation required!
- **Free access** to computing power and ML libraries
- **Perfect for learning** - Share notebooks, collaborate, save to Google Drive
- **Pre-installed libraries** - pandas, numpy, matplotlib ready to use

### Python Basics for ML
```python
# Variables (変数)
company_name = "Acme Corporation"
employee_count = 500

# Lists (リスト)
industries = ["Technology", "Finance", "Healthcare"]

# Loops (ループ)
for industry in industries:
    print(industry)

# Functions (関数)
def classify_company(size):
    if size > 1000:
        return "Large"
    else:
        return "Small"
```

### Introduction to Pandas
- **DataFrames**: Tables of data (like Excel in Python)
- **Reading CSV files**: Load company data
- **Exploring data**: View rows, columns, statistics
- **Basic operations**: Filter, sort, calculate

### Why Python for ML?
- 🌟 **Most popular language** for ML and data science
- 📚 **Rich ecosystem** of libraries (scikit-learn, TensorFlow, PyTorch)
- 🤝 **Beginner-friendly** syntax that reads like English
- 💼 **Industry standard** - Used by Google, Netflix, Spotify

---

## 📝 Materials & Links

### Lecture Slides
- 📊 [Week 3 Lecture: Python Basics and Google Colab](../lectures/week03-python-colab-slides.md)
- **Duration**: 15-20 minutes
- **Format**: Bilingual (English/Japanese)

### Activity Plan
- 🎮 [Week 3 Hands-On Activity: First Steps in Python](../activities/week-plans/week03-python-colab-activity.md)
- **Duration**: 40-60 minutes
- **Guided by**: ML-101 Bot

### Assignment
- 📋 [Week 3 Assignment: Python Basics & Data Manipulation](../assessments/week03-assignment.md)
- **Weight**: Part of 40% Weekly Activities grade
- **Due**: End of Week 3 class session

### Handouts & Resources
- 📖 [Python Basics Cheat Sheet](../resources/week03-materials/python-basics-cheat-sheet.md)
- 🐼 [Pandas Quick Reference](../resources/week03-materials/pandas-quick-reference.md)
- ⚙️ [Google Colab Setup Guide](../resources/week03-materials/colab-setup-guide.md)

### Practice Notebooks & Data
- 📓 [Week 3 Python Basics Starter Notebook](../resources/week03-materials/week03-python-basics-starter.ipynb)
- 📊 [Sample Companies Dataset (CSV)](../resources/week03-materials/sample-companies.csv)

---

## 🎮 Activity Details

### What You'll Do (40-60 minutes)

**With ML-101 Bot Guidance:**

1. **Set Up Google Colab** (10 min)
   - Create a Google Colab account (free)
   - Open your first notebook
   - Run your first Python code: `print("Hello, ML!")`
   - Understand code cells vs text cells

2. **Learn Python Fundamentals** (15 min)
   - Work with variables and data types
   - Create and manipulate lists
   - Write simple loops and conditionals
   - Define basic functions
   - Use the starter notebook with fill-in-the-blank exercises

3. **Introduction to Pandas** (15 min)
   - Import pandas library
   - Load sample companies CSV file
   - Explore the dataset (rows, columns, data types)
   - Perform basic operations (filter, sort, calculate)
   - Answer questions about the data

4. **Analyze Company Data** (15 min)
   - Use pandas to analyze company characteristics
   - Calculate statistics (average salary, company sizes)
   - Filter companies by industry or location
   - Create simple summaries relevant to project

5. **Save and Share Your Work** (5 min)
   - Save notebook to Google Drive
   - Download as .ipynb file
   - Understand how to share and collaborate

---

## 📅 Due Dates

**Assignment Submission**: End of Week 3 class session

**What to Submit**:
1. **Completed Python Basics Notebook**
   - All code cells filled in and working
   - Outputs visible for each exercise
   - Questions answered with code + comments

2. **Company Data Analysis**
   - Load sample companies CSV
   - Complete 5 analysis tasks using pandas
   - Document findings with markdown explanations

3. **Reflection Questions**
   - How is Python different from tools you've used before?
   - What pandas operations were most useful?
   - How will Python help with the course project?

**Format**: Jupyter notebook (.ipynb file)
**File naming**: `Week03_[YourName]_PythonBasics.ipynb`
**Submit via**: ML-101 Bot Portal

---

## 🤖 ML-101 Bot Portal

**Access the ML-101 Bot**: [Bot Portal Link - To Be Provided]

**This Week's Bot Features**:
- 💻 Explains Python syntax and concepts
- 🐛 Helps debug code errors
- 🐼 Demonstrates pandas operations with examples
- 📊 Suggests data analysis approaches
- 🗣️ Answers coding questions in English or Japanese

**Bot Can Help With**:
- "Why am I getting this error?"
- "How do I filter a DataFrame in pandas?"
- "What's the difference between a list and a DataFrame?"
- "Show me an example of using a for loop"

---

## 💡 Tips for Success

### Getting Started with Colab
- **Save frequently** - Notebooks auto-save, but better safe than sorry
- **Use Shift+Enter** to run code cells (don't click every time!)
- **Add comments** - Use `#` to explain your code
- **Google is your friend** - "How to [task] in pandas" finds great examples

### Writing Good Python Code
```python
# ✅ GOOD - Clear variable names
company_name = "Acme Corp"
employee_count = 500

# ❌ BAD - Unclear abbreviations
cn = "Acme Corp"
ec = 500
```

### Common Beginner Mistakes
- ❌ Forgetting to import libraries: `import pandas as pd`
- ❌ Case sensitivity: `Company` ≠ `company`
- ❌ Indentation errors: Python uses spaces/tabs for structure
- ❌ Not running cells in order: Colab executes cells as you run them

### Pandas Quick Wins
```python
import pandas as pd

# Read CSV file
df = pd.read_csv('sample-companies.csv')

# View first 5 rows
df.head()

# Get basic statistics
df.describe()

# Filter by industry
tech_companies = df[df['industry'] == 'Technology']

# Count companies per industry
df['industry'].value_counts()
```

---

## 🔗 Real-World Connection

**Why This Matters**:
Python is the **language of machine learning**. Every ML project you'll work on uses Python:

- 📊 **Data collection**: Web scraping libraries (BeautifulSoup, Scrapy)
- 🧹 **Data cleaning**: pandas for organizing and preparing data
- 🤖 **Model training**: scikit-learn for ML algorithms
- 📈 **Visualization**: matplotlib and seaborn for charts

**For the Course Project**:
You'll use Python to:
- Scrape company data from mynavi.jp
- Clean and organize company information
- Train a classifier on YOUR preferences
- Make predictions about new companies

**This week is your foundation** - everything builds on these basics!

---

## 📚 Additional Resources

### Reference Guides
- [Python Basics Cheat Sheet](../resources/week03-materials/python-basics-cheat-sheet.md) - Quick reference
- [Pandas Quick Reference](../resources/week03-materials/pandas-quick-reference.md) - Common operations
- [Colab Setup Guide](../resources/week03-materials/colab-setup-guide.md) - Step-by-step setup

### Practice More
- **Starter Notebook**: Try the [Python Basics Starter](../resources/week03-materials/week03-python-basics-starter.ipynb)
- **Sample Data**: Analyze the [sample companies CSV](../resources/week03-materials/sample-companies.csv)
- **Extra Challenges**: Ask the bot for additional practice exercises

### External Resources (Optional)
- [Google Colab Official Tutorial](https://colab.research.google.com/notebooks/intro.ipynb)
- [Pandas Documentation](https://pandas.pydata.org/docs/user_guide/10min.html) - 10 minutes to pandas

---

## 🔗 Quick Navigation

| Previous Week | Next Week | All Weeks |
|--------------|-----------|-----------|
| [← Week 2: Understanding Data](week02.md) | [Week 4: Web Scraping Intro →](week04.md) | [Course Overview](weeks-1-5.md) |

---

## ❓ Need Help?

**During Class**:
- Use ML-101 Bot for code explanations and debugging
- Ask instructor when stuck on exercises
- Work with classmates to solve problems together

**Outside Class**:
- ML-101 Bot Portal (available 24/7 for coding help)
- Email instructor: [To Be Provided]
- Office hours: [To Be Provided]

**Common Questions**:
- **Q**: Do I need to install Python on my computer?
  **A**: No! Google Colab runs in your browser - nothing to install

- **Q**: What if I've never coded before?
  **A**: Perfect! This week assumes zero coding experience. Follow along step-by-step

- **Q**: Can I use ChatGPT to help with code?
  **A**: Yes, but document it in your transparency log and understand the code yourself

---

**🐍 Ready to Start Coding?**

1. Review the [lecture slides](../lectures/week03-python-colab-slides.md)
2. Open [Google Colab](https://colab.research.google.com/) and create an account
3. Download the [starter notebook](../resources/week03-materials/week03-python-basics-starter.ipynb)
4. Follow the [ML-101 Bot activity](#) step-by-step
5. Complete and submit the [assignment](../assessments/week03-assignment.md)

**Remember**: Everyone starts somewhere. Don't worry about perfection - focus on understanding! 🎯

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#week-3-python-basics-and-google-colab)
