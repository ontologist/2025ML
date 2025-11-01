# Week 3: Introduction to Google Colab and Python Basics
# 第3週：Google Colabと基本的なPython入門

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Week 3 - Python and Google Colab
## スライド1：第3週 - PythonとGoogle Colab

**Topic:** Introduction to Google Colab and Python Basics
**トピック:** Google Colabと基本的なPython入門

**Today's Objectives | 今日の目標:**
- Understand what Google Colab is | Google Colabとは何かを理解する
- Learn basic Python concepts | 基本的なPythonコンセプトを学ぶ
- Write your first Python code | 最初のPythonコードを書く
- See how Python helps with ML | PythonがMLにどう役立つかを見る

---

## Slide 2: What is Google Colab?
## スライド2：Google Colabとは？

**Google Colaboratory = Your Python Workspace in the Cloud**
**Google Colaboratory = クラウド上のあなたのPythonワークスペース**

### Why Colab is Perfect for Learning | Colabが学習に最適な理由

✅ **No Installation Required**
   インストール不要
   - Works in your web browser | Webブラウザで動作
   - Nothing to download | ダウンロード不要

✅ **Completely Free**
   完全無料
   - Google provides everything | Googleがすべてを提供
   - Just need a Google account | Googleアカウントだけが必要

✅ **Perfect for ML and Data Analysis**
   MLとデータ分析に最適
   - Pre-installed libraries | 事前インストールされたライブラリ
   - Easy to share your work | 作業を簡単に共有

---

## Slide 3: Why Learn Python for ML?
## スライド3：なぜMLのためにPythonを学ぶのか？

**Python = The Language of Machine Learning**
**Python = 機械学習の言語**

### Python is Everywhere in ML | PythonはMLのどこにでもある

📊 **Data Cleaning** | データクリーニング
- Fixing messy data | 乱雑なデータの修正
- Removing duplicates | 重複の削除

📈 **Data Analysis** | データ分析
- Finding patterns | パターンの発見
- Creating visualizations | 可視化の作成

🤖 **ML Models** | MLモデル
- Training models | モデルの訓練
- Making predictions | 予測の実行

**Good News!** You don't need to be a programmer - we'll learn what we need as we go!
**良いニュース！** プログラマーである必要はありません - 進みながら必要なことを学びます！

---

## Slide 4: Python Basics - Variables
## スライド4：Python基礎 - 変数

**Variables = Containers for Storing Information**
**変数 = 情報を保存する容器**

### Think of Variables Like Labeled Boxes | 変数をラベル付きの箱のように考える

```python
company_name = "ABC Corporation"
employee_count = 500
average_rating = 4.5
is_hiring = True
```

**What This Means:**
- `company_name` box holds text: "ABC Corporation"
- `employee_count` box holds a number: 500
- `average_rating` box holds a decimal: 4.5
- `is_hiring` box holds True or False

**For Our Project:** Variables will store company information!
**プロジェクトでは:** 変数が企業情報を保存します！

---

## Slide 5: Python Data Types
## スライド5：Pythonデータ型

### Four Main Types We'll Use | 使用する4つの主なタイプ

**1. Strings (Text) | 文字列（テキスト）**
```python
industry = "Technology"
description = "Leading software company"
```

**2. Integers (Whole Numbers) | 整数（整数）**
```python
employees = 1000
founded_year = 2010
```

**3. Floats (Decimals) | 浮動小数点（小数）**
```python
rating = 4.7
salary = 4500000.00
```

**4. Booleans (True/False) | ブール値（真/偽）**
```python
remote_work = True
hiring = False
```

**Why This Matters:** Different data types for different kinds of information!
**なぜ重要か:** 異なる種類の情報には異なるデータ型！

---

## Slide 6: Python Lists and Dictionaries
## スライド6：Pythonのリストと辞書

### Lists = Collections of Items | リスト = アイテムのコレクション

```python
companies = ["Sony", "Toyota", "Rakuten", "Nintendo"]
employee_counts = [50000, 370000, 28000, 6700]
```
- Perfect for storing multiple items | 複数のアイテムを保存するのに最適
- Can access by position: `companies[0]` gives "Sony" | 位置でアクセス可能

### Dictionaries = Organized Information | 辞書 = 整理された情報

```python
company_info = {
    "name": "Sony",
    "industry": "Technology",
    "employees": 50000,
    "location": "Tokyo"
}
```
- Perfect for storing related data together | 関連データを一緒に保存するのに最適
- Access by key: `company_info["name"]` gives "Sony" | キーでアクセス

---

## Slide 7: Semester Preview - What We'll Build
## スライド7：学期プレビュー - 構築するもの

### Your Python Journey This Semester | 今学期のPythonの旅

**Week 3 (Today):** Basic Python | 基本的なPython
- Variables, lists, dictionaries | 変数、リスト、辞書
- Simple operations | 簡単な操作

**Weeks 4-6:** Data Collection | データ収集
- Using Python to scrape websites | Pythonを使用してウェブサイトをスクレイプ
- Organizing company data | 企業データの整理

**Weeks 7-9:** Data Cleaning | データクリーニング
- Fixing messy data with Python | Pythonで乱雑なデータを修正
- Preparing data for ML | MLのためのデータ準備

**Weeks 10-12:** ML Models | MLモデル
- Training your company classifier | 企業分類器の訓練
- Making recommendations | 推薦の実行

**Remember:** We learn Python BY DOING, not by memorizing!
**覚えておいてください:** 暗記ではなく、実行することでPythonを学びます！

---

## Slide 8: Simple Example - Company Data
## スライド8：簡単な例 - 企業データ

### Let's See Python in Action | 実際のPythonを見てみましょう

```python
# Create company information
company = {
    "name": "ABC Corporation",
    "industry": "Technology",
    "employees": 500,
    "rating": 4.5
}

# Print company name
print(company["name"])  # Output: ABC Corporation

# Check if large company (500+ employees)
if company["employees"] >= 500:
    print("Large company")
else:
    print("Small/Medium company")
```

**What This Shows:**
- Storing data in a dictionary | 辞書にデータを保存
- Accessing specific values | 特定の値にアクセス
- Making simple decisions | 簡単な決定を行う

**This Semester:** You'll do this with REAL company data!
**今学期:** 実際の企業データでこれを行います！

---

## Slide 9: Introducing Pandas
## スライド9：pandasの紹介

**Pandas = Python's Tool for Working with Data Tables**
**Pandas = データテーブルを扱うためのPythonツール**

### Why We Need Pandas | なぜpandasが必要か

Think of Excel, but in Python!
Excelを考えてください、でもPythonで！

**What Pandas Does:**
- Loads data from files (CSV, Excel) | ファイルからデータをロード（CSV、Excel）
- Organizes data in rows and columns | 行と列でデータを整理
- Cleans and analyzes data | データのクリーニングと分析
- Prepares data for ML | MLのためのデータ準備

```python
import pandas as pd

# Load company data
companies = pd.read_csv("companies.csv")

# See first few companies
print(companies.head())
```

**Today's Activity:** You'll use pandas to explore data!
**今日のアクティビティ:** pandasを使用してデータを探索します！

---

## Slide 10: Today's Activity Preview
## スライド10：今日のアクティビティプレビュー

### What You'll Do Today | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Set Up Google Colab** (10 min)
   - Create your first notebook
   - Google Colabセットアップ

2. **Python Variables and Data Types** (12 min)
   - Practice creating variables
   - Python変数とデータ型

3. **Lists and Dictionaries** (13 min)
   - Store company information
   - リストと辞書

4. **Pandas Data Exploration** (15 min)
   - Load and explore a dataset
   - pandasデータ探索

5. **Complete and Document** (10 min)
   - Save your work
   - 完了と文書化

**The ML-101 Bot will guide you step-by-step!**
**ML-101ボットがステップバイステップでガイドします！**

---

## Slide 11: Key Takeaways
## スライド11：重要なポイント

### Remember | 覚えておいてください

✅ **Colab = Free Python in the cloud**
   Colab = クラウド上の無料Python

✅ **Python = Tool for ML**, not the goal
   Python = MLのためのツールであり、目標ではない

✅ **Variables store information** (company names, numbers, etc.)
   変数は情報を保存（企業名、数字など）

✅ **Lists and dictionaries** organize data
   リストと辞書はデータを整理

✅ **Pandas helps** work with data tables
   pandasはデータテーブルの操作を支援

✅ **Learn by doing**, not memorizing!
   暗記ではなく、実行することで学ぶ！

---

## Slide 12: Let's Get Started!
## スライド12：始めましょう！

**"Now let's jump into Colab and write your first Python code!"**
**「では、Colabに入って最初のPythonコードを書きましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Begin Week 3 Activity
   第3週アクティビティを開始

3. Follow bot guidance to set up Colab
   ボットのガイダンスに従ってColabをセットアップ

4. Write your first Python code!
   最初のPythonコードを書く！

**Remember:** Don't worry about making mistakes - that's how we learn!
**覚えておいてください:** 間違いを心配しないでください - それが学び方です！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum - keep it concise and energizing!
- **Reassurance:** Many students fear programming - emphasize "no experience needed"
- **Examples:** Use simple, relatable examples (storing names, numbers)
- **Demo:** If time, show Colab interface briefly (2-3 minutes max)
- **Enthusiasm:** Build excitement about writing their first code!
- **Transition:** Move quickly to hands-on activity where real learning happens

### Common Questions

Q: "I've never programmed before - will I be able to do this?"
A: "Absolutely! The activity starts with the simplest possible examples. The bot will guide you step-by-step. Just follow along!"

Q: "Do I need to install anything?"
A: "No! That's the beauty of Colab - everything runs in your web browser. Just need internet and a Google account."

Q: "What if I get error messages?"
A: "Errors are normal! They're how we learn. The bot will help you understand error messages and fix them. Plus, I'll be here to help."

Q: "Will we be programming for the whole semester?"
A: "We'll use Python as a tool, but it's not a programming course. We learn just enough Python to accomplish our ML tasks."

### After Lecture

- Immediately transition to hands-on activity
- Students work with bot guidance
- Circulate to help with Colab access issues (login, browser problems)
- Don't worry about explaining all Python details - bot handles that
- Focus on helping students who are stuck or anxious

### Key Points to Emphasize

1. **Python is a tool, not the focus** - We're learning ML, using Python to get there
2. **Colab makes it easy** - No installation, no setup headaches
3. **Bot provides guidance** - Students aren't alone in the activity
4. **Learning by doing** - The activity is where the real learning happens
5. **Everyone starts somewhere** - No one is expected to know programming

### AI Transparency

- Remind students they can use AI for help (ChatGPT, Claude, etc.)
- Must document all AI interactions in transparency log
- AI is a learning aid, not a replacement for understanding
- Model good practices: "It's okay to ask AI to explain code, but make sure you understand it!"

---

**End of Week 3 Lecture Slides**
**第3週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
