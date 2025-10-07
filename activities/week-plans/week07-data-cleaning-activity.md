# Week 7 Activity: Data Cleaning Fundamentals
# 第7週アクティビティ：データクリーニングの基礎

## Activity Information | アクティビティ情報

**Activity Title:** Cleaning Company Dataset Using Python in Google Colab | Google ColabでPythonを使用した企業データセットのクリーニング
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Apply data cleaning techniques to prepare data for ML | MLのためにデータを準備するためのデータクリーニング技術を適用する
**Prerequisites:** Week 6 completion - Company dataset collected; Week 3 Python basics | 第6週完了 - 企業データセット収集済み；第3週Python基礎

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Identify common data quality issues in real datasets | 実際のデータセットにおける一般的なデータ品質問題を特定する
- Apply Python pandas functions to clean and standardize data | Pythonのpandas関数を適用してデータをクリーニングおよび標準化する
- Remove duplicates, inconsistencies, and formatting errors | 重複、不整合、フォーマットエラーを削除する
- Document data cleaning decisions and transformations | データクリーニングの決定と変換を文書化する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Common data quality issues, cleaning techniques
講義のコンセプト：一般的なデータ品質問題、クリーニング技術

**Activity Application:** Students apply lecture concepts by cleaning their own company dataset collected in Week 6. This hands-on practice with real data makes cleaning concepts concrete and prepares the dataset for feature engineering.
アクティビティの適用：学生は第6週で収集した自分の企業データセットをクリーニングすることで、講義のコンセプトを適用します。実際のデータを使用したこのハンズオン実践は、クリーニングコンセプトを具体的にし、特徴量エンジニアリングのためにデータセットを準備します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot provides Python code snippets, guides cleaning workflow, troubleshoots errors, and validates cleaning effectiveness.
ボットの役割：ML-101ボットはPythonコードスニペットを提供し、クリーニングワークフローをガイドし、エラーをトラブルシュートし、クリーニングの有効性を検証します。

**BMAD Workflow Steps:**
1. Bot guides data quality assessment | ボットがデータ品質評価をガイド
2. Bot provides Python code templates for cleaning operations | ボットがクリーニング操作のためのPythonコードテンプレートを提供
3. Bot explains each cleaning step and its purpose | ボットが各クリーニングステップとその目的を説明
4. Bot validates cleaning results | ボットがクリーニング結果を検証
5. Bot helps document cleaning transformations | ボットがクリーニング変換の文書化を支援

**Bot Portal Interaction Points:**
- Data quality diagnostic | データ品質診断
- Interactive cleaning tutorial | インタラクティブなクリーニングチュートリアル
- Code assistance and debugging | コード支援とデバッグ
- Cleaning validation checkpoint | クリーニング検証チェックポイント

**Data Captured:**
- Data quality issues identified | 特定されたデータ品質問題
- Cleaning techniques applied | 適用されたクリーニング技術
- Python code proficiency level | Pythonコード習熟レベル
- Data transformation decisions | データ変換の決定

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Data Quality Assessment (10 minutes) | データ品質評価（10分）

**What Students Do:**
- Open Google Colab and create new notebook "ML101_Week7_DataCleaning" | Google Colabを開き、新しいノートブック「ML101_Week7_DataCleaning」を作成
- Upload company dataset CSV from Week 6 | 第6週の企業データセットCSVをアップロード
- Load data using pandas: `df = pd.read_csv('companies.csv')` | pandasを使用してデータをロード：`df = pd.read_csv('companies.csv')`
- Run initial diagnostic commands: | 初期診断コマンドを実行：
  - `df.head()` - view first rows | 最初の行を表示
  - `df.info()` - check data types and null values | データ型と欠損値をチェック
  - `df.describe()` - get statistics | 統計を取得
  - `df.duplicated().sum()` - count duplicates | 重複をカウント
- Document identified issues: duplicates, missing values, inconsistent formatting, errors | 特定された問題を文書化：重複、欠損値、一貫性のないフォーマット、エラー

**Bot Guidance:**
- Provides code snippets for data assessment | データ評価のためのコードスニペットを提供
- Asks diagnostic questions: "How many null values did you find? Which columns?" | 診断的質問を行う：「いくつの欠損値を見つけましたか？どの列ですか？」
- Helps interpret output: "info() shows data types - are they all correct?" | 出力を解釈するのを助ける：「info()はデータ型を示します - すべて正しいですか？」
- Creates quality issue checklist | 品質問題チェックリストを作成

**Expected Output:** List of data quality issues with specific examples and counts
期待される出力：具体的な例とカウントを含むデータ品質問題のリスト

**Time Allocation:** 10 minutes | 10分

---

### Step 2: Removing Duplicates and Standardizing Text (12 minutes) | 重複の削除とテキストの標準化（12分）

**What Students Do:**
- Check for and remove exact duplicates: | 完全な重複をチェックして削除：
  ```python
  # Check duplicates
  print(f"Duplicates found: {df.duplicated().sum()}")
  # Remove duplicates
  df = df.drop_duplicates()
  ```
- Standardize company names (remove extra spaces, consistent capitalization): | 企業名を標準化（余分なスペースを削除、一貫した大文字小文字）：
  ```python
  df['company_name'] = df['company_name'].str.strip()
  df['company_name'] = df['company_name'].str.title()
  ```
- Standardize industry categories: | 業界カテゴリを標準化：
  ```python
  # Example: convert variations to standard terms
  df['industry'] = df['industry'].str.strip().str.lower()
  df['industry'] = df['industry'].replace({'tech': 'technology', 'it': 'technology'})
  ```
- Remove leading/trailing whitespace from all text columns | すべてのテキスト列から先頭/末尾の空白を削除

**Bot Guidance:**
- Provides code templates for each cleaning operation | 各クリーニング操作のためのコードテンプレートを提供
- Explains: "strip() removes extra spaces, lower() makes text consistent" | 説明：「strip()は余分なスペースを削除し、lower()はテキストを一貫させます」
- Suggests: "Look at unique values in industry column - are there variations?" | 提案：「業界列の一意の値を見てください - バリエーションはありますか？」
- Shows how to use `unique()` to see all distinct values: `df['industry'].unique()` | `unique()`を使用してすべての異なる値を確認する方法を示す：`df['industry'].unique()`
- Troubleshoots common errors like KeyError (wrong column name) | KeyErrorなどの一般的なエラーをトラブルシュート（間違った列名）

**Expected Output:** Dataset with duplicates removed and standardized text formatting
期待される出力：重複が削除され、テキストフォーマットが標準化されたデータセット

**Time Allocation:** 12 minutes | 12分

---

### Step 3: Handling Data Type Issues (10 minutes) | データ型問題の処理（10分）

**What Students Do:**
- Check current data types: `df.dtypes` | 現在のデータ型をチェック：`df.dtypes`
- Convert columns to appropriate types: | 列を適切な型に変換：
  ```python
  # Example: ensure employee_count is numeric
  df['employee_count'] = pd.to_numeric(df['employee_count'], errors='coerce')

  # Example: convert founding_year to integer
  df['founding_year'] = df['founding_year'].astype('Int64')  # Int64 allows NaN
  ```
- Handle currency symbols or units in numeric fields: | 数値フィールドの通貨記号または単位を処理：
  ```python
  # Remove currency symbols like $ or ¥
  df['revenue'] = df['revenue'].str.replace('[$¥,]', '', regex=True)
  df['revenue'] = pd.to_numeric(df['revenue'], errors='coerce')
  ```
- Verify conversions worked correctly | 変換が正しく機能したことを確認

**Bot Guidance:**
- Explains data type importance: "ML models need consistent numeric types" | データ型の重要性を説明：「MLモデルは一貫した数値型を必要とします」
- Provides conversion code templates | 変換コードテンプレートを提供
- Explains `errors='coerce'`: "This converts invalid values to NaN instead of causing errors" | `errors='coerce'`を説明：「これはエラーを引き起こす代わりに無効な値をNaNに変換します」
- Helps debug type conversion errors | 型変換エラーのデバッグを支援

**Expected Output:** Dataset with correct data types for all columns
期待される出力：すべての列に対して正しいデータ型を持つデータセット

**Time Allocation:** 10 minutes | 10分

---

### Step 4: Consistency Checks and Corrections (13 minutes) | 一貫性チェックと修正（13分）

**What Students Do:**
- Check for logical inconsistencies: | 論理的不整合をチェック：
  ```python
  # Example: founding year shouldn't be in future
  current_year = 2025
  invalid_years = df[df['founding_year'] > current_year]
  print(f"Invalid founding years: {len(invalid_years)}")
  ```
- Standardize location formats: | 所在地フォーマットを標準化：
  ```python
  # Ensure consistent location format (e.g., "City, Country")
  df['location'] = df['location'].str.strip().str.title()
  ```
- Check for impossible or suspicious values: | 不可能または疑わしい値をチェック：
  - Negative employee counts | 負の従業員数
  - Unrealistic founding years | 非現実的な設立年
  - Empty required fields | 空の必須フィールド
- Correct obvious errors or mark for review: | 明らかなエラーを修正またはレビュー用にマーク：
  ```python
  # Mark suspicious entries
  df['needs_review'] = False
  df.loc[df['employee_count'] < 0, 'needs_review'] = True
  ```

**Bot Guidance:**
- Provides consistency check templates | 一貫性チェックテンプレートを提供
- Asks: "What business rules should your data follow?" | 質問：「あなたのデータはどのようなビジネスルールに従うべきですか？」
- Suggests domain-specific checks for company data | 企業データのドメイン固有のチェックを提案
- Helps decide: "Correct if obvious error, mark for review if uncertain" | 決定を支援：「明らかなエラーの場合は修正、不確実な場合はレビュー用にマーク」

**Expected Output:** Dataset with consistency issues identified and corrected where possible
期待される出力：可能な限り一貫性の問題が特定され修正されたデータセット

**Time Allocation:** 13 minutes | 13分

---

### Step 5: Final Validation and Documentation (15 minutes) | 最終検証と文書化（15分）

**What Students Do:**
- Run final quality check: | 最終品質チェックを実行：
  ```python
  print("Dataset shape:", df.shape)
  print("\nMissing values:")
  print(df.isnull().sum())
  print("\nData types:")
  print(df.dtypes)
  print("\nDuplicate check:", df.duplicated().sum())
  ```
- Create before/after comparison: | 前後比較を作成：
  - Original dataset: X companies, Y duplicates, Z missing values | 元のデータセット：X社、Y重複、Z欠損値
  - Cleaned dataset: A companies, B duplicates, C missing values | クリーニング済みデータセット：A社、B重複、C欠損値
- Export cleaned dataset: `df.to_csv('companies_cleaned.csv', index=False)` | クリーニング済みデータセットをエクスポート：`df.to_csv('companies_cleaned.csv', index=False)`
- Document all cleaning steps in notebook using markdown cells | マークダウンセルを使用してノートブック内のすべてのクリーニングステップを文書化
- Create cleaning report including: | クリーニングレポートを作成：
  - Issues identified | 特定された問題
  - Cleaning operations performed | 実行されたクリーニング操作
  - Impact of each operation | 各操作の影響
  - Remaining limitations | 残りの制限
- Complete AI transparency log if used | 使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Provides validation checklist | 検証チェックリストを提供
- Confirms improvements: "Great! You reduced missing values from 25 to 10" | 改善を確認：「素晴らしい！欠損値を25から10に削減しました」
- Reminds: "Document WHY you made each decision, not just WHAT you did" | 思い出させる：「あなたが何をしたかだけでなく、なぜ各決定を下したかを文書化してください」
- Reviews documentation completeness | 文書の完全性を確認

**Expected Output:** Cleaned dataset, comprehensive cleaning notebook, and detailed cleaning report
期待される出力：クリーニング済みデータセット、包括的なクリーニングノートブック、詳細なクリーニングレポート

**Time Allocation:** 15 minutes | 15分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Google Colab | Google Colab
- Company dataset CSV from Week 6 | 第6週の企業データセットCSV
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 6 company dataset | 第6週企業データセット
- Data cleaning code templates | データクリーニングコードテンプレート
- Cleaning report template | クリーニングレポートテンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Pandas data cleaning cheat sheet | pandasデータクリーニングチートシート
- Common cleaning operations guide | 一般的なクリーニング操作ガイド
- Data type conversion reference | データ型変換リファレンス
- Python string manipulation guide | Python文字列操作ガイド

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI for pandas cleaning function syntax | pandasクリーニング関数構文をAIに尋ねる
- Getting help debugging Python code errors | Pythonコードエラーのデバッグ支援を取得
- Understanding what specific cleaning operations do | 特定のクリーニング操作が何をするかを理解
- Asking for suggestions on handling specific data issues | 特定のデータ問題の処理に関する提案を求める

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "How do I remove duplicates from a pandas DataFrame?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete code suggestions and explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you test the AI's code before using it on your data?
   - Did the code work correctly?
   - Did you understand what the code does?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest non-existent pandas functions?
   - Did you verify the code syntax against pandas documentation?
   - Did the AI's cleaning approach make sense for your data?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Cleaned Company Dataset (required) | クリーニング済み企業データセット（必須）**
   - CSV file with cleaned data | クリーニング済みデータを含むCSVファイル
   - All cleaning operations applied | すべてのクリーニング操作が適用されている
   - Format: CSV file | 形式：CSVファイル

2. **Data Cleaning Notebook (required) | データクリーニングノートブック（必須）**
   - Complete Colab notebook with all code and output | すべてのコードと出力を含む完全なColabノートブック
   - Markdown cells explaining each step | 各ステップを説明するマークダウンセル
   - Code must execute without errors | コードはエラーなしで実行する必要がある
   - Format: .ipynb file | 形式：.ipynbファイル

3. **Data Cleaning Report (required) | データクリーニングレポート（必須）**
   - Before/after comparison statistics | 前後比較統計
   - List of issues identified | 特定された問題のリスト
   - Cleaning operations performed with justification | 正当化を伴って実行されたクリーニング操作
   - Impact of each operation | 各操作の影響
   - Known remaining limitations | 既知の残りの制限
   - Format: Word/PDF or markdown in notebook | 形式：Word/PDFまたはノートブック内のマークダウン

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week07_YourName_DataCleaning | ファイル命名：Week07_あなたの名前_DataCleaning

**Deadline:** End of Week 7 | 第7週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Data Quality Improvement (4 points) | データ品質改善（4ポイント）**
  - Duplicates removed | 重複が削除されている
  - Text standardized (consistent formatting) | テキストが標準化されている（一貫したフォーマット）
  - Data types corrected | データ型が修正されている
  - Measurable improvement in data quality | データ品質の測定可能な改善

- **Python Code Quality (2 points) | Pythonコード品質（2ポイント）**
  - Code executes without errors | コードがエラーなしで実行される
  - Appropriate pandas functions used | 適切なpandas関数が使用されている
  - Code is readable and organized | コードが読みやすく整理されている

- **Documentation (2 points) | 文書化（2ポイント）**
  - Clear explanation of each cleaning step | 各クリーニングステップの明確な説明
  - Justification for cleaning decisions | クリーニング決定の正当化
  - Before/after comparison provided | 前後比較が提供されている
  - Comprehensive cleaning report | 包括的なクリーニングレポート

- **AI Transparency (2 points) | AI透明性（2ポイント）**
  - Complete documentation if AI was used | AIを使用した場合の完全な文書化
  - Proper verification of AI-provided code | AI提供コードの適切な検証
  - OR: Clear statement that no external AI was used | または：外部AIを使用しなかったという明確な声明

**Quality Expectations:**
- Dataset should be noticeably cleaner than original | データセットは元のものよりも明らかにクリーンである必要があります
- Code should be reproducible (runs from start to finish) | コードは再現可能である必要があります（最初から最後まで実行）
- Professional documentation and presentation | プロフェッショナルな文書とプレゼンテーション
- Evidence of understanding, not just copying code | コピーだけでなく理解の証拠
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Can't upload CSV file to Colab | ColabにCSVファイルをアップロードできない**
- **Solution:** Click folder icon on left sidebar, then upload icon. Or mount Google Drive and access files from there. Make sure file name matches what you use in code. | 左サイドバーのフォルダアイコンをクリックし、次にアップロードアイコンをクリック。またはGoogle Driveをマウントしてそこからファイルにアクセス。ファイル名がコードで使用するものと一致することを確認。
- **Bot Assistance:** Bot provides step-by-step file upload instructions with screenshots | ボットはスクリーンショット付きのステップバイステップファイルアップロード手順を提供

**Problem 2: Getting KeyError when trying to access columns | 列にアクセスしようとするとKeyErrorが発生する**
- **Solution:** Check exact column names with `df.columns`. Column names are case-sensitive. Make sure you're using the exact name including any spaces. | `df.columns`で正確な列名を確認。列名は大文字小文字を区別します。スペースを含む正確な名前を使用していることを確認。
- **Bot Assistance:** Bot helps identify correct column names and troubleshoot KeyError | ボットは正しい列名を特定しKeyErrorをトラブルシュートするのを助けます

**Problem 3: Data type conversion creates NaN values | データ型変換がNaN値を作成する**
- **Solution:** This is normal when there's invalid data. Use `errors='coerce'` parameter. Check which values became NaN: `df[df['column'].isna()]`. Decide if you should fix source data or handle these as missing values. | これは無効なデータがある場合は正常です。`errors='coerce'`パラメータを使用。どの値がNaNになったかをチェック：`df[df['column'].isna()]`。ソースデータを修正すべきか、これらを欠損値として処理すべきかを決定。
- **Bot Assistance:** Bot explains why NaN occurs and provides strategies for handling converted values | ボットはなぜNaNが発生するかを説明し、変換された値を処理するための戦略を提供

**Problem 4: Not sure which cleaning operations to apply | どのクリーニング操作を適用すべきか不明**
- **Solution:** Start with the quality assessment - what issues did you find? Address each issue systematically: duplicates first, then formatting, then data types, then consistency. Don't do operations you don't need. | 品質評価から始める - どのような問題を見つけましたか？各問題を体系的に対処：まず重複、次にフォーマット、次にデータ型、次に一貫性。必要のない操作はしない。
- **Bot Assistance:** Bot provides cleaning workflow checklist based on identified issues | ボットは特定された問題に基づいてクリーニングワークフローチェックリストを提供

**Problem 5: Code runs but doesn't seem to change the data | コードは実行されるがデータを変更しないようだ**
- **Solution:** Remember to reassign to the DataFrame: `df = df.drop_duplicates()` not just `df.drop_duplicates()`. Some pandas operations return a new DataFrame. Check with `df.head()` after each operation to see changes. | DataFrameに再割り当てすることを忘れないでください：`df.drop_duplicates()`だけでなく`df = df.drop_duplicates()`。一部のpandas操作は新しいDataFrameを返します。変更を確認するために各操作後に`df.head()`でチェック。
- **Bot Assistance:** Bot explains pandas operation behavior and helps debug reassignment issues | ボットはpandas操作の動作を説明し、再割り当ての問題をデバッグするのを助けます

**Problem 6: Cleaning takes too long or gets overwhelming | クリーニングに時間がかかりすぎるまたは圧倒的になる**
- **Solution:** Focus on the most important issues first: duplicates, obvious errors, required field standardization. It's okay if your data isn't perfect - we'll handle remaining issues in Week 8. Take breaks. Work on one issue at a time. | 最も重要な問題に最初に焦点を当てます：重複、明らかなエラー、必須フィールドの標準化。データが完璧でなくても大丈夫です - 残りの問題は第8週で処理します。休憩を取ります。一度に1つの問題に取り組みます。
- **Bot Assistance:** Bot helps prioritize cleaning tasks and provides encouragement | ボットはクリーニングタスクを優先順位付けし、励ましを提供するのを助けます

**When to Ask for Help:**
- Python code errors you can't resolve | 解決できないPythonコードエラー
- Unsure if a cleaning operation is appropriate for your data | クリーニング操作がデータに適切かどうか不明
- Data quality doesn't improve despite efforts | 努力にもかかわらずデータ品質が改善しない
- Need help interpreting pandas output | pandas出力の解釈の支援が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for code troubleshooting and cleaning strategy | コードトラブルシューティングとクリーニング戦略にはボットを使用
- Share error messages when asking for help - they provide important clues | 助けを求めるときはエラーメッセージを共有 - 重要な手がかりを提供します

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
