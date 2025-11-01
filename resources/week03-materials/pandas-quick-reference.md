# Pandas Quick Reference
# Pandasクイックリファレンス

**Week 3 Reference Material | 第3週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## What is Pandas? | Pandasとは？

**Pandas = Python library for working with data tables**
**Pandas = データテーブルを操作するためのPythonライブラリ**

Think of it like Excel, but more powerful and programmable!
Excelのようなものですが、より強力でプログラム可能です！

**Why use Pandas?**
**なぜPandasを使用するのか？**

✅ Handle large datasets (millions of rows)
   大規模なデータセットを処理（数百万行）

✅ Clean and prepare data for ML
   MLのためにデータをクリーンアップして準備

✅ Analyze data quickly
   データを素早く分析

✅ Industry standard for data science
   データサイエンスの業界標準

---

## Installation & Import | インストールとインポート

**Install Pandas (in terminal/command prompt):**
**Pandasをインストール（ターミナル/コマンドプロンプトで）:**

```bash
pip install pandas
```

**Import in your Python code:**
**Pythonコードでインポート:**

```python
import pandas as pd

# 'pd' is a standard shorthand for pandas
# 'pd'はpandasの標準的な略語です
```

**Check version:**
**バージョンを確認:**

```python
print(pd.__version__)
# Output: 2.0.0 (or your installed version)
```

---

## DataFrames | データフレーム

**DataFrame = Table of data (rows and columns)**
**データフレーム = データのテーブル（行と列）**

```
Example DataFrame:
例のデータフレーム:

     Company Name    | Industry   | Employees | Revenue
     -------------------------------------------------------
     ABC Corp        | Technology | 500       | 10000000
     XYZ Inc         | Finance    | 250       | 5000000
     LMN Ltd         | Healthcare | 1000      | 20000000
```

---

## Creating DataFrames | データフレームの作成

### Method 1: From Dictionary | 方法1：辞書から

```python
import pandas as pd

# Create data dictionary
data = {
    'Company': ['ABC Corp', 'XYZ Inc', 'LMN Ltd'],
    'Industry': ['Technology', 'Finance', 'Healthcare'],
    'Employees': [500, 250, 1000],
    'Revenue': [10000000, 5000000, 20000000]
}

# Convert to DataFrame
df = pd.DataFrame(data)

print(df)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 1   XYZ Inc     Finance        250   5000000
# 2   LMN Ltd  Healthcare       1000  20000000
```

---

### Method 2: From Lists | 方法2：リストから

```python
# Create data as list of lists
data = [
    ['ABC Corp', 'Technology', 500, 10000000],
    ['XYZ Inc', 'Finance', 250, 5000000],
    ['LMN Ltd', 'Healthcare', 1000, 20000000]
]

# Specify column names
columns = ['Company', 'Industry', 'Employees', 'Revenue']

# Convert to DataFrame
df = pd.DataFrame(data, columns=columns)

print(df)
# Same output as Method 1
```

---

### Method 3: From CSV File | 方法3：CSVファイルから

**Most common method for real projects!**
**実際のプロジェクトで最も一般的な方法！**

```python
# Read CSV file
df = pd.read_csv('companies.csv')

print(df)

# Read CSV with Japanese encoding
df = pd.read_csv('companies.csv', encoding='utf-8')

# Read CSV from URL
url = 'https://example.com/data.csv'
df = pd.read_csv(url)
```

**CSV file example (companies.csv):**
**CSVファイルの例（companies.csv）:**

```csv
Company,Industry,Employees,Revenue
ABC Corp,Technology,500,10000000
XYZ Inc,Finance,250,5000000
LMN Ltd,Healthcare,1000,20000000
```

---

## Basic DataFrame Information | 基本的なデータフレーム情報

### View First/Last Rows | 最初/最後の行を表示

```python
# View first 5 rows (default)
print(df.head())

# View first 3 rows
print(df.head(3))

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 1   XYZ Inc     Finance        250   5000000
# 2   LMN Ltd  Healthcare       1000  20000000
```

```python
# View last 5 rows (default)
print(df.tail())

# View last 2 rows
print(df.tail(2))

# Output:
#    Company     Industry  Employees   Revenue
# 1   XYZ Inc     Finance        250   5000000
# 2   LMN Ltd  Healthcare       1000  20000000
```

**Why use head()?**
**なぜhead()を使用するのか？**
- Quick preview of large datasets
  大規模なデータセットのクイックプレビュー
- Verify data loaded correctly
  データが正しくロードされたことを確認
- See column names and sample data
  列名とサンプルデータを表示

---

### Get DataFrame Shape | データフレームの形状を取得

```python
# Get number of rows and columns
print(df.shape)
# Output: (3, 4)
# 3 rows, 4 columns

rows, columns = df.shape
print(f"Rows: {rows}, Columns: {columns}")
# Output: Rows: 3, Columns: 4
```

---

### Get Column Names | 列名を取得

```python
# Get all column names
print(df.columns)
# Output: Index(['Company', 'Industry', 'Employees', 'Revenue'], dtype='object')

# As a list
column_list = df.columns.tolist()
print(column_list)
# Output: ['Company', 'Industry', 'Employees', 'Revenue']
```

---

### Get Data Types | データ型を取得

```python
# Check data types of each column
print(df.dtypes)

# Output:
# Company       object
# Industry      object
# Employees      int64
# Revenue        int64
# dtype: object

# object = text/string
# int64 = integer number
# float64 = decimal number
```

---

### Get Summary Information | 要約情報を取得

```python
# Comprehensive information about DataFrame
df.info()

# Output:
# <class 'pandas.core.frame.DataFrame'>
# RangeIndex: 3 entries, 0 to 2
# Data columns (total 4 columns):
#  #   Column     Non-Null Count  Dtype
# ---  ------     --------------  -----
#  0   Company    3 non-null      object
#  1   Industry   3 non-null      object
#  2   Employees  3 non-null      int64
#  3   Revenue    3 non-null      int64
# dtypes: int64(2), object(2)
# memory usage: 224.0+ bytes
```

**info() shows:**
**info()が表示:**
- Number of rows
  行数
- Number of columns
  列数
- Non-null count (missing data check)
  非null数（欠損データチェック）
- Data types
  データ型
- Memory usage
  メモリ使用量

---

### Get Statistical Summary | 統計要約を取得

```python
# Statistical summary of numeric columns
print(df.describe())

# Output:
#        Employees       Revenue
# count    3.000000  3.000000e+00
# mean   583.333333  1.166667e+07
# std    380.393965  7.637626e+06
# min    250.000000  5.000000e+06
# 25%    375.000000  7.500000e+06
# 50%    500.000000  1.000000e+07
# 75%    750.000000  1.500000e+07
# max   1000.000000  2.000000e+07
```

**describe() provides:**
**describe()が提供:**
- **count** - Number of non-null values | 非null値の数
- **mean** - Average | 平均
- **std** - Standard deviation | 標準偏差
- **min** - Minimum value | 最小値
- **25%** - First quartile | 第1四分位数
- **50%** - Median (middle value) | 中央値
- **75%** - Third quartile | 第3四分位数
- **max** - Maximum value | 最大値

---

## Selecting Data | データの選択

### Selecting Columns | 列の選択

**Select single column:**
**単一列を選択:**

```python
# Returns a Series (1D data)
companies = df['Company']
print(companies)

# Output:
# 0    ABC Corp
# 1     XYZ Inc
# 2     LMN Ltd
# Name: Company, dtype: object

# Also works:
companies = df.Company
```

**Select multiple columns:**
**複数列を選択:**

```python
# Returns a DataFrame (2D data)
subset = df[['Company', 'Industry']]
print(subset)

# Output:
#     Company     Industry
# 0  ABC Corp  Technology
# 1   XYZ Inc     Finance
# 2   LMN Ltd  Healthcare
```

**Note the double brackets [[ ]]!**
**二重括弧[[ ]]に注意！**

---

### Selecting Rows | 行の選択

**Select by index (position):**
**インデックス（位置）で選択:**

```python
# Select first row (index 0)
first_row = df.iloc[0]
print(first_row)

# Output:
# Company       ABC Corp
# Industry    Technology
# Employees          500
# Revenue       10000000
# Name: 0, dtype: object

# Select multiple rows
first_two = df.iloc[0:2]  # Rows 0 and 1
print(first_two)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 1   XYZ Inc     Finance        250   5000000
```

**Select by label:**
**ラベルで選択:**

```python
# Using loc (label-based)
row = df.loc[0]  # Same as iloc for default index

# More useful with custom index
df_indexed = df.set_index('Company')
row = df_indexed.loc['ABC Corp']
print(row)

# Output:
# Industry    Technology
# Employees          500
# Revenue       10000000
# Name: ABC Corp, dtype: object
```

---

### Selecting Specific Cells | 特定のセルの選択

```python
# Select row 0, column 'Company'
value = df.loc[0, 'Company']
print(value)
# Output: ABC Corp

# Select row 1, column 'Employees'
value = df.loc[1, 'Employees']
print(value)
# Output: 250

# Select multiple cells
subset = df.loc[0:1, ['Company', 'Industry']]
print(subset)

# Output:
#     Company     Industry
# 0  ABC Corp  Technology
# 1   XYZ Inc     Finance
```

---

## Filtering Data | データのフィルタリング

**Filter rows based on conditions:**
**条件に基づいて行をフィルタリング:**

### Simple Filters | シンプルなフィルター

```python
# Companies with more than 300 employees
large_companies = df[df['Employees'] > 300]
print(large_companies)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 2   LMN Ltd  Healthcare       1000  20000000
```

```python
# Companies in Technology industry
tech_companies = df[df['Industry'] == 'Technology']
print(tech_companies)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
```

```python
# Companies with revenue less than 10M
smaller_revenue = df[df['Revenue'] < 10000000]
print(smaller_revenue)

# Output:
#    Company  Industry  Employees  Revenue
# 1  XYZ Inc   Finance        250  5000000
```

---

### Multiple Conditions | 複数条件

**AND condition (both must be true):**
**AND条件（両方が真である必要がある）:**

```python
# Technology companies with > 300 employees
filtered = df[(df['Industry'] == 'Technology') & (df['Employees'] > 300)]
print(filtered)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
```

**OR condition (at least one must be true):**
**OR条件（少なくとも1つが真である必要がある）:**

```python
# Technology OR Healthcare companies
filtered = df[(df['Industry'] == 'Technology') | (df['Industry'] == 'Healthcare')]
print(filtered)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 2   LMN Ltd  Healthcare       1000  20000000
```

**Important:** Use `&` for AND, `|` for OR, and always use parentheses `()` around each condition!
**重要:** ANDには`&`、ORには`|`を使用し、各条件の周りには必ず括弧`()`を使用！

---

### Filter by Multiple Values | 複数の値でフィルタリング

```python
# Companies in Technology OR Finance
industries = ['Technology', 'Finance']
filtered = df[df['Industry'].isin(industries)]
print(filtered)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
# 1   XYZ Inc     Finance        250   5000000
```

---

### Filter by Text Contains | テキスト含有でフィルタリング

```python
# Companies with 'Corp' in name
filtered = df[df['Company'].str.contains('Corp')]
print(filtered)

# Output:
#    Company     Industry  Employees   Revenue
# 0  ABC Corp  Technology        500  10000000
```

---

## Adding & Modifying Columns | 列の追加と変更

### Add New Column | 新しい列を追加

```python
# Add constant value column
df['Country'] = 'Japan'
print(df)

# Output:
#    Company     Industry  Employees   Revenue Country
# 0  ABC Corp  Technology        500  10000000   Japan
# 1   XYZ Inc     Finance        250   5000000   Japan
# 2   LMN Ltd  Healthcare       1000  20000000   Japan
```

```python
# Add calculated column
df['Revenue_per_Employee'] = df['Revenue'] / df['Employees']
print(df[['Company', 'Revenue_per_Employee']])

# Output:
#     Company  Revenue_per_Employee
# 0  ABC Corp               20000.0
# 1   XYZ Inc               20000.0
# 2   LMN Ltd               20000.0
```

---

### Modify Existing Column | 既存の列を変更

```python
# Update all values
df['Employees'] = df['Employees'] * 2
print(df[['Company', 'Employees']])

# Output:
#     Company  Employees
# 0  ABC Corp       1000
# 1   XYZ Inc        500
# 2   LMN Ltd       2000
```

```python
# Update based on condition
df.loc[df['Industry'] == 'Technology', 'Employees'] = 600
print(df[['Company', 'Industry', 'Employees']])

# Output:
#     Company     Industry  Employees
# 0  ABC Corp  Technology        600
# 1   XYZ Inc     Finance        500
# 2   LMN Ltd  Healthcare       2000
```

---

### Rename Columns | 列名の変更

```python
# Rename specific columns
df = df.rename(columns={
    'Company': 'Company_Name',
    'Employees': 'Employee_Count'
})
print(df.columns)

# Output:
# Index(['Company_Name', 'Industry', 'Employee_Count', 'Revenue'], dtype='object')
```

---

## Sorting Data | データのソート

### Sort by Single Column | 単一列でソート

```python
# Sort by Employees (ascending - low to high)
df_sorted = df.sort_values('Employees')
print(df_sorted)

# Output:
#    Company  Industry  Employees   Revenue
# 1  XYZ Inc   Finance        250   5000000
# 0  ABC Corp  Technology     500  10000000
# 2  LMN Ltd  Healthcare    1000  20000000
```

```python
# Sort by Revenue (descending - high to low)
df_sorted = df.sort_values('Revenue', ascending=False)
print(df_sorted)

# Output:
#    Company  Industry  Employees   Revenue
# 2  LMN Ltd  Healthcare    1000  20000000
# 0  ABC Corp  Technology     500  10000000
# 1  XYZ Inc   Finance        250   5000000
```

---

### Sort by Multiple Columns | 複数列でソート

```python
# Sort by Industry, then by Employees
df_sorted = df.sort_values(['Industry', 'Employees'])
print(df_sorted)

# Sort by Industry (ascending), Employees (descending)
df_sorted = df.sort_values(['Industry', 'Employees'], ascending=[True, False])
print(df_sorted)
```

---

## Handling Missing Data | 欠損データの処理

### Check for Missing Data | 欠損データの確認

```python
# Count missing values per column
print(df.isnull().sum())

# Output:
# Company      0
# Industry     0
# Employees    1
# Revenue      0
# dtype: int64

# Check if any missing values exist
print(df.isnull().any())

# Output:
# Company      False
# Industry     False
# Employees     True
# Revenue      False
# dtype: bool
```

---

### Remove Missing Data | 欠損データの削除

```python
# Remove rows with ANY missing values
df_clean = df.dropna()

# Remove rows where specific column is missing
df_clean = df.dropna(subset=['Employees'])

# Remove columns with ANY missing values
df_clean = df.dropna(axis=1)
```

---

### Fill Missing Data | 欠損データの埋め込み

```python
# Fill with specific value
df_filled = df.fillna(0)

# Fill with column mean
df['Employees'] = df['Employees'].fillna(df['Employees'].mean())

# Fill with column median
df['Revenue'] = df['Revenue'].fillna(df['Revenue'].median())

# Fill with most common value (mode)
df['Industry'] = df['Industry'].fillna(df['Industry'].mode()[0])
```

---

## Aggregation & Grouping | 集計とグループ化

### Basic Aggregations | 基本的な集計

```python
# Calculate statistics
print(df['Employees'].mean())      # Average
print(df['Employees'].median())    # Median
print(df['Employees'].sum())       # Total
print(df['Employees'].min())       # Minimum
print(df['Employees'].max())       # Maximum
print(df['Employees'].std())       # Standard deviation
print(df['Employees'].count())     # Count
```

---

### Group By | グループ化

```python
# Group by Industry and calculate mean
grouped = df.groupby('Industry')['Employees'].mean()
print(grouped)

# Output:
# Industry
# Finance       250.0
# Healthcare   1000.0
# Technology    500.0
# Name: Employees, dtype: float64
```

```python
# Multiple aggregations
grouped = df.groupby('Industry').agg({
    'Employees': ['mean', 'sum'],
    'Revenue': ['mean', 'max']
})
print(grouped)

# Output:
#           Employees          Revenue
#                mean   sum       mean        max
# Industry
# Finance         250   250    5000000    5000000
# Healthcare     1000  1000   20000000   20000000
# Technology      500   500   10000000   10000000
```

---

## Saving Data | データの保存

### Save to CSV | CSVに保存

```python
# Save DataFrame to CSV file
df.to_csv('output.csv', index=False)

# Save with Japanese encoding
df.to_csv('output.csv', index=False, encoding='utf-8-sig')

# Save only specific columns
df[['Company', 'Industry']].to_csv('companies_only.csv', index=False)
```

**index=False** prevents row numbers from being saved
**index=False**は行番号が保存されるのを防ぎます

---

### Save to Excel | Excelに保存

```python
# Save to Excel (requires openpyxl library)
df.to_excel('output.xlsx', index=False)

# Save to specific sheet
df.to_excel('output.xlsx', sheet_name='Companies', index=False)
```

---

## Common Use Cases | 一般的な使用例

### Example 1: Analyzing Company Data | 例1：企業データの分析

```python
import pandas as pd

# Read company data
df = pd.read_csv('companies.csv')

# Basic exploration
print("Dataset shape:", df.shape)
print("\nFirst 5 companies:")
print(df.head())

print("\nSummary statistics:")
print(df.describe())

# Find largest companies
largest = df.nlargest(5, 'Employees')
print("\nTop 5 largest companies:")
print(largest[['Company', 'Employees']])

# Calculate average by industry
avg_by_industry = df.groupby('Industry')['Employees'].mean()
print("\nAverage employees by industry:")
print(avg_by_industry)

# Filter and save
tech_companies = df[df['Industry'] == 'Technology']
tech_companies.to_csv('tech_companies.csv', index=False)
print("\nSaved Technology companies to tech_companies.csv")
```

---

### Example 2: Data Cleaning Pipeline | 例2：データクリーニングパイプライン

```python
import pandas as pd

# Read data
df = pd.read_csv('raw_data.csv')

print("Original shape:", df.shape)

# Step 1: Remove duplicates
df = df.drop_duplicates()
print("After removing duplicates:", df.shape)

# Step 2: Handle missing values
print("\nMissing values:")
print(df.isnull().sum())

df = df.dropna(subset=['Company', 'Industry'])  # Remove if critical fields missing
df['Employees'] = df['Employees'].fillna(df['Employees'].median())  # Fill numeric

# Step 3: Standardize text
df['Industry'] = df['Industry'].str.strip()  # Remove spaces
df['Industry'] = df['Industry'].str.lower()  # Lowercase

# Step 4: Remove invalid values
df = df[df['Employees'] > 0]  # Remove non-positive values
df = df[df['Revenue'] > 0]

# Step 5: Add calculated columns
df['Revenue_per_Employee'] = df['Revenue'] / df['Employees']

# Step 6: Save clean data
df.to_csv('clean_data.csv', index=False)
print("\nCleaned data saved!")
print("Final shape:", df.shape)
```

---

## Quick Reference Table | クイックリファレンステーブル

| Operation | Code | Purpose |
|-----------|------|---------|
| **Read CSV** | `pd.read_csv('file.csv')` | Load CSV file |
| **View data** | `df.head()` | First 5 rows |
| **Shape** | `df.shape` | (rows, columns) |
| **Info** | `df.info()` | Data types, missing values |
| **Summary** | `df.describe()` | Statistics |
| **Select column** | `df['column']` | Get one column |
| **Select columns** | `df[['col1', 'col2']]` | Get multiple columns |
| **Filter** | `df[df['col'] > 10]` | Filter by condition |
| **Sort** | `df.sort_values('col')` | Sort by column |
| **Group by** | `df.groupby('col').mean()` | Aggregate by group |
| **Missing count** | `df.isnull().sum()` | Count missing values |
| **Drop missing** | `df.dropna()` | Remove missing rows |
| **Fill missing** | `df.fillna(0)` | Replace missing values |
| **Save CSV** | `df.to_csv('file.csv')` | Save to CSV |

| 操作 | コード | 目的 |
|------|--------|------|
| **CSV読み込み** | `pd.read_csv('file.csv')` | CSVファイルをロード |
| **データ表示** | `df.head()` | 最初の5行 |
| **形状** | `df.shape` | （行、列） |
| **情報** | `df.info()` | データ型、欠損値 |
| **要約** | `df.describe()` | 統計 |
| **列選択** | `df['列']` | 1つの列を取得 |
| **複数列選択** | `df[['列1', '列2']]` | 複数の列を取得 |
| **フィルター** | `df[df['列'] > 10]` | 条件でフィルタリング |
| **ソート** | `df.sort_values('列')` | 列でソート |
| **グループ化** | `df.groupby('列').mean()` | グループで集計 |
| **欠損カウント** | `df.isnull().sum()` | 欠損値をカウント |
| **欠損削除** | `df.dropna()` | 欠損行を削除 |
| **欠損埋め** | `df.fillna(0)` | 欠損値を置換 |
| **CSV保存** | `df.to_csv('file.csv')` | CSVに保存 |

---

## Tips for Success | 成功のヒント

✅ **Always check your data first** - Use `head()`, `info()`, `describe()`
   常に最初にデータを確認 - `head()`、`info()`、`describe()`を使用

✅ **Check for missing values** - Use `isnull().sum()` early
   欠損値を確認 - 早めに`isnull().sum()`を使用

✅ **Use meaningful variable names** - `tech_df` better than `df2`
   意味のある変数名を使用 - `tech_df`は`df2`より良い

✅ **Save intermediate results** - Don't lose your cleaned data!
   中間結果を保存 - クリーンなデータを失わない！

✅ **Print often** - Verify each step works as expected
   頻繁に印刷 - 各ステップが期待通りに機能することを確認

✅ **Start simple** - One filter/operation at a time
   シンプルに始める - 一度に1つのフィルター/操作

---

## Common Errors & Solutions | 一般的なエラーと解決策

### Error 1: KeyError
```python
# ❌ Error:
df['Employes']  # Typo in column name

# ✅ Solution:
print(df.columns)  # Check correct column names
df['Employees']    # Use correct spelling
```

---

### Error 2: FileNotFoundError
```python
# ❌ Error:
df = pd.read_csv('data.csv')  # File not found

# ✅ Solution:
import os
print(os.getcwd())  # Check current directory
df = pd.read_csv('/full/path/to/data.csv')  # Use full path
```

---

### Error 3: TypeError in filtering
```python
# ❌ Error:
df[df['Industry'] == 'Technology' & df['Employees'] > 500]

# ✅ Solution:
df[(df['Industry'] == 'Technology') & (df['Employees'] > 500)]
# Use parentheses around each condition!
```

---

*Created for ML-101: Week 3*
*ML-101用に作成：第3週*
