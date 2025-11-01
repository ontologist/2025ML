# Data Quality Checklist
# データ品質チェックリスト

**Week 2 Reference Material | 第2週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## Introduction | はじめに

**"Garbage in, garbage out" - The #1 rule of Machine Learning**
**「ゴミを入れればゴミが出る」- 機械学習の第1ルール**

Poor quality data = Poor quality predictions, no matter how good your model is!
低品質データ = 低品質予測、モデルがどれだけ良くても！

This checklist helps you identify and understand data quality issues before training ML models.
このチェックリストは、MLモデルを訓練する前にデータ品質の問題を特定し、理解するのに役立ちます。

---

## The 5 Main Data Quality Issues | 5つの主なデータ品質問題

### Quick Overview | クイック概要

```
1. Missing Values      ❓ Data points that don't exist
   欠損値               存在しないデータポイント

2. Duplicates          👯 Same record appears multiple times
   重複                同じレコードが複数回表示される

3. Inconsistencies     🔀 Same thing represented differently
   不整合              同じものが異なる方法で表される

4. Invalid Values      ⚠️ Data that doesn't make sense
   無効な値            意味をなさないデータ

5. Outdated Data       📅 Information that's no longer current
   古いデータ          もはや最新ではない情報
```

---

## 1. Missing Values | 欠損値

### What to Look For | 何を探すか

**Signs of missing data:**
**欠損データの兆候:**

✓ Empty cells in spreadsheets
  スプレッドシートの空のセル

✓ "N/A", "NULL", "None", "—" entries
  「N/A」、「NULL」、「None」、「—」エントリ

✓ Zeros that should be numbers (e.g., salary = 0)
  数値であるべきゼロ（例：給与 = 0）

✓ Default values like "Unknown" or "Not specified"
  「不明」または「指定なし」などのデフォルト値

---

### How to Identify | 特定方法

**Visual inspection:**
**目視検査:**
```
Company Name | Industry | Employee Count | Revenue
ABC Corp     | Tech     | 500           | $10M
XYZ Inc      | Finance  |               | $5M    ← Missing!
LMN Ltd      | Tech     | 200           |        ← Missing!
```

**In Python/Pandas:**
```python
import pandas as pd

# Check for missing values
df.isnull().sum()
# Output shows count of missing values per column

# Visualize missing data
df.info()
# Shows data types and non-null counts
```

**Quick calculation:**
```
Missing percentage = (Missing count / Total count) × 100

Example:
10 missing values out of 100 rows = 10% missing
```

---

### Impact on ML | MLへの影響

**Why missing values are problematic:**
**なぜ欠損値が問題なのか:**

❌ **Model can't train** - Many algorithms reject incomplete data
   モデルを訓練できない - 多くのアルゴリズムが不完全なデータを拒否

❌ **Reduced dataset size** - Deleting rows loses valuable information
   データセットサイズの削減 - 行を削除すると貴重な情報が失われる

❌ **Biased predictions** - If missing data follows a pattern
   偏った予測 - 欠損データがパターンに従う場合

**Example:**
If only high-salary companies don't report salary, your model won't learn about high-paying jobs!
高給企業のみが給与を報告しない場合、モデルは高給の仕事について学習しません！

---

### Common Solutions | 一般的な解決策

| Solution | When to Use | Pros | Cons |
|----------|-------------|------|------|
| **Delete rows** | <10% missing, random | Simple, clean data | Lose information |
| **Delete columns** | >50% missing in one column | Keep other data intact | Lose entire feature |
| **Fill with average** | Numeric data, random missing | Keeps dataset size | May distort distribution |
| **Fill with mode** | Categorical data | Simple, logical | May create false patterns |
| **Advanced imputation** | Important features, patterns | More accurate | Complex, time-consuming |

| 解決策 | いつ使用するか | 長所 | 短所 |
|--------|---------------|------|------|
| **行を削除** | <10%欠損、ランダム | シンプル、クリーンなデータ | 情報を失う |
| **列を削除** | 1列に>50%欠損 | 他のデータをそのまま保持 | 全体の特徴を失う |
| **平均で埋める** | 数値データ、ランダム欠損 | データセットサイズを維持 | 分布を歪める可能性 |
| **最頻値で埋める** | カテゴリカルデータ | シンプル、論理的 | 偽のパターンを作成する可能性 |
| **高度な補完** | 重要な特徴、パターン | より正確 | 複雑、時間がかかる |

**Decision flowchart:**
**決定フローチャート:**
```
How much data is missing?
どれだけのデータが欠損していますか？

< 5% → Delete rows (safest)
       行を削除（最も安全）

5-20% → Consider filling
        埋めることを検討

> 50% in one column → Delete column
                      列を削除

Critical feature? → Advanced imputation
重要な特徴？      高度な補完
```

---

## 2. Duplicates | 重複

### What to Look For | 何を探すか

**Types of duplicates:**
**重複のタイプ:**

**Exact duplicates:**
**完全な重複:**
```
Company Name | Industry | Employee Count
ABC Corp     | Tech     | 500
ABC Corp     | Tech     | 500    ← Exact duplicate!
```

**Partial duplicates (tricky!):**
**部分的な重複（厄介！）:**
```
Company Name      | Industry | Employee Count
ABC Corporation   | Tech     | 500
ABC Corp          | Tech     | 500    ← Same company, different name!
ABC Corp.         | Tech     | 501    ← Slightly different data!
```

---

### How to Identify | 特定方法

**Visual inspection:**
**目視検査:**
- Sort by company name and look for repeats
  会社名でソートして繰り返しを探す
- Check for similar names with small variations
  小さな変化を持つ類似した名前を確認

**In Python/Pandas:**
```python
# Find exact duplicates
df.duplicated().sum()
# Shows count of duplicate rows

# View duplicate rows
df[df.duplicated(keep=False)]
# Shows all duplicate entries

# Check for duplicates in specific column
df[df.duplicated(subset=['Company Name'], keep=False)]
# Finds duplicates based on company name only
```

**Manual checks:**
- Are there two entries for the same company?
  同じ会社に2つのエントリがありますか？
- Does the total count seem too high?
  合計カウントが高すぎるように見えますか？
- Check known companies - do they appear once or multiple times?
  既知の企業を確認 - 1回または複数回表示されますか？

---

### Impact on ML | MLへの影響

**Why duplicates are problematic:**
**なぜ重複が問題なのか:**

❌ **Model learns the same example multiple times**
   モデルが同じ例を複数回学習する
   - Gives duplicate data more "weight"
   - 重複データに多くの「重み」を与える

❌ **Inflates dataset size artificially**
   データセットサイズを人為的に膨らませる
   - Makes you think you have more data than you do
   - 実際よりも多くのデータがあると思わせる

❌ **Distorts statistics and patterns**
   統計とパターンを歪める
   - Average, counts, percentages all wrong
   - 平均、カウント、パーセンテージがすべて間違っている

**Example:**
```
If "ABC Corp" appears 10 times but others appear once:
Model learns: "Tech companies with 500 employees are common!"
Reality: Only 1 such company, just duplicated data

「ABC Corp」が10回表示されるが他は1回の場合：
モデルは学習：「500人の従業員を持つテック企業は一般的！」
現実：そのような企業は1つだけ、重複データのみ
```

---

### Common Solutions | 一般的な解決策

**1. Remove exact duplicates:**
**1. 完全な重複を削除:**
```python
# Keep first occurrence, remove rest
df = df.drop_duplicates()

# Keep last occurrence
df = df.drop_duplicates(keep='last')
```
✅ **Always do this!** No reason to keep exact copies.
✅ **常にこれを行ってください！** 正確なコピーを保持する理由はありません。

---

**2. Handle partial duplicates:**
**2. 部分的な重複を処理:**

**Manual review:**
- Check if entries are truly the same company
  エントリが本当に同じ会社かどうかを確認
- Decide which record to keep (most complete? most recent?)
  どのレコードを保持するかを決定（最も完全？最新？）
- Standardize names first
  最初に名前を標準化

**Standardization example:**
**標準化の例:**
```
Before:
- ABC Corp
- ABC Corporation
- ABC Corp.

After (standardized):
- ABC Corp
- ABC Corp
- ABC Corp

Then remove duplicates!
その後重複を削除！
```

---

## 3. Inconsistencies | 不整合

### What to Look For | 何を探すか

**Common inconsistency types:**
**一般的な不整合タイプ:**

**Format inconsistencies:**
**フォーマットの不整合:**
```
Date formats:
2024-01-15
01/15/2024
January 15, 2024
15-Jan-24       ← All the same date, different formats!
```

**Capitalization/spelling:**
**大文字化/スペル:**
```
Industry:
Tech
tech
Technology
Information Technology  ← All mean the same thing!
```

**Units:**
**単位:**
```
Employee Count:
500
500 employees
0.5K
Five hundred     ← Same number, different representations!
```

**Abbreviations:**
**略語:**
```
Location:
Tokyo
Tokyo, Japan
Tokyo, JP
TYO
東京            ← All the same city!
```

---

### How to Identify | 特定方法

**Check unique values:**
**一意の値を確認:**
```python
# See all unique values in a column
df['Industry'].unique()
# Output: ['Tech', 'tech', 'Technology', 'Finance', ...]

# Count occurrences of each unique value
df['Industry'].value_counts()
# Shows frequency of each variation
```

**Visual patterns to spot:**
**見つけるべき視覚的パターン:**
- Similar values with small differences
  小さな違いのある類似の値
- Same concept, different words
  同じ概念、異なる単語
- Mixed languages (English/Japanese)
  混合言語（英語/日本語）
- Different date/number formats
  異なる日付/数値フォーマット

**Manual checks:**
**手動チェック:**
- Sort column alphabetically - similar values group together
  列をアルファベット順にソート - 類似の値がグループ化される
- Check for typos or misspellings
  誤字やスペルミスを確認
- Look for variations of the same thing
  同じものの変種を探す

---

### Impact on ML | MLへの影響

**Why inconsistencies are problematic:**
**なぜ不整合が問題なのか:**

❌ **Model treats same thing as different**
   モデルが同じものを異なるものとして扱う
   - "Tech" and "tech" seen as two separate industries!
   - 「Tech」と「tech」が2つの別々の業界として見られる！

❌ **Splits data unnecessarily**
   データを不必要に分割
   - Instead of 100 "Tech" companies, you have 50 "Tech" + 30 "tech" + 20 "Technology"
   - 100の「Tech」企業の代わりに、50の「Tech」+ 30の「tech」+ 20の「Technology」がある

❌ **Model can't learn patterns correctly**
   モデルがパターンを正しく学習できない
   - Dilutes signal across multiple categories
   - 複数のカテゴリーにわたってシグナルを希釈する

**Example:**
```
Inconsistent data:
- "Tokyo" companies: 30
- "東京" companies: 25
- "Tokyo, Japan" companies: 20

Model thinks: Three different locations!
Reality: All Tokyo! Should be 75 companies total.

不整合データ：
- 「Tokyo」企業：30
- 「東京」企業：25
- 「Tokyo, Japan」企業：20

モデルは考える：3つの異なる場所！
現実：すべて東京！合計75企業であるべき。
```

---

### Common Solutions | 一般的な解決策

**1. Standardize text:**
**1. テキストを標準化:**
```python
# Convert to lowercase
df['Industry'] = df['Industry'].str.lower()

# Remove extra spaces
df['Industry'] = df['Industry'].str.strip()

# Standardize abbreviations
df['Industry'] = df['Industry'].replace({
    'tech': 'Technology',
    'info tech': 'Technology',
    'IT': 'Technology'
})
```

---

**2. Standardize formats:**
**2. フォーマットを標準化:**
```python
# Convert dates to standard format
df['Date'] = pd.to_datetime(df['Date'])

# Standardize numbers (remove commas, text)
df['Employee Count'] = df['Employee Count'].str.replace(',', '')
df['Employee Count'] = pd.to_numeric(df['Employee Count'])
```

---

**3. Create mapping rules:**
**3. マッピングルールを作成:**
```python
# Map variations to standard values
industry_mapping = {
    'tech': 'Technology',
    'technology': 'Technology',
    'information technology': 'Technology',
    'IT': 'Technology',
    'fin': 'Finance',
    'financial services': 'Finance'
}

df['Industry'] = df['Industry'].map(industry_mapping)
```

**Best practice:**
**ベストプラクティス:**
✅ Choose ONE standard format for each field
  各フィールドに1つの標準フォーマットを選択
✅ Document your standardization rules
  標準化ルールを文書化
✅ Apply consistently across entire dataset
  データセット全体に一貫して適用

---

## 4. Invalid Values | 無効な値

### What to Look For | 何を探すか

**Values that don't make logical sense:**
**論理的に意味をなさない値:**

**Impossible numbers:**
**不可能な数値:**
```
Age: -5 years          ← Can't be negative!
Employee Count: 0      ← Company must have at least 1 employee
Salary: $0            ← Unlikely for full-time job
Temperature: 500°C     ← Too hot to be real
```

**Out-of-range values:**
**範囲外の値:**
```
Expected: 0-100
Actual: 150           ← Outside valid range!

Month: 13             ← Only 12 months!
Percentage: 150%      ← Can't exceed 100% (usually)
```

**Wrong data type:**
**間違ったデータタイプ:**
```
Expected: Number
Actual: "Five hundred"  ← Text instead of number!

Expected: Date
Actual: "Next week"     ← Vague, not specific date!
```

**Categorical mismatches:**
**カテゴリカルミスマッチ:**
```
Industry options: Tech, Finance, Healthcare, Retail
Actual value: "Purple"          ← Not a valid industry!
Actual value: "123"             ← Should be text, not number
```

---

### How to Identify | 特定方法

**Statistical checks:**
**統計チェック:**
```python
# Check min/max values
df['Employee Count'].min()  # Should be > 0
df['Employee Count'].max()  # Should be reasonable

# View summary statistics
df.describe()
# Look for suspicious min/max values

# Check for negative values where they shouldn't exist
(df['Salary'] < 0).sum()
```

**Visual inspection:**
**目視検査:**
- Sort column by value - extremes appear at top/bottom
  値で列をソート - 極端な値が上/下に表示される
- Look for outliers (values very different from others)
  外れ値を探す（他とは非常に異なる値）
- Check if values match expected categories
  値が期待されるカテゴリーと一致するか確認

**Domain knowledge:**
**ドメイン知識:**
- Does the value make sense in real world?
  その値は現実世界で意味をなしますか？
- Is it plausible for this type of data?
  このタイプのデータに対してもっともらしいですか？
- Could it be a data entry error?
  データ入力エラーの可能性はありますか？

---

### Impact on ML | MLへの影響

**Why invalid values are problematic:**
**なぜ無効な値が問題なのか:**

❌ **Model learns from incorrect data**
   モデルが誤ったデータから学習
   - Garbage in = Garbage out!
   - ゴミを入れればゴミが出る！

❌ **Skews statistics and patterns**
   統計とパターンを歪める
   - One huge outlier changes the average dramatically
   - 1つの巨大な外れ値が平均を劇的に変える

❌ **Leads to wrong predictions**
   間違った予測につながる
   - Model thinks impossible values are normal
   - モデルが不可能な値を正常と考える

**Example:**
```
Company employee counts: 50, 100, 200, 150, 10000000
                                              ↑
                                         Typo! Should be 100?

Average with error: 2,000,100 employees
Average without error: 125 employees

Model learns: "Average company has 2M employees!"
Reality: Average is actually ~125

エラーありの平均：2,000,100人の従業員
エラーなしの平均：125人の従業員

モデルは学習：「平均的な企業は200万人の従業員を持つ！」
現実：平均は実際には約125
```

---

### Common Solutions | 一般的な解決策

| Issue | Solution | Example |
|-------|----------|---------|
| **Negative values** | Replace with null or remove | Age: -5 → null |
| **Impossible values** | Remove or fix if known | Month: 13 → null |
| **Extreme outliers** | Investigate, then cap or remove | Salary: $99,999,999 → remove |
| **Wrong type** | Convert or remove | "Five" → 5 or remove |
| **Invalid categories** | Map to valid category or "Other" | Industry: "Purple" → "Other" |

| 問題 | 解決策 | 例 |
|------|--------|-----|
| **負の値** | nullで置き換えるか削除 | 年齢：-5 → null |
| **不可能な値** | 削除または判明している場合は修正 | 月：13 → null |
| **極端な外れ値** | 調査してから上限を設定または削除 | 給与：$99,999,999 → 削除 |
| **間違ったタイプ** | 変換または削除 | 「Five」→ 5 または削除 |
| **無効なカテゴリー** | 有効なカテゴリーまたは「その他」にマップ | 業界：「Purple」→「その他」|

**Decision process:**
**決定プロセス:**
```
1. Can you fix it with certainty?
   確実に修正できますか？
   YES → Fix it (e.g., "10OO" → "1000")
   NO → Go to step 2

2. Is it a critical value?
   それは重要な値ですか？
   YES → Investigate further
   NO → Remove the value/row

3. Is it truly impossible?
   本当に不可能ですか？
   YES → Remove
   NO → Keep but flag for review
```

---

## 5. Outdated Data | 古いデータ

### What to Look For | 何を探すか

**Time-sensitive information that's no longer accurate:**
**もはや正確ではない時間に敏感な情報:**

**Old company information:**
**古い企業情報:**
```
Company: Blockbuster
Status: Active        ← Outdated! Company closed in 2013
Revenue: $5B         ← From 2004, not current
```

**Changed attributes:**
**変更された属性:**
```
Company: ABC Corp
Industry: Tech (data from 2010)
Reality: Company pivoted to Healthcare in 2020
```

**Obsolete categories:**
**時代遅れのカテゴリー:**
```
Job categories from 2005:
- "Webmaster"        ← Rarely used title now
- "Blackberry Support" ← Technology obsolete
```

**Timestamp issues:**
**タイムスタンプの問題:**
```
Last updated: 2018-01-01
Current date: 2025-11-01  ← Data is 7 years old!
```

---

### How to Identify | 特定方法

**Check dates:**
**日付を確認:**
```python
# Check when data was collected
df['Updated_Date'].max()  # Most recent update
df['Updated_Date'].min()  # Oldest update

# Calculate age of data
from datetime import datetime
current_date = datetime.now()
df['Data_Age_Days'] = (current_date - df['Updated_Date']).dt.days

# Find old records
old_data = df[df['Data_Age_Days'] > 365]  # Older than 1 year
```

**Domain checks:**
**ドメインチェック:**
- Are companies still in business?
  企業はまだ営業していますか？
- Have industries/categories changed?
  業界/カテゴリーは変更されましたか？
- Is the information still relevant?
  情報はまだ関連がありますか？

**Cross-reference:**
**クロスリファレンス:**
- Check recent sources for comparison
  比較のために最近のソースを確認
- Verify key facts haven't changed
  主要な事実が変更されていないことを確認
- Look for known company changes (mergers, closures)
  既知の企業変更を探す（合併、閉鎖）

---

### Impact on ML | MLへの影響

**Why outdated data is problematic:**
**なぜ古いデータが問題なのか:**

❌ **Model learns from the past, not present**
   モデルが現在ではなく過去から学習
   - Predictions based on old patterns that no longer apply
   - もはや適用されない古いパターンに基づく予測

❌ **Misses recent trends**
   最近のトレンドを見逃す
   - Can't predict what's happening NOW
   - 今起こっていることを予測できない

❌ **Makes irrelevant recommendations**
   無関係な推薦を行う
   - Recommends companies that closed
   - 閉鎖した企業を推薦
   - Suggests obsolete jobs
   - 時代遅れの仕事を提案

**Example:**
```
Job hunting scenario:

Old data (2019): Top skill = "Flash programming"
Current reality (2025): Flash is obsolete, nobody uses it

Model trained on old data: "Learn Flash to get a job!"
Reality: Flash skills are worthless now

古いデータ（2019）：トップスキル =「Flash プログラミング」
現在の現実（2025）：Flash は時代遅れ、誰も使用していない

古いデータで訓練されたモデル：「仕事を得るためにFlashを学ぶ！」
現実：Flash スキルは今では価値がない
```

---

### Common Solutions | 一般的な解決策

**1. Update the data:**
**1. データを更新:**
- Re-scrape from current sources
  現在のソースから再スクレイプ
- Use APIs that provide real-time data
  リアルタイムデータを提供するAPIを使用
- Verify information is current
  情報が最新であることを確認

**2. Set data freshness rules:**
**2. データ鮮度ルールを設定:**
```python
# Remove data older than 1 year
cutoff_date = pd.Timestamp.now() - pd.DateOffset(years=1)
df_fresh = df[df['Updated_Date'] >= cutoff_date]

# Flag old data instead of removing
df['Is_Fresh'] = df['Updated_Date'] >= cutoff_date
```

**3. Prioritize recent data:**
**3. 最近のデータを優先:**
- Give more weight to recent records
  最近のレコードにより多くの重みを与える
- Use time-based filtering
  時間ベースのフィルタリングを使用
- Keep historical context but prioritize new
  履歴コンテキストを保持するが新しいものを優先

**Best practices:**
**ベストプラクティス:**
✅ Always note when data was collected
  データがいつ収集されたかを常にメモ
✅ Set expiration dates for time-sensitive data
  時間に敏感なデータの有効期限を設定
✅ Regular updates for changing information
  変化する情報の定期的な更新
✅ Document data vintage in your analysis
  分析でデータのビンテージを文書化

---

## Data Quality Checklist Template | データ品質チェックリストテンプレート

**Use this before training your ML model!**
**MLモデルを訓練する前にこれを使用してください！**

### ✅ Pre-Training Checklist | 訓練前チェックリスト

```
□ MISSING VALUES
  欠損値
  □ Identified missing data
    欠損データを特定
  □ Calculated percentage missing per column
    列ごとの欠損率を計算
  □ Decided on solution (delete/fill)
    解決策を決定（削除/埋める）
  □ Applied solution consistently
    一貫して解決策を適用

□ DUPLICATES
  重複
  □ Checked for exact duplicates
    完全な重複を確認
  □ Removed exact duplicates
    完全な重複を削除
  □ Looked for partial duplicates
    部分的な重複を探した
  □ Standardized names/formats
    名前/フォーマットを標準化
  □ Removed partial duplicates
    部分的な重複を削除

□ INCONSISTENCIES
  不整合
  □ Checked unique values in each column
    各列の一意の値を確認
  □ Standardized text (lowercase, spacing)
    テキストを標準化（小文字、スペース）
  □ Standardized formats (dates, numbers)
    フォーマットを標準化（日付、数値）
  □ Created mapping for variations
    変種のマッピングを作成
  □ Applied standardization
    標準化を適用

□ INVALID VALUES
  無効な値
  □ Checked min/max values
    最小/最大値を確認
  □ Identified impossible values
    不可能な値を特定
  □ Checked data types
    データタイプを確認
  □ Verified categories are valid
    カテゴリーが有効であることを確認
  □ Removed/fixed invalid values
    無効な値を削除/修正

□ OUTDATED DATA
  古いデータ
  □ Checked data collection dates
    データ収集日を確認
  □ Verified information is current
    情報が最新であることを確認
  □ Removed/updated old records
    古いレコードを削除/更新
  □ Documented data vintage
    データのビンテージを文書化

□ FINAL VALIDATION
  最終検証
  □ Dataset has no errors
    データセットにエラーがない
  □ All columns have valid data
    すべての列に有効なデータがある
  □ Data is consistent and standardized
    データが一貫性があり標準化されている
  □ Ready for ML training!
    ML訓練の準備完了！
```

---

## Quick Reference Table | クイックリファレンステーブル

| Issue | Quick Test | Quick Fix | Critical Level |
|-------|-----------|-----------|----------------|
| **Missing** | `df.isnull().sum()` | Delete or fill | High if >20% |
| **Duplicates** | `df.duplicated().sum()` | `drop_duplicates()` | High |
| **Inconsistencies** | `df['col'].unique()` | Standardize | Medium-High |
| **Invalid** | `df.describe()` | Remove/fix | High |
| **Outdated** | Check dates | Update data | Medium |

| 問題 | クイックテスト | クイック修正 | 重要度 |
|------|--------------|------------|--------|
| **欠損** | `df.isnull().sum()` | 削除または埋める | >20%の場合高 |
| **重複** | `df.duplicated().sum()` | `drop_duplicates()` | 高 |
| **不整合** | `df['col'].unique()` | 標準化 | 中-高 |
| **無効** | `df.describe()` | 削除/修正 | 高 |
| **古い** | 日付を確認 | データを更新 | 中 |

---

## Remember | 覚えておいてください

**Good data is the foundation of good ML!**
**良いデータは良いMLの基礎です！**

No amount of advanced algorithms can fix poor quality data.
どんなに高度なアルゴリズムも低品質データを修正できません。

**Time spent on data quality = Time saved on debugging predictions**
**データ品質に費やす時間 = 予測のデバッグで節約する時間**

---

*Created for ML-101: Week 2*
*ML-101用に作成：第2週*
