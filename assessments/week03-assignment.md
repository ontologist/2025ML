# Week 3 Assignment: Introduction to Google Colab and Python Basics
# 第3週課題：Google Colabと基本的なPython入門

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Week:** 3 | 第3週
**Due Date:** End of Week 3 class session | 第3週授業終了時
**Weight:** Part of 40% Weekly Activities grade | 週次アクティビティ評価40%の一部
**Submission:** Through ML-101 Bot Portal | ML-101ボットポータル経由

---

## Assignment Overview | 課題概要

This assignment introduces you to programming fundamentals using Google Colab and Python. You'll learn to write basic Python code, manipulate data structures, and use pandas for data exploration - essential skills for collecting and analyzing company data in the course project.

この課題は、Google ColabとPythonを使用してプログラミングの基礎を紹介します。基本的なPythonコードを書き、データ構造を操作し、pandasを使用してデータ探索を行う方法を学びます - これらはコースプロジェクトで企業データを収集し分析するために不可欠なスキルです。

---

## Learning Objectives | 学習目標

By completing this assignment, you will be able to:
この課題を完了することで、以下ができるようになります：

- ✅ Navigate and use Google Colab environment for Python programming
  Google Colab環境をナビゲートしPythonプログラミングに使用する

- ✅ Write and execute basic Python code with proper syntax
  適切な構文で基本的なPythonコードを書いて実行する

- ✅ Work with Python data structures (lists, dictionaries)
  Pythonデータ構造（リスト、辞書）を扱う

- ✅ Import and explore datasets using pandas DataFrames
  pandasデータフレームを使用してデータセットをインポートし探索する

- ✅ Apply Python skills to company data analysis
  企業データ分析にPythonスキルを適用する

---

## Prerequisites | 前提条件

- ✅ Attended Week 3 lecture (or reviewed lecture slides)
  第3週講義に出席（または講義スライドをレビュー）

- ✅ Completed Week 2 assignment
  第2週課題を完了

- ✅ Google account for accessing Colab
  ColabにアクセスするためのGoogleアカウント

- ✅ Access to ML-101 Bot portal
  ML-101ボットポータルへのアクセス

---

## Assignment Deliverables | 課題成果物

### Deliverable 1: Completed Python Basics Notebook
### 成果物1：完了したPython基礎ノートブック

**Required Content | 必要な内容:**

Complete all exercises in a Google Colab notebook with working code.
Google Colabノートブックですべての演習を動作中のコードで完了します。

**Section A: Variables and Data Types | 変数とデータ型**
Create variables demonstrating each data type:
各データ型を示す変数を作成：

1. **String variable** - Company name
   - Example: `company_name = "Toyota Motor Corporation"`
   - 例：`company_name = "トヨタ自動車株式会社"`

2. **Integer variable** - Employee count
   - Example: `employee_count = 75000`
   - 例：`employee_count = 75000`

3. **Float variable** - Average rating or score
   - Example: `avg_rating = 4.5`
   - 例：`avg_rating = 4.5`

4. **Boolean variable** - Hiring status
   - Example: `is_hiring = True`
   - 例：`is_hiring = True`

5. **Use type() function** - Check types of all variables
   - Print each variable with its type
   - 各変数をその型と一緒にプリント

**Section B: Lists and Dictionaries | リストと辞書**

1. **Create a list** of 5 company names
   - Access first and last items using indexing
   - Add a new company to the list
   - Print the updated list

2. **Create a dictionary** representing company information
   - Must include: name, industry, employee_count, location, is_hiring
   - Access and print specific values using keys
   - Add a new key-value pair (e.g., founded_year)

**Section C: Pandas DataFrame Exercises | pandasデータフレーム演習**

1. **Import pandas** library
   - Use: `import pandas as pd`

2. **Load sample CSV** provided by bot
   - Use: `pd.read_csv('url_provided_by_bot')`
   - Store in variable called `df`

3. **Explore the data:**
   - Display first 5 rows: `df.head()`
   - Check data shape: `df.shape`
   - Show column names: `df.columns`
   - Display data types: `df.dtypes`
   - Get summary statistics: `df.describe()`

4. **Access specific columns:**
   - Select and print the company_name column
   - Select and print the industry column
   - Create a new column calculation (if applicable)

**Format | 形式:**
- Google Colab notebook (.ipynb file)
- All code cells must execute without errors
- Include text cells with explanations for each section
- Clear output displayed for all exercises

**Scoring (40 points) | 採点（40点）:**
- Variables and data types exercises: 10 points
  変数とデータ型演習：10点
- Lists and dictionaries exercises: 10 points
  リストと辞書演習：10点
- Pandas DataFrame exercises: 15 points
  pandasデータフレーム演習：15点
- Code quality and documentation: 5 points
  コード品質と文書化：5点

---

### Deliverable 2: Exercise Output Screenshots
### 成果物2：演習出力スクリーンショット

**Required Content | 必要な内容:**

Provide **at least 3 screenshots** showing successful execution of your code:
コードの成功した実行を示す**少なくとも3つのスクリーンショット**を提供：

1. **Colab Environment Screenshot**
   - Show the Colab interface with your notebook open
   - Must clearly display notebook name and execution status
   - Colabインターフェースを開いたノートブックと共に表示
   - ノートブック名と実行ステータスを明確に表示する必要があります

2. **Variables and Data Types Output**
   - Screenshot showing all variable assignments
   - Must include type() function results
   - すべての変数割り当てを示すスクリーンショット
   - type()関数の結果を含む必要があります

3. **Pandas DataFrame Output**
   - Screenshot of df.head() and df.describe() results
   - Must show clear data preview
   - df.head()とdf.describe()の結果のスクリーンショット
   - 明確なデータプレビューを表示する必要があります

**Additional Screenshots (Optional but Recommended):**
- Lists and dictionaries exercises
- リストと辞書演習
- Column selection results
- 列選択結果
- Any challenges you solved
- 解決した課題

**Format | 形式:**
- PNG or JPG format
- Clear, readable screenshots
- Label each screenshot (Screenshot 1, 2, 3)
- 各スクリーンショットにラベルを付ける（スクリーンショット1、2、3）

**Scoring (25 points) | 採点（25点）:**
- Three required screenshots provided: 15 points (5 each)
  必要な3つのスクリーンショットを提供：15点（各5点）
- Clear and readable quality: 5 points
  明確で読みやすい品質：5点
- Proper labeling and organization: 5 points
  適切なラベル付けと整理：5点

---

### Deliverable 3: Reflection Notes
### 成果物3：考察ノート

**Required Content | 必要な内容:**

Write **1-2 paragraphs** (150-250 words) reflecting on your Python learning experience.
Python学習体験について**1-2段落**（150-250語）の考察を書きます。

**Guiding Questions | ガイド質問:**

- What was the most challenging aspect of Python for you?
  あなたにとってPythonの最も挑戦的な側面は何でしたか？

- How did you overcome difficulties (bot help, trial and error, external resources)?
  どのように困難を克服しましたか（ボットの助け、試行錯誤、外部リソース）？

- What was easier than you expected?
  何が予想よりも簡単でしたか？

- How do you see Python helping with the company data collection project?
  企業データ収集プロジェクトにPythonがどのように役立つと思いますか？

- What Python concepts do you want to learn more about?
  どのPythonコンセプトについてもっと学びたいですか？

**Format | 形式:**
- Include in your main submission document
- メイン提出文書に含める
- Clearly labeled section: "Python Learning Reflection"
- 明確にラベル付けされたセクション：「Python学習の考察」
- 1-2 paragraphs, 150-250 words
- 1-2段落、150-250語

**Scoring (25 points) | 採点（25点）:**
- Thoughtful reflection on challenges: 10 points
  課題に関する思慮深い考察：10点
- Connection to course project: 10 points
  コースプロジェクトへの関連付け：10点
- Clear writing and organization: 5 points
  明確な執筆と構成：5点

---

### Deliverable 4: AI Transparency Statement (if applicable)
### 成果物4：AI透明性声明（該当する場合）

**Required Content | 必要な内容:**

If your institution requires AI transparency documentation OR if you used external AI tools (ChatGPT, Claude, Gemini, etc.), include a statement (3-5 sentences) describing:

あなたの機関がAI透明性文書を要求する場合、または外部AIツール（ChatGPT、Claude、Geminiなど）を使用した場合、以下を説明する声明（3-5文）を含めます：

- Which AI tools you used (ML-101 Bot, ChatGPT, etc.)
  どのAIツールを使用したか（ML-101ボット、ChatGPTなど）

- How you used them (explaining concepts, debugging code, syntax help)
  どのように使用したか（コンセプトの説明、コードのデバッグ、構文のヘルプ）

- What you learned and coded independently vs with AI assistance
  AIアシスタンスなしで学習しコーディングしたこととAIアシスタンスありで行ったこと

- How you verified that AI-suggested code works correctly
  AI提案のコードが正しく動作することをどのように検証したか

**Format | 形式:**
- Include at the end of your main document
  メイン文書の最後に含める
- Clearly labeled: "AI Transparency Statement"
  明確にラベル付け：「AI透明性声明」

**Scoring (10 points) | 採点（10点）:**
- Honest and clear documentation
  正直で明確な文書化
- Appropriate AI usage
  適切なAI使用
- Evidence of independent learning
  独立した学習の証拠

**Note:** This deliverable is **required only if** your institution has an AI transparency policy OR if you used external AI tools. Check with your instructor.
**注意:** この成果物は、あなたの機関がAI透明性ポリシーを持つ**場合、または**外部AIツールを使用した**場合のみ必要**です。インストラクターに確認してください。

---

## Submission Instructions | 提出指示

### How to Submit | 提出方法

1. **Download your Colab notebook**
   Colabノートブックをダウンロード
   - File > Download > Download .ipynb
   - ファイル > ダウンロード > .ipynbをダウンロード

2. **Create a submission document** with:
   提出文書を作成：
   - Exercise screenshots (Deliverable 2)
   - Reflection notes (Deliverable 3)
   - AI transparency statement (Deliverable 4, if applicable)

3. **Name your files:**
   ファイル名を付ける：
   - Notebook: `Week03_[YourName]_PythonBasics.ipynb`
   - Document: `Week03_[YourName]_PythonBasics.pdf` (or .docx)
   - Example: `Week03_YuriTijerino_PythonBasics.ipynb`
   - 例：`Week03_田中太郎_PythonBasics.ipynb`

4. **Upload through ML-101 Bot Portal:**
   ML-101ボットポータルを通じてアップロード：
   - Log in to bot portal
   - Navigate to "Week 3 Assignment Submission"
   - Upload both files (.ipynb notebook AND document)
   - Click "Submit"

5. **Confirm submission:**
   提出を確認：
   - You should receive an automated confirmation
   - If you don't receive confirmation within 5 minutes, contact instructor
   - 自動確認を受け取る必要があります
   - 5分以内に確認を受け取らない場合は、インストラクターに連絡

### Submission Deadline | 提出期限

**Due:** End of Week 3 class session
**期限:** 第3週授業終了時

**Late Policy | 遅延ポリシー:**
- Submissions up to 24 hours late: -10%
  24時間以内の遅延提出：-10%
- Submissions 24-48 hours late: -20%
  24-48時間の遅延提出：-20%
- Submissions more than 48 hours late: Not accepted without prior arrangement
  48時間以上の遅延提出：事前の取り決めなしでは受理されません

---

## Grading Rubric | 評価ルーブリック

### Total Points: 100 | 合計点：100

| Deliverable | Points | Criteria |
|-------------|--------|----------|
| **Python Basics Notebook** | 40 | Variables, lists, dictionaries, pandas exercises completed correctly |
| **Exercise Screenshots** | 25 | 3+ clear screenshots showing successful execution |
| **Reflection Notes** | 25 | Thoughtful reflection on learning and project connection |
| **AI Transparency** | 10 | Clear documentation (if required/applicable) |
| **TOTAL** | **100** | |

| 成果物 | 点数 | 基準 |
|--------|------|------|
| **Python基礎ノートブック** | 40 | 変数、リスト、辞書、pandas演習が正しく完了 |
| **演習スクリーンショット** | 25 | 成功した実行を示す3つ以上の明確なスクリーンショット |
| **考察ノート** | 25 | 学習とプロジェクト関連についての思慮深い考察 |
| **AI透明性** | 10 | 明確な文書化（必要な場合/該当する場合） |
| **合計** | **100** | |

---

## Tips for Success | 成功のためのヒント

### Getting Started | 始め方

✅ **Start with the Colab tutorial**
   Colabチュートリアルから始める
   - The ML-101 Bot will guide you through setup
   - ML-101ボットがセットアップをガイドします
   - Don't skip the initial walkthrough
   - 初期ウォークスルーをスキップしないでください

✅ **Run code frequently**
   頻繁にコードを実行する
   - Test each line before moving to the next
   - 次に進む前に各行をテストする
   - Use print() statements to check your work
   - print()文を使用して作業を確認する

✅ **Read error messages carefully**
   エラーメッセージを注意深く読む
   - Python error messages tell you what's wrong
   - Pythonエラーメッセージは何が間違っているかを教えます
   - Ask the bot to explain errors you don't understand
   - 理解できないエラーをボットに説明してもらう

### Common Mistakes to Avoid | 避けるべきよくある間違い

❌ **Forgetting to execute cells in order**
   順番にセルを実行することを忘れる
   - Always run cells from top to bottom
   - 常に上から下にセルを実行する
   - If you get NameError, you may have skipped a cell
   - NameErrorが出たら、セルをスキップした可能性があります

❌ **Typos in variable names**
   変数名のタイプミス
   - Python is case-sensitive: `CompanyName` ≠ `companyname`
   - Pythonは大文字小文字を区別：`CompanyName` ≠ `companyname`
   - Use consistent naming throughout
   - 一貫した命名を使用

❌ **Not saving your work**
   作業を保存しない
   - Colab auto-saves, but download a backup copy
   - Colabは自動保存しますが、バックアップコピーをダウンロードする
   - Don't lose hours of work to a browser crash
   - ブラウザのクラッシュで数時間の作業を失わない

❌ **Copying code without understanding**
   理解せずにコードをコピーする
   - If you use AI or examples, make sure you understand them
   - AIや例を使用する場合、それらを理解していることを確認
   - Add comments explaining what each line does
   - 各行が何をするかを説明するコメントを追加

---

## Example Submission Excerpt | 提出例の抜粋

### Example: Variables Section
### 例：変数セクション

```python
# Section A: Variables and Data Types
# 変数とデータ型

# String variable - Company name
company_name = "Toyota Motor Corporation"
print(f"Company Name: {company_name}")
print(f"Type: {type(company_name)}")

# Integer variable - Employee count
employee_count = 75000
print(f"Employee Count: {employee_count}")
print(f"Type: {type(employee_count)}")

# Float variable - Average rating
avg_rating = 4.5
print(f"Average Rating: {avg_rating}")
print(f"Type: {type(avg_rating)}")

# Boolean variable - Hiring status
is_hiring = True
print(f"Is Hiring: {is_hiring}")
print(f"Type: {type(is_hiring)}")
```

**Output:**
```
Company Name: Toyota Motor Corporation
Type: <class 'str'>
Employee Count: 75000
Type: <class 'int'>
Average Rating: 4.5
Type: <class 'float'>
Is Hiring: True
Type: <class 'bool'>
```

### Example: Reflection Excerpt
### 例：考察抜粋

"The most challenging aspect of Python for me was understanding how dictionaries work, especially accessing values with keys instead of positions like in lists. I overcame this by using the ML-101 Bot to get examples and then practicing with different company data. The pandas DataFrame exercises were easier than expected because the commands (head, describe) are very intuitive. I can see how Python will be essential for our company data project - we'll need pandas to organize and analyze the data we scrape from websites. I want to learn more about data cleaning techniques and how to handle missing values in DataFrames."

「私にとってPythonの最も挑戦的な側面は辞書の仕組みを理解することでした、特にリストのような位置ではなくキーで値にアクセスすることです。ML-101ボットを使用して例を取得し、その後異なる企業データで練習することでこれを克服しました。pandasデータフレーム演習は予想よりも簡単でした。コマンド（head、describe）が非常に直感的だからです。企業データプロジェクトにPythonがどのように不可欠かがわかります - ウェブサイトからスクレイプしたデータを整理し分析するためにpandasが必要になります。データクリーニング技術とデータフレームの欠損値を処理する方法についてもっと学びたいです。」

---

## Frequently Asked Questions | よくある質問

**Q: Do I need to install Python on my computer?**
**Q: コンピュータにPythonをインストールする必要がありますか？**

A: No! Google Colab runs Python in the cloud. You only need a web browser and Google account.
A: いいえ！Google ColabはクラウドでPythonを実行します。WebブラウザとGoogleアカウントのみが必要です。

**Q: What if my code has errors and won't run?**
**Q: コードにエラーがあり実行されない場合は？**

A: Read the error message carefully - it usually tells you the problem. Ask the ML-101 Bot to explain the error. Common issues: typos, missing quotes, wrong indentation.
A: エラーメッセージを注意深く読んでください - 通常は問題を教えてくれます。ML-101ボットにエラーを説明してもらいます。一般的な問題：タイプミス、引用符の欠落、インデントの誤り。

**Q: Can I use ChatGPT or other AI to help with coding?**
**Q: ChatGPTや他のAIをコーディングの助けに使用できますか？**

A: Yes, but you must document it in your AI Transparency Statement. Make sure you understand any code AI suggests and can explain what it does.
A: はい、ただしAI透明性声明で文書化する必要があります。AIが提案するコードを理解し、それが何をするかを説明できることを確認してください。

**Q: How long should this assignment take?**
**Q: この課題にはどのくらい時間がかかりますか？**

A: Plan for 2-3 hours total: 1 hour for exercises, 30-60 minutes for documentation and screenshots, 30 minutes for reflection.
A: 合計2-3時間を計画：演習に1時間、文書化とスクリーンショットに30-60分、考察に30分。

**Q: What if Colab crashes or I lose my work?**
**Q: Colabがクラッシュしたり作業を失ったりした場合は？**

A: Colab auto-saves to your Google Drive. You can also manually save (Ctrl+S or Cmd+S). Download a backup .ipynb file regularly.
A: ColabはGoogle Driveに自動保存します。手動で保存することもできます（Ctrl+SまたはCmd+S）。定期的にバックアップ .ipynbファイルをダウンロードしてください。

**Q: Do I need to know HTML for this assignment?**
**Q: この課題にHTMLを知っている必要がありますか？**

A: No. This week focuses on Python basics. We'll use HTML knowledge in later weeks for web scraping.
A: いいえ。今週はPythonの基礎に焦点を当てています。後の週でWebスクレイピングのためにHTML知識を使用します。

**Q: Can I work with a classmate?**
**Q: クラスメートと一緒に作業できますか？**

A: You can discuss concepts and help each other troubleshoot, but your code and submission must be your own work.
A: コンセプトを議論しトラブルシューティングを助け合うことはできますが、コードと提出物はあなた自身の作業である必要があります。

---

## Getting Help | ヘルプを得る

**During Class Activity | 授業アクティビティ中:**
- Ask the ML-101 Bot questions about Python syntax and concepts
- Raise your hand for instructor help with errors
- Discuss approaches with classmates (but write your own code)

**Outside of Class | 授業外:**
- Use the bot portal (available 24/7) for coding help
- Email instructor: [instructor email]
- Office hours: [office hours schedule]
- Python documentation: https://docs.python.org/3/
- Pandas documentation: https://pandas.pydata.org/docs/

**When to Ask:**
- Code won't run after multiple troubleshooting attempts
- Don't understand fundamental concepts (variables, data types)
- Confused about assignment requirements
- Technical issues with Colab or Google account

---

## Academic Integrity | 学術的誠実性

**Permitted | 許可されている:**
- Using the ML-101 Bot for guidance and explanations
- Asking AI tools to explain concepts or debug errors
- Looking at Python documentation and tutorials
- Discussing approaches with classmates
- Using code examples from lecture materials

**Not Permitted | 許可されていない:**
- Copying another student's code
- Submitting code you don't understand
- Having AI write your entire assignment
- Plagiarizing code from websites without understanding it
- Sharing your completed notebook before deadline

**Violation Consequences | 違反の結果:**
First offense: Zero on assignment + academic integrity report
First offense: 課題でゼロ + 学術的誠実性報告

---

**Good luck with your Python journey!**
**Python学習の旅を頑張ってください！**

**Remember: Everyone starts as a beginner. Take it step by step, and don't be afraid to ask questions!**
**覚えておいてください：誰もが初心者として始まります。一歩ずつ進み、質問することを恐れないでください！**

---

*Assignment created for ML-101: Machine Learning and Intelligence*
*ML-101用に作成された課題：機械学習と知能*
