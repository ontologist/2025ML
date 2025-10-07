# Week 3 Activity: Introduction to Google Colab and Python Basics
# 第3週アクティビティ：Google Colabと基本的なPython入門

## Activity Information | アクティビティ情報

**Activity Title:** Hands-On Python Exercises in Google Colab | Google Colabでハンズオン Python演習
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Use basic Python in Google Colab for data analysis | Google Colabで基本的なPythonを使用してデータ分析を行う
**Prerequisites:** Week 2 completion - Understanding of data types and sources | 第2週完了 - データタイプとソースの理解

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Navigate the Google Colab environment and create notebooks | Google Colab環境をナビゲートしノートブックを作成する
- Write and execute basic Python code (variables, data types, operations) | 基本的なPythonコードを書いて実行する（変数、データ型、演算）
- Perform simple data manipulation using Python lists and dictionaries | Pythonのリストと辞書を使用して簡単なデータ操作を実行する
- Import and explore a simple dataset using pandas | pandasを使用して簡単なデータセットをインポートして探索する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Google Colab environment, basic Python syntax, variables, data types
講義のコンセプト：Google Colab環境、基本的なPython構文、変数、データ型

**Activity Application:** Students immediately apply lecture concepts by writing and executing Python code in Google Colab. This hands-on practice builds foundational programming skills needed for data collection and manipulation in later weeks.
アクティビティの適用：学生はGoogle ColabでPythonコードを書いて実行することで、講義のコンセプトをすぐに適用します。このハンズオン実践は、後の週でのデータ収集と操作に必要な基礎的なプログラミングスキルを構築します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot provides step-by-step guidance for Python basics, troubleshoots errors, and helps students understand code execution.
ボットの役割：ML-101ボットはPython基礎のためのステップバイステップガイダンスを提供し、エラーをトラブルシュートし、学生がコード実行を理解するのを助けます。

**BMAD Workflow Steps:**
1. Bot guides Colab setup and first notebook creation | ボットがColabセットアップと最初のノートブック作成をガイド
2. Bot provides Python exercises with progressive difficulty | ボットが段階的な難易度のPython演習を提供
3. Bot explains error messages when students encounter issues | 学生が問題に遭遇したときにボットがエラーメッセージを説明
4. Bot demonstrates data manipulation techniques | ボットがデータ操作技術を実演
5. Bot validates student code and provides feedback | ボットが学生のコードを検証しフィードバックを提供

**Bot Portal Interaction Points:**
- Colab setup walkthrough | Colabセットアップウォークスルー
- Interactive Python tutorials | インタラクティブなPythonチュートリアル
- Real-time code troubleshooting | リアルタイムコードトラブルシューティング
- Exercise validation and feedback | 演習検証とフィードバック

**Data Captured:**
- Student's Python proficiency level | 学生のPython習熟レベル
- Common errors encountered | 遭遇した一般的なエラー
- Time spent on each exercise | 各演習に費やした時間
- Code solutions submitted | 提出されたコードソリューション

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Google Colab Setup (10 minutes) | Google Colabセットアップ（10分）

**What Students Do:**
- Navigate to Google Colab (colab.research.google.com) | Google Colabに移動（colab.research.google.com）
- Sign in with Google account | Googleアカウントでサインイン
- Create a new notebook named "ML101_Week3_PythonBasics" | 「ML101_Week3_PythonBasics」という名前の新しいノートブックを作成
- Familiarize with interface: code cells, text cells, run button | インターフェースに慣れる：コードセル、テキストセル、実行ボタン
- Execute first code cell: `print("Hello ML-101!")` | 最初のコードセルを実行：`print("Hello ML-101!")`

**Bot Guidance:**
- Provides step-by-step Colab navigation instructions | ステップバイステップColabナビゲーション指示を提供
- Shows screenshots of key interface elements | 主要なインターフェース要素のスクリーンショットを表示
- Explains difference between code cells and text cells | コードセルとテキストセルの違いを説明
- Confirms successful setup when students execute first print statement | 学生が最初のprint文を実行したときに成功したセットアップを確認

**Expected Output:** Working Google Colab notebook with successful "Hello ML-101!" output
期待される出力：「Hello ML-101!」の出力が成功した動作中のGoogle Colabノートブック

**Time Allocation:** 10 minutes | 10分

---

### Step 2: Python Variables and Data Types (12 minutes) | Python変数とデータ型（12分）

**What Students Do:**
- Create variables of different types: string, integer, float, boolean | さまざまなタイプの変数を作成：文字列、整数、浮動小数点、ブール値
- Use `type()` function to check variable types | `type()`関数を使用して変数タイプをチェック
- Perform basic operations: arithmetic, string concatenation | 基本的な演算を実行：算術、文字列連結
- Complete bot-provided exercises: | ボット提供の演習を完了：
  1. Create variable for company name (string)
  2. Create variable for employee count (integer)
  3. Create variable for average rating (float)
  4. Create variable for is_hiring (boolean)
  5. Print all variables with labels

**Bot Guidance:**
- Provides code examples for each data type | 各データ型のコード例を提供
- Explains syntax: `variable_name = value` | 構文を説明：`variable_name = value`
- Shows common errors: `NameError`, `SyntaxError` | 一般的なエラーを表示：`NameError`、`SyntaxError`
- Validates student code and provides feedback | 学生のコードを検証しフィードバックを提供
- Asks: "Why do you think we use different data types?" | 質問：「なぜ異なるデータ型を使用すると思いますか？」

**Expected Output:** Completed variable exercises with correct data types and printed output
期待される出力：正しいデータ型と印刷された出力を伴う完了した変数演習

**Time Allocation:** 12 minutes | 12分

---

### Step 3: Python Lists and Dictionaries (13 minutes) | Pythonのリストと辞書（13分）

**What Students Do:**
- Create a list of company names | 企業名のリストを作成
- Access list items using indexing | インデックスを使用してリスト項目にアクセス
- Add and remove items from lists | リストにアイテムを追加および削除
- Create a dictionary to represent company information | 企業情報を表すために辞書を作成
- Access dictionary values using keys | キーを使用して辞書の値にアクセス
- Complete bot-provided exercises: | ボット提供の演習を完了：
  1. Create list of 5 company names
  2. Print first and last company
  3. Add new company to list
  4. Create dictionary with company details (name, industry, size, location)
  5. Print specific values from dictionary

**Bot Guidance:**
- Explains list syntax: `my_list = [item1, item2, item3]` | リスト構文を説明：`my_list = [item1, item2, item3]`
- Explains dictionary syntax: `my_dict = {"key": "value"}` | 辞書構文を説明：`my_dict = {"key": "value"}`
- Demonstrates indexing: `my_list[0]` gives first item | インデックスを実演：`my_list[0]`は最初のアイテムを返す
- Shows how to access dictionary values: `my_dict["key"]` | 辞書の値にアクセスする方法を示す：`my_dict["key"]`
- Explains: "Lists and dictionaries are perfect for storing company data" | 説明：「リストと辞書は企業データを保存するのに最適です」

**Expected Output:** Working code with lists and dictionaries representing company data
期待される出力：企業データを表すリストと辞書を含む動作中のコード

**Time Allocation:** 13 minutes | 13分

---

### Step 4: Simple Data Analysis with Pandas (15 minutes) | pandasを使用した簡単なデータ分析（15分）

**What Students Do:**
- Import pandas library: `import pandas as pd` | pandasライブラリをインポート：`import pandas as pd`
- Load a simple CSV file provided by bot | ボットが提供する簡単なCSVファイルをロード
- View first few rows: `df.head()` | 最初の数行を表示：`df.head()`
- Check data shape: `df.shape` | データの形状をチェック：`df.shape`
- Get column names: `df.columns` | 列名を取得：`df.columns`
- Access specific columns: `df['column_name']` | 特定の列にアクセス：`df['column_name']`
- Calculate basic statistics: `df.describe()` | 基本統計を計算：`df.describe()`

**Bot Guidance:**
- Provides pandas import statement | pandasインポート文を提供
- Shares sample CSV file URL for loading | ロード用のサンプルCSVファイルURLを共有
- Explains DataFrame concept: "A table in Python" | DataFrameコンセプトを説明：「Pythonのテーブル」
- Guides through data exploration commands | データ探索コマンドを通じてガイド
- Shows how to interpret output of each command | 各コマンドの出力を解釈する方法を示す
- Connects to project: "This is how you'll explore company data" | プロジェクトに接続：「これがあなたが企業データを探索する方法です」

**Expected Output:** Successfully loaded dataset with exploration commands executed and results displayed
期待される出力：探索コマンドが実行され結果が表示された正常にロードされたデータセット

**Time Allocation:** 15 minutes | 15分

---

### Step 5: Exercise Completion and Documentation (10 minutes) | 演習完了と文書化（10分）

**What Students Do:**
- Review all completed exercises in notebook | ノートブック内のすべての完了した演習を確認
- Add text cells with explanations for each code section | 各コードセクションの説明を伴うテキストセルを追加
- Save notebook to Google Drive | ノートブックをGoogle Driveに保存
- Download notebook as .ipynb file | ノートブックを.ipynbファイルとしてダウンロード
- If used external AI, complete transparency log | 外部AIを使用した場合、透明性ログを完成

**Bot Guidance:**
- Provides checklist of all exercises to verify completion | 完了を確認するためのすべての演習のチェックリストを提供
- Reminds students to add comments/documentation | コメント/文書を追加するよう学生に思い出させる
- Shows how to save and download notebooks | ノートブックを保存およびダウンロードする方法を示す
- Reviews AI transparency requirements | AI透明性要件を確認

**Expected Output:** Complete notebook with all exercises, documentation, and saved files
期待される出力：すべての演習、文書、保存されたファイルを含む完全なノートブック

**Time Allocation:** 10 minutes | 10分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Google Colab (free, requires Google account) | Google Colab（無料、Googleアカウントが必要）
- Web browser (Chrome recommended) | Webブラウザ（Chrome推奨）
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Sample CSV file for pandas exercise (provided via bot) | pandas演習用のサンプルCSVファイル（ボット経由で提供）
- Python exercise template notebook | Python演習テンプレートノートブック
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Python basics cheat sheet (bilingual) | Python基礎チートシート（バイリンガル）
- Google Colab quick reference guide | Google Colabクイックリファレンスガイド
- Pandas basics tutorial | pandasベーシックチュートリアル
- Common Python errors and solutions | 一般的なPythonエラーと解決策

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain Python syntax or concepts | AIにPython構文やコンセプトを説明するよう依頼
- Getting help understanding error messages | エラーメッセージの理解を支援
- Asking for examples of how to use specific functions | 特定の関数の使用方法の例を尋ねる
- Debugging code that isn't working | 動作していないコードをデバッグ

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What does the error 'NameError: name x is not defined' mean in Python?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI code suggestions and explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you test the AI's suggested code?
   - Did it work correctly?
   - Did you understand why it works?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest non-existent functions or incorrect syntax?
   - Did you verify the code executes without errors?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Completed Python Basics Notebook (required) | 完了したPython基礎ノートブック（必須）**
   - All exercises completed with working code | 動作中のコードを伴うすべての演習が完了
   - Text cells with explanations for each section | 各セクションの説明を伴うテキストセル
   - Successful execution of all code cells | すべてのコードセルの成功した実行
   - Format: .ipynb file | 形式：.ipynbファイル

2. **Exercise Output Screenshots (required) | 演習出力スクリーンショット（必須）**
   - Screenshots showing successful execution of key exercises | 主要な演習の成功した実行を示すスクリーンショット
   - At least 3 screenshots (variables, lists/dictionaries, pandas) | 少なくとも3つのスクリーンショット（変数、リスト/辞書、pandas）
   - Format: PNG or JPG | 形式：PNGまたはJPG

3. **Reflection Notes (required) | 考察ノート（必須）**
   - What was challenging? | 何が挑戦的でしたか？
   - What did you learn? | 何を学びましたか？
   - How will Python help with the company project? | Pythonは企業プロジェクトにどのように役立ちますか？
   - 1-2 paragraphs | 1-2段落

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week03_YourName_PythonBasics | ファイル命名：Week03_あなたの名前_PythonBasics

**Deadline:** End of Week 3 | 第3週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Colab Setup and Basic Syntax (2 points) | Colabセットアップと基本構文（2ポイント）**
  - Successfully created and executed notebook | ノートブックを正常に作成および実行
  - Correct variable creation and type usage | 正しい変数作成と型の使用

- **Lists and Dictionaries (3 points) | リストと辞書（3ポイント）**
  - Working list operations (creation, indexing, modification) | 動作中のリスト操作（作成、インデックス、変更）
  - Working dictionary operations (creation, access) | 動作中の辞書操作（作成、アクセス）
  - Code executes without errors | コードがエラーなしで実行

- **Pandas Data Exploration (3 points) | pandasデータ探索（3ポイント）**
  - Successfully imported pandas and loaded data | pandasを正常にインポートしデータをロード
  - Executed all exploration commands | すべての探索コマンドを実行
  - Demonstrated understanding of DataFrame operations | DataFrame操作の理解を実証

- **Documentation and AI Transparency (2 points) | 文書化とAI透明性（2ポイント）**
  - Clear explanations in text cells | テキストセルでの明確な説明
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ
  - Thoughtful reflection on learning | 学習に関する思慮深い考察

**Quality Expectations:**
- Code must execute without errors | コードはエラーなしで実行する必要があります
- Evidence of understanding, not just copying code | コピーだけでなく理解の証拠
- Clear documentation and comments | 明確な文書とコメント
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Can't access Google Colab | Google Colabにアクセスできない**
- **Solution:** Ensure you're signed in to a Google account. Try using Chrome browser. Check internet connection. | Googleアカウントにサインインしていることを確認します。Chromeブラウザの使用を試してください。インターネット接続を確認してください。
- **Bot Assistance:** Bot provides alternative access instructions and troubleshooting steps | ボットは代替アクセス手順とトラブルシューティングステップを提供

**Problem 2: Getting error messages in code | コードでエラーメッセージが表示される**
- **Solution:** Read the error message carefully - it usually tells you what's wrong. Common issues: typos in variable names, missing quotes, incorrect indentation | エラーメッセージを注意深く読む - 通常何が間違っているかを伝えます。一般的な問題：変数名のタイプミス、引用符の欠落、不正確なインデント
- **Bot Assistance:** Bot can explain error messages and suggest fixes | ボットはエラーメッセージを説明し修正を提案できます

**Problem 3: Code cell won't execute | コードセルが実行されない**
- **Solution:** Click the play button on the left of the cell. Make sure you've executed cells in order from top to bottom. If stuck, restart runtime: Runtime > Restart runtime | セルの左側の再生ボタンをクリックします。セルを上から下に順番に実行したことを確認します。スタックした場合、ランタイムを再起動：Runtime > Restart runtime
- **Bot Assistance:** Bot provides step-by-step execution guidance | ボットはステップバイステップ実行ガイダンスを提供

**Problem 4: Don't understand what the code is doing | コードが何をしているのか理解できない**
- **Solution:** Run code line by line. Use print() statements to see what's happening. Ask bot to explain specific lines. Add comments to explain your understanding. | コードを行ごとに実行します。print()文を使用して何が起こっているかを確認します。ボットに特定の行を説明するよう依頼します。理解を説明するためにコメントを追加します。
- **Bot Assistance:** Bot can break down complex code into simple explanations | ボットは複雑なコードを簡単な説明に分解できます

**Problem 5: Pandas commands not working | pandasコマンドが機能しない**
- **Solution:** Make sure you imported pandas first: `import pandas as pd`. Check that you loaded the data correctly. Verify column names with `df.columns`. | 最初にpandasをインポートしたことを確認：`import pandas as pd`。データを正しくロードしたことを確認します。`df.columns`で列名を確認します。
- **Bot Assistance:** Bot provides pandas troubleshooting checklist | ボットはpandasトラブルシューティングチェックリストを提供

**When to Ask for Help:**
- Error persists after troubleshooting attempts | トラブルシューティングの試行後もエラーが続く
- Don't understand fundamental concepts | 基本的なコンセプトが理解できない
- Colab environment issues | Colab環境の問題
- Need clarification on exercises | 演習について説明が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot first for coding questions | コーディングの質問にはまずボットを使用

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
