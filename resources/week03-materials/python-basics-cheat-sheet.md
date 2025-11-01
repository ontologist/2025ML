# Python Basics Cheat Sheet
# Python基礎チートシート

**Week 3 Reference Material | 第3週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## Introduction | はじめに

**Python = The most popular language for Machine Learning**
**Python = 機械学習で最も人気のある言語**

This cheat sheet covers the essential Python basics you need for data analysis and ML.
このチートシートは、データ分析とMLに必要な基本的なPythonの基礎をカバーしています。

**No prior programming experience needed!**
**プログラミング経験は不要！**

---

## Basic Syntax | 基本構文

### Printing Output | 出力の印刷

**Print text to screen:**
**画面にテキストを印刷:**

```python
print("Hello, World!")
# Output: Hello, World!

print("Machine Learning is fun!")
# Output: Machine Learning is fun!
```

**Print multiple items:**
**複数のアイテムを印刷:**

```python
print("My name is", "Alice")
# Output: My name is Alice

print("I am", 25, "years old")
# Output: I am 25 years old
```

**Print in Japanese:**
**日本語で印刷:**

```python
print("こんにちは、世界！")
# Output: こんにちは、世界！

print("機械学習は楽しいです！")
# Output: 機械学習は楽しいです！
```

---

## Variables | 変数

**Variables = Containers that store data**
**変数 = データを保存するコンテナ**

### Creating Variables | 変数の作成

```python
# Numbers
age = 25
price = 9.99
employees = 500

# Text (strings)
name = "Alice"
company = "ABC Corporation"
industry = "Technology"

# Boolean (True/False)
is_student = True
has_experience = False
```

**No need to declare type - Python figures it out!**
**型を宣言する必要はありません - Pythonが判断します！**

---

### Using Variables | 変数の使用

```python
name = "Bob"
age = 30

print(name)           # Output: Bob
print(age)            # Output: 30
print(name, "is", age, "years old")
# Output: Bob is 30 years old
```

**Variables can change:**
**変数は変更できます:**

```python
count = 10
print(count)          # Output: 10

count = 20            # Changed!
print(count)          # Output: 20
```

**Variables in Japanese:**
**日本語の変数:**

```python
名前 = "田中"
年齢 = 28
print(名前, "さんは", 年齢, "歳です")
# Output: 田中 さんは 28 歳です
```

---

## Data Types | データ型

### Numbers | 数値

**Integers (whole numbers):**
**整数（整数値）:**

```python
count = 100
employees = 500
year = 2025

print(type(count))    # Output: <class 'int'>
```

**Floats (decimal numbers):**
**浮動小数点数（小数）:**

```python
price = 19.99
percentage = 75.5
average = 123.456

print(type(price))    # Output: <class 'float'>
```

**Math operations:**
**数学演算:**

```python
# Addition | 加算
print(10 + 5)         # Output: 15

# Subtraction | 減算
print(10 - 5)         # Output: 5

# Multiplication | 乗算
print(10 * 5)         # Output: 50

# Division | 除算
print(10 / 3)         # Output: 3.333...

# Integer division | 整数除算
print(10 // 3)        # Output: 3

# Modulus (remainder) | 剰余
print(10 % 3)         # Output: 1

# Power | べき乗
print(2 ** 3)         # Output: 8 (2 to the power of 3)
```

---

### Strings | 文字列

**Text data - enclosed in quotes:**
**テキストデータ - 引用符で囲む:**

```python
# Single quotes
name = 'Alice'

# Double quotes (preferred)
company = "ABC Corp"

# Both work the same!
```

**String length:**
**文字列の長さ:**

```python
text = "Hello"
print(len(text))      # Output: 5

company = "Microsoft"
print(len(company))   # Output: 9
```

**String operations:**
**文字列操作:**

```python
# Concatenation (joining)
first = "Machine"
second = "Learning"
full = first + " " + second
print(full)           # Output: Machine Learning

# Repetition
laugh = "Ha" * 3
print(laugh)          # Output: HaHaHa

# Case conversion
text = "Python"
print(text.upper())   # Output: PYTHON
print(text.lower())   # Output: python
```

**Accessing characters:**
**文字へのアクセス:**

```python
word = "Python"

# First character (index 0)
print(word[0])        # Output: P

# Last character
print(word[-1])       # Output: n

# Slice (range)
print(word[0:3])      # Output: Pyt
print(word[2:])       # Output: thon
```

---

### Boolean | ブール値

**True or False values:**
**真または偽の値:**

```python
is_student = True
has_job = False

print(type(is_student))  # Output: <class 'bool'>
```

**Comparison operators:**
**比較演算子:**

```python
age = 25

print(age > 18)       # Output: True
print(age < 20)       # Output: False
print(age == 25)      # Output: True (equal to)
print(age != 30)      # Output: True (not equal to)
print(age >= 25)      # Output: True (greater or equal)
print(age <= 20)      # Output: False (less or equal)
```

**Logical operators:**
**論理演算子:**

```python
age = 25
has_experience = True

# AND - both must be True
print(age > 18 and has_experience)    # Output: True

# OR - at least one must be True
print(age > 30 or has_experience)     # Output: True

# NOT - reverses the value
print(not has_experience)             # Output: False
```

---

## Lists | リスト

**Lists = Ordered collections of items**
**リスト = 順序付けられたアイテムのコレクション**

### Creating Lists | リストの作成

```python
# Empty list
my_list = []

# List of numbers
numbers = [1, 2, 3, 4, 5]

# List of strings
companies = ["Google", "Apple", "Microsoft"]

# Mixed types (possible but not recommended)
mixed = [1, "Hello", True, 3.14]
```

**Japanese example:**
**日本語の例:**

```python
企業 = ["トヨタ", "ソニー", "パナソニック"]
print(企業)
# Output: ['トヨタ', 'ソニー', 'パナソニック']
```

---

### Accessing List Items | リストアイテムへのアクセス

```python
companies = ["Google", "Apple", "Microsoft", "Amazon"]

# First item (index 0)
print(companies[0])       # Output: Google

# Second item
print(companies[1])       # Output: Apple

# Last item
print(companies[-1])      # Output: Amazon

# Slice (range)
print(companies[1:3])     # Output: ['Apple', 'Microsoft']
```

---

### List Length | リストの長さ

```python
companies = ["Google", "Apple", "Microsoft"]
print(len(companies))     # Output: 3

numbers = [10, 20, 30, 40, 50]
print(len(numbers))       # Output: 5
```

---

### Adding to Lists | リストへの追加

```python
companies = ["Google", "Apple"]
print(companies)          # Output: ['Google', 'Apple']

# Add one item to end
companies.append("Microsoft")
print(companies)          # Output: ['Google', 'Apple', 'Microsoft']

# Add multiple items
companies.extend(["Amazon", "Meta"])
print(companies)
# Output: ['Google', 'Apple', 'Microsoft', 'Amazon', 'Meta']

# Insert at specific position
companies.insert(0, "Toyota")
print(companies)
# Output: ['Toyota', 'Google', 'Apple', 'Microsoft', 'Amazon', 'Meta']
```

---

### Removing from Lists | リストからの削除

```python
companies = ["Google", "Apple", "Microsoft", "Amazon"]

# Remove specific item
companies.remove("Apple")
print(companies)          # Output: ['Google', 'Microsoft', 'Amazon']

# Remove by index
companies.pop(0)          # Removes first item
print(companies)          # Output: ['Microsoft', 'Amazon']

# Remove last item
companies.pop()           # Removes 'Amazon'
print(companies)          # Output: ['Microsoft']

# Clear all items
companies.clear()
print(companies)          # Output: []
```

---

### Checking if Item Exists | アイテムの存在確認

```python
companies = ["Google", "Apple", "Microsoft"]

# Check if item is in list
print("Apple" in companies)       # Output: True
print("Amazon" in companies)      # Output: False

# Check if item is NOT in list
print("Tesla" not in companies)   # Output: True
```

---

### Sorting Lists | リストのソート

```python
numbers = [5, 2, 8, 1, 9]

# Sort in ascending order
numbers.sort()
print(numbers)            # Output: [1, 2, 5, 8, 9]

# Sort in descending order
numbers.sort(reverse=True)
print(numbers)            # Output: [9, 8, 5, 2, 1]

# Alphabetical sorting
companies = ["Microsoft", "Apple", "Google"]
companies.sort()
print(companies)          # Output: ['Apple', 'Google', 'Microsoft']
```

---

### Common List Operations | 一般的なリスト操作

```python
numbers = [10, 20, 30, 40, 50]

# Sum of all numbers
print(sum(numbers))       # Output: 150

# Maximum value
print(max(numbers))       # Output: 50

# Minimum value
print(min(numbers))       # Output: 10

# Average (manual calculation)
average = sum(numbers) / len(numbers)
print(average)            # Output: 30.0

# Count occurrences
numbers = [1, 2, 2, 3, 2, 4]
print(numbers.count(2))   # Output: 3
```

---

## Dictionaries | 辞書

**Dictionaries = Key-Value pairs (like a real dictionary)**
**辞書 = キーと値のペア（実際の辞書のような）**

### Creating Dictionaries | 辞書の作成

```python
# Empty dictionary
my_dict = {}

# Company information
company = {
    "name": "ABC Corp",
    "industry": "Technology",
    "employees": 500,
    "location": "Tokyo"
}

# Student information
student = {
    "name": "田中太郎",
    "age": 22,
    "major": "Computer Science",
    "gpa": 3.8
}
```

---

### Accessing Dictionary Values | 辞書の値へのアクセス

```python
company = {
    "name": "ABC Corp",
    "industry": "Technology",
    "employees": 500
}

# Get value by key
print(company["name"])        # Output: ABC Corp
print(company["employees"])   # Output: 500

# Safe access (returns None if key doesn't exist)
print(company.get("location"))    # Output: None
print(company.get("location", "Unknown"))  # Output: Unknown
```

---

### Adding/Updating Dictionary Items | 辞書アイテムの追加/更新

```python
company = {
    "name": "ABC Corp",
    "industry": "Technology"
}

# Add new key-value pair
company["employees"] = 500
print(company)
# Output: {'name': 'ABC Corp', 'industry': 'Technology', 'employees': 500}

# Update existing value
company["industry"] = "Finance"
print(company)
# Output: {'name': 'ABC Corp', 'industry': 'Finance', 'employees': 500}
```

---

### Removing from Dictionary | 辞書からの削除

```python
company = {
    "name": "ABC Corp",
    "industry": "Technology",
    "employees": 500,
    "location": "Tokyo"
}

# Remove specific key
del company["location"]
print(company)
# Output: {'name': 'ABC Corp', 'industry': 'Technology', 'employees': 500}

# Remove and return value
industry = company.pop("industry")
print(industry)           # Output: Technology
print(company)            # Output: {'name': 'ABC Corp', 'employees': 500}
```

---

### Dictionary Operations | 辞書操作

```python
company = {
    "name": "ABC Corp",
    "industry": "Technology",
    "employees": 500
}

# Get all keys
print(company.keys())
# Output: dict_keys(['name', 'industry', 'employees'])

# Get all values
print(company.values())
# Output: dict_values(['ABC Corp', 'Technology', 500])

# Get all key-value pairs
print(company.items())
# Output: dict_items([('name', 'ABC Corp'), ('industry', 'Technology'), ('employees', 500)])

# Check if key exists
print("name" in company)      # Output: True
print("location" in company)  # Output: False

# Number of items
print(len(company))           # Output: 3
```

---

## Comments | コメント

**Comments = Notes in code that Python ignores**
**コメント = Pythonが無視するコード内のメモ**

```python
# This is a single-line comment
# コメントは実行されません

# Calculate average
total = 100
count = 5
average = total / count    # Inline comment

"""
This is a multi-line comment
Used for longer explanations
これは複数行のコメントです
より長い説明に使用されます
"""

print("Hello")  # This will run
# print("Goodbye")  # This won't run (commented out)
```

---

## Common String Operations | 一般的な文字列操作

### String Methods | 文字列メソッド

```python
text = "  Machine Learning  "

# Remove spaces from ends
print(text.strip())           # Output: "Machine Learning"

# Replace text
print(text.replace("Machine", "Deep"))
# Output: "  Deep Learning  "

# Split into list
words = text.strip().split()
print(words)                  # Output: ['Machine', 'Learning']

# Check if starts/ends with
print(text.strip().startswith("Machine"))  # Output: True
print(text.strip().endswith("AI"))         # Output: False

# Check if contains
print("Learning" in text)     # Output: True
print("Python" in text)       # Output: False
```

### String Formatting | 文字列フォーマット

```python
name = "Alice"
age = 25
score = 95.5

# Method 1: f-strings (modern, recommended)
message = f"{name} is {age} years old"
print(message)
# Output: Alice is 25 years old

result = f"Score: {score}%"
print(result)
# Output: Score: 95.5%

# Method 2: format()
message = "{} is {} years old".format(name, age)
print(message)
# Output: Alice is 25 years old

# Method 3: Concatenation
message = name + " is " + str(age) + " years old"
print(message)
# Output: Alice is 25 years old
```

---

## Type Conversion | 型変換

**Converting between data types:**
**データ型間の変換:**

```python
# String to integer
age_text = "25"
age_number = int(age_text)
print(age_number + 5)         # Output: 30

# String to float
price_text = "19.99"
price_number = float(price_text)
print(price_number * 2)       # Output: 39.98

# Number to string
count = 100
count_text = str(count)
print("Count: " + count_text) # Output: Count: 100

# String to boolean (advanced)
is_active = bool("True")
print(is_active)              # Output: True

# Check type
print(type(age_number))       # Output: <class 'int'>
print(type(price_text))       # Output: <class 'str'>
```

---

## Common Mistakes to Avoid | 避けるべき一般的な間違い

### Mistake 1: Case sensitivity | 間違い1：大文字小文字の区別

```python
# Python is case-sensitive!
Name = "Alice"
name = "Bob"

print(Name)    # Output: Alice
print(name)    # Output: Bob (different variable!)
```

---

### Mistake 2: Indentation | 間違い2：インデント

```python
# Wrong indentation causes errors
# 間違ったインデントはエラーを引き起こす

# ❌ Wrong:
print("Hello")
  print("World")    # Error! Unexpected indent

# ✅ Correct:
print("Hello")
print("World")
```

---

### Mistake 3: Quotes in strings | 間違い3：文字列内の引用符

```python
# ❌ Wrong:
message = "She said "Hello""    # Error!

# ✅ Correct options:
message = "She said 'Hello'"    # Mix single and double
message = 'She said "Hello"'    # Mix double and single
message = "She said \"Hello\""  # Escape with backslash
```

---

### Mistake 4: List index out of range | 間違い4：範囲外のリストインデックス

```python
numbers = [1, 2, 3]

# ❌ Wrong:
print(numbers[3])    # Error! Only indices 0, 1, 2 exist

# ✅ Correct:
print(numbers[2])    # Output: 3 (last item)
print(numbers[-1])   # Output: 3 (also last item)
```

---

## Practice Examples | 練習例

### Example 1: Company Information | 例1：企業情報

```python
# Create company data
company = {
    "name": "Tech Innovations",
    "industry": "Technology",
    "employees": 250,
    "founded": 2010,
    "locations": ["Tokyo", "Osaka", "Fukuoka"]
}

# Access and print information
print(f"Company: {company['name']}")
print(f"Industry: {company['industry']}")
print(f"Employee count: {company['employees']}")
print(f"Number of locations: {len(company['locations'])}")

# Output:
# Company: Tech Innovations
# Industry: Technology
# Employee count: 250
# Number of locations: 3
```

---

### Example 2: List of Companies | 例2：企業リスト

```python
# Create list of companies
companies = ["Toyota", "Sony", "Honda", "Panasonic", "Nintendo"]

# Print information
print(f"Total companies: {len(companies)}")
print(f"First company: {companies[0]}")
print(f"Last company: {companies[-1]}")

# Add new company
companies.append("Rakuten")
print(f"After adding: {companies}")

# Check if company exists
if "Sony" in companies:
    print("Sony is in the list!")

# Output:
# Total companies: 5
# First company: Toyota
# Last company: Nintendo
# After adding: ['Toyota', 'Sony', 'Honda', 'Panasonic', 'Nintendo', 'Rakuten']
# Sony is in the list!
```

---

### Example 3: Student Grades | 例3：学生の成績

```python
# Student information
student = {
    "name": "田中太郎",
    "grades": [85, 90, 78, 92, 88],
    "major": "Computer Science"
}

# Calculate statistics
total = sum(student["grades"])
count = len(student["grades"])
average = total / count

highest = max(student["grades"])
lowest = min(student["grades"])

# Print results
print(f"Student: {student['name']}")
print(f"Major: {student['major']}")
print(f"Average grade: {average}")
print(f"Highest grade: {highest}")
print(f"Lowest grade: {lowest}")

# Output:
# Student: 田中太郎
# Major: Computer Science
# Average grade: 86.6
# Highest grade: 92
# Lowest grade: 78
```

---

## Quick Reference Table | クイックリファレンステーブル

| Operation | Syntax | Example | Output |
|-----------|--------|---------|--------|
| **Print** | `print()` | `print("Hello")` | Hello |
| **Variable** | `name = value` | `age = 25` | 25 |
| **List** | `[item1, item2]` | `[1, 2, 3]` | [1, 2, 3] |
| **Dictionary** | `{key: value}` | `{"name": "Bob"}` | {"name": "Bob"} |
| **Length** | `len()` | `len([1,2,3])` | 3 |
| **Append** | `.append()` | `list.append(4)` | adds 4 to list |
| **Type** | `type()` | `type(5)` | <class 'int'> |
| **Convert to int** | `int()` | `int("5")` | 5 |
| **Convert to str** | `str()` | `str(5)` | "5" |

| 操作 | 構文 | 例 | 出力 |
|------|------|-----|------|
| **印刷** | `print()` | `print("こんにちは")` | こんにちは |
| **変数** | `名前 = 値` | `年齢 = 25` | 25 |
| **リスト** | `[項目1, 項目2]` | `[1, 2, 3]` | [1, 2, 3] |
| **辞書** | `{キー: 値}` | `{"名前": "太郎"}` | {"名前": "太郎"} |
| **長さ** | `len()` | `len([1,2,3])` | 3 |
| **追加** | `.append()` | `list.append(4)` | リストに4を追加 |
| **型** | `type()` | `type(5)` | <class 'int'> |
| **整数に変換** | `int()` | `int("5")` | 5 |
| **文字列に変換** | `str()` | `str(5)` | "5" |

---

## Tips for Success | 成功のヒント

✅ **Start simple** - Master basics before moving to complex code
   シンプルに始める - 複雑なコードに移る前に基礎をマスター

✅ **Practice typing code** - Don't just read, actually write code!
   コードを入力する練習 - 読むだけでなく、実際にコードを書く！

✅ **Use meaningful variable names** - `company_name` better than `x`
   意味のある変数名を使用 - `company_name`は`x`より良い

✅ **Add comments** - Explain what your code does
   コメントを追加 - コードが何をするかを説明

✅ **Test frequently** - Run your code often to catch errors early
   頻繁にテスト - エラーを早期に検出するためにコードを頻繁に実行

✅ **Read error messages** - They tell you what went wrong!
   エラーメッセージを読む - 何が間違ったかを教えてくれる！

---

## Next Steps | 次のステップ

**Now you're ready for:**
**これで準備ができました:**

1. **Pandas** - Working with data tables/spreadsheets
   Pandas - データテーブル/スプレッドシートの操作

2. **Data analysis** - Calculating statistics, finding patterns
   データ分析 - 統計の計算、パターンの発見

3. **Machine learning** - Using these basics to build ML models!
   機械学習 - これらの基礎を使用してMLモデルを構築！

---

*Created for ML-101: Week 3*
*ML-101用に作成：第3週*
