# Week 9 Activity: Feature Engineering Basics
# 第9週アクティビティ：特徴量エンジニアリングの基礎

## Activity Information | アクティビティ情報

**Activity Title:** Extracting Features from Company Descriptions | 企業説明から特徴量を抽出
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Create meaningful features from text data for ML classification | ML分類のためにテキストデータから意味のある特徴量を作成する
**Prerequisites:** Week 8 completion - Validated, ML-ready company dataset | 第8週完了 - 検証済みML準備完了企業データセット

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Understand what features are and why they matter for ML | 特徴量とは何か、そしてなぜMLにとって重要かを理解する
- Extract meaningful features from text descriptions | テキスト説明から意味のある特徴量を抽出する
- Create categorical features from company attributes | 企業属性からカテゴリカル特徴量を作成する
- Prepare feature-engineered dataset ready for ML training | ML訓練準備完了の特徴量エンジニアリング済みデータセットを準備する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** What are features? Creating meaningful features from text
講義のコンセプト：特徴量とは？テキストから意味のある特徴量を作成

**Activity Application:** Students apply lecture concepts by transforming their raw company data into ML-usable features. This critical step bridges cleaned data and model training.
アクティビティの適用：学生は生の企業データをML使用可能な特徴量に変換することで講義のコンセプトを適用します。この重要なステップは、クリーニング済みデータとモデル訓練を橋渡しします。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides feature identification, provides feature engineering techniques, validates feature quality, and ensures features are ML-appropriate.
ボットの役割：ML-101ボットは特徴量の特定をガイドし、特徴量エンジニアリング技術を提供し、特徴量の品質を検証し、特徴量がML適切であることを確保します。

**BMAD Workflow Steps:**
1. Bot explains feature concept and importance for ML | ボットがMLの特徴量コンセプトと重要性を説明
2. Bot guides identification of useful features in data | ボットがデータ内の有用な特徴量の特定をガイド
3. Bot provides feature engineering techniques and code | ボットが特徴量エンジニアリング技術とコードを提供
4. Bot assists with text feature extraction | ボットがテキスト特徴量抽出を支援
5. Bot validates features are suitable for classification | ボットが特徴量が分類に適していることを検証

**Bot Portal Interaction Points:**
- Feature identification workshop | 特徴量特定ワークショップ
- Interactive feature engineering tutorial | インタラクティブな特徴量エンジニアリングチュートリアル
- Text analysis guidance | テキスト分析ガイダンス
- Feature quality validation | 特徴量品質検証

**Data Captured:**
- Features identified as relevant | 関連性があると特定された特徴量
- Feature engineering techniques applied | 適用された特徴量エンジニアリング技術
- Text analysis patterns | テキスト分析パターン
- Feature dataset characteristics | 特徴量データセット特性

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Understanding Features for Classification (10 minutes) | 分類のための特徴量の理解（10分）

**What Students Do:**
- Load Week 8 validated dataset in Google Colab | Google Colabで第8週検証済みデータセットをロード
- Review project goal: classify companies you're interested in vs not interested | プロジェクト目標を確認：興味のある企業 vs 興味のない企業を分類
- Brainstorm: What characteristics make a company interesting to you? | ブレインストーム：どのような特性が企業を興味深くしますか？
  - Industry type? | 業界タイプ？
  - Company size? | 企業規模？
  - Keywords in description? | 説明のキーワード？
  - Location? | 所在地？
  - Other attributes? | その他の属性？
- List potential features that could predict your interest | あなたの興味を予測できる潜在的な特徴量をリスト
- Interact with bot to understand feature importance | 特徴量の重要性を理解するためにボットとインタラクション

**Bot Guidance:**
- Explains: "Features are the 'clues' ML uses to make predictions" | 説明：「特徴量はMLが予測を行うために使用する『手がかり』です」
- Asks: "What makes Company A different from Company B in your eyes?" | 質問：「あなたの目には、企業Aと企業Bを何が異なるものにしますか？」
- Provides examples: "If you like tech companies, 'industry=Technology' is a useful feature" | 例を提供：「テクノロジー企業が好きなら、『industry=Technology』は有用な特徴量です」
- Emphasizes: "Good features make it easier for ML to learn patterns" | 強調：「良い特徴量はMLがパターンを学習しやすくします」

**Expected Output:** List of potential features relevant to personal company preferences
期待される出力：個人的な企業の好みに関連する潜在的な特徴量のリスト

**Time Allocation:** 10 minutes | 10分

---

### Step 2: Creating Categorical Features (12 minutes) | カテゴリカル特徴量の作成（12分）

**What Students Do:**
- Encode categorical variables for ML: | ML用にカテゴリカル変数をエンコード：
  ```python
  # One-hot encode industry
  industry_encoded = pd.get_dummies(df['industry'], prefix='industry')
  df = pd.concat([df, industry_encoded], axis=1)

  # One-hot encode location (if using)
  location_encoded = pd.get_dummies(df['location'], prefix='location')
  df = pd.concat([df, location_encoded], axis=1)
  ```
- Create size categories from employee count: | 従業員数からサイズカテゴリを作成：
  ```python
  def categorize_size(count):
      if pd.isna(count):
          return 'Unknown'
      elif count < 50:
          return 'Small'
      elif count < 500:
          return 'Medium'
      else:
          return 'Large'

  df['company_size'] = df['employee_count'].apply(categorize_size)
  size_encoded = pd.get_dummies(df['company_size'], prefix='size')
  df = pd.concat([df, size_encoded], axis=1)
  ```
- Create binary features for yes/no attributes if applicable | 該当する場合、はい/いいえ属性のバイナリ特徴量を作成

**Bot Guidance:**
- Explains one-hot encoding: "Creates separate True/False column for each category" | ワンホットエンコーディングを説明：「各カテゴリに個別のTrue/False列を作成します」
- Shows when to use: "ML models need numbers, not text categories" | いつ使用するかを示す：「MLモデルはテキストカテゴリではなく数値を必要とします」
- Provides code templates for encoding | エンコーディングのコードテンプレートを提供
- Warns: "Be careful with too many categories - creates many columns" | 警告：「カテゴリが多すぎることに注意 - 多くの列を作成します」

**Expected Output:** Dataset with encoded categorical features
期待される出力：エンコードされたカテゴリカル特徴量を含むデータセット

**Time Allocation:** 12 minutes | 12分

---

### Step 3: Text Feature Extraction - Keywords (15 minutes) | テキスト特徴量抽出 - キーワード（15分）

**What Students Do:**
- Define keywords relevant to interests (e.g., "innovation", "global", "startup", etc.) | 興味に関連するキーワードを定義（例：「innovation」、「global」、「startup」など）
- Create features checking if keywords appear in descriptions: | キーワードが説明に現れるかをチェックする特徴量を作成：
  ```python
  # Define your interest keywords
  keywords = ['innovation', 'technology', 'global', 'startup', 'research']

  # Create binary feature for each keyword
  for keyword in keywords:
      df[f'has_{keyword}'] = df['description'].str.lower().str.contains(keyword, na=False).astype(int)

  # Count total keywords present
  df['keyword_count'] = df[[f'has_{keyword}' for keyword in keywords]].sum(axis=1)
  ```
- Create features based on description length: | 説明の長さに基づく特徴量を作成：
  ```python
  df['description_length'] = df['description'].str.len()
  df['description_word_count'] = df['description'].str.split().str.len()
  ```
- Examine keyword presence across companies | 企業間のキーワードの存在を調査

**Bot Guidance:**
- Helps brainstorm relevant keywords based on student interests | 学生の興味に基づいて関連キーワードをブレインストームするのを助ける
- Explains: "Keyword features capture what companies emphasize in descriptions" | 説明：「キーワード特徴量は、企業が説明で強調していることをキャプチャします」
- Provides code for case-insensitive matching: `str.lower()` | 大文字小文字を区別しないマッチングのコードを提供：`str.lower()`
- Suggests: "Start with 5-10 keywords most relevant to your interests" | 提案：「あなたの興味に最も関連する5-10のキーワードから始めてください」
- Shows how to verify features: `df[['company_name', 'has_innovation', 'has_technology']].head()` | 特徴量を検証する方法を示す：`df[['company_name', 'has_innovation', 'has_technology']].head()`

**Expected Output:** Dataset with keyword-based text features
期待される出力：キーワードベースのテキスト特徴量を含むデータセット

**Time Allocation:** 15 minutes | 15分

---

### Step 4: Advanced Text Features - TF-IDF (Optional) (13 minutes) | 高度なテキスト特徴量 - TF-IDF（オプション）（13分）

**What Students Do:**
- Learn about TF-IDF: Term Frequency-Inverse Document Frequency | TF-IDFについて学ぶ：Term Frequency-Inverse Document Frequency
- Apply TF-IDF to company descriptions: | 企業説明にTF-IDFを適用：
  ```python
  from sklearn.feature_extraction.text import TfidfVectorizer

  # Create TF-IDF features (limit to top 20 words)
  tfidf = TfidfVectorizer(max_features=20, stop_words='english')
  tfidf_matrix = tfidf.fit_transform(df['description'].fillna(''))

  # Convert to DataFrame
  tfidf_df = pd.DataFrame(
      tfidf_matrix.toarray(),
      columns=[f'tfidf_{word}' for word in tfidf.get_feature_names_out()]
  )

  # Add to main dataset
  df = pd.concat([df.reset_index(drop=True), tfidf_df], axis=1)

  # See which words are most important
  print("Top TF-IDF features:", tfidf.get_feature_names_out())
  ```
- Examine which words TF-IDF identified as important | TF-IDFがどの単語を重要として特定したかを調査

**Bot Guidance:**
- Explains TF-IDF concept: "Identifies words that are distinctive for each company" | TF-IDFコンセプトを説明：「各企業に特徴的な単語を特定します」
- Provides simple analogy: "Common words like 'the' get low scores; unique words get high scores" | シンプルな類推を提供：「『the』のような一般的な単語は低いスコアを取得；ユニークな単語は高いスコアを取得」
- Helps with parameter tuning: "max_features=20 keeps it manageable for small datasets" | パラメータチューニングを支援：「max_features=20は小さなデータセットのために管理可能に保ちます」
- Notes: "This is optional but can capture nuanced patterns" | 注記：「これはオプションですが、ニュアンスのあるパターンをキャプチャできます」

**Expected Output:** Dataset with TF-IDF features (if implemented)
期待される出力：TF-IDF特徴量を含むデータセット（実装された場合）

**Time Allocation:** 13 minutes | 13分

---

### Step 5: Feature Dataset Preparation and Validation (10 minutes) | 特徴量データセット準備と検証（10分）

**What Students Do:**
- Select final feature set for ML training | ML訓練のための最終特徴量セットを選択
- Remove original text columns (keep only engineered features) | 元のテキスト列を削除（エンジニアリングされた特徴量のみを保持）
- Create clean feature dataset: | クリーンな特徴量データセットを作成：
  ```python
  # Identify feature columns (exclude original data columns)
  feature_columns = [col for col in df.columns if any([
      col.startswith('industry_'),
      col.startswith('location_'),
      col.startswith('size_'),
      col.startswith('has_'),
      col.startswith('tfidf_'),
      col == 'keyword_count',
      col == 'description_length',
      col == 'employee_count'
  ])]

  # Create feature dataset
  features_df = df[['company_name'] + feature_columns].copy()

  print(f"Total features created: {len(feature_columns)}")
  print(f"Feature columns: {feature_columns}")
  ```
- Validate feature dataset: | 特徴量データセットを検証：
  - All features are numeric | すべての特徴量が数値
  - No missing values in features | 特徴量に欠損値なし
  - Features make sense for classification | 特徴量が分類に意味がある
- Export feature dataset: `features_df.to_csv('company_features.csv', index=False)` | 特徴量データセットをエクスポート：`features_df.to_csv('company_features.csv', index=False)`
- Document feature engineering process | 特徴量エンジニアリングプロセスを文書化
- Complete AI transparency log if used | 使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Reviews feature quality checklist | 特徴量品質チェックリストを確認
- Confirms: "✓ All features are numeric - ready for ML!" | 確認：「✓ すべての特徴量が数値です - MLの準備完了！」
- Suggests: "Keep company_name for reference but don't use as feature" | 提案：「参照のために company_name を保持しますが、特徴量として使用しないでください」
- Validates feature count is reasonable: "20-50 features is good for small datasets" | 特徴量カウントが合理的であることを検証：「20-50の特徴量は小さなデータセットに適しています」

**Expected Output:** Clean, validated feature dataset ready for ML training
期待される出力：ML訓練準備完了のクリーンで検証済みの特徴量データセット

**Time Allocation:** 10 minutes | 10分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Google Colab | Google Colab
- Week 8 validated dataset | 第8週検証済みデータセット
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 8 validated company dataset | 第8週検証済み企業データセット
- Feature engineering code templates | 特徴量エンジニアリングコードテンプレート
- Feature documentation template | 特徴量文書テンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Feature engineering guide for classification | 分類のための特徴量エンジニアリングガイド
- One-hot encoding explanation | ワンホットエンコーディング説明
- Text feature extraction techniques | テキスト特徴量抽出技術
- TF-IDF introduction (optional) | TF-IDF入門（オプション）
- Sklearn feature extraction documentation | Sklearn特徴量抽出ドキュメント

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain feature engineering concepts | 特徴量エンジニアリングコンセプトを説明するようAIに依頼
- Getting help with pandas encoding functions | pandasエンコーディング関数の支援を取得
- Understanding TF-IDF and when to use it | TF-IDFとそれをいつ使用するかを理解
- Brainstorming relevant keywords for your interests | あなたの興味に関連するキーワードをブレインストーム

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What are good keywords to extract from company descriptions for job searching?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete keyword suggestions and explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you test if suggested keywords actually appear in your data?
   - Were the feature engineering approaches appropriate for your dataset?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest non-existent pandas or sklearn functions?
   - Were the suggested keywords relevant to your actual interests?
   - Did you verify code works on your specific data?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Feature-Engineered Dataset (required) | 特徴量エンジニアリング済みデータセット（必須）**
   - CSV file with all engineered features | すべてのエンジニアリングされた特徴量を含むCSVファイル
   - All features are numeric | すべての特徴量が数値
   - No missing values | 欠損値なし
   - Format: CSV file | 形式：CSVファイル

2. **Feature Engineering Notebook (required) | 特徴量エンジニアリングノートブック（必須）**
   - Complete Colab notebook with all code | すべてのコードを含む完全なColabノートブック
   - Categorical encoding | カテゴリカルエンコーディング
   - Text feature extraction | テキスト特徴量抽出
   - Feature validation | 特徴量検証
   - Clear explanations of each feature | 各特徴量の明確な説明
   - Format: .ipynb file | 形式：.ipynbファイル

3. **Feature Documentation (required) | 特徴量文書（必須）**
   - List of all features created | 作成されたすべての特徴量のリスト
   - Description of each feature and its purpose | 各特徴量とその目的の説明
   - Rationale for feature selection | 特徴量選択の根拠
   - How features relate to classification goal | 特徴量が分類目標にどのように関連するか
   - Format: Word/PDF or markdown in notebook | 形式：Word/PDFまたはノートブック内のマークダウン

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week09_YourName_FeatureEngineering | ファイル命名：Week09_あなたの名前_FeatureEngineering

**Deadline:** End of Week 9 | 第9週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Categorical Features (2 points) | カテゴリカル特徴量（2ポイント）**
  - Proper one-hot encoding implemented | 適切なワンホットエンコーディングが実装されている
  - Categorical variables appropriately handled | カテゴリカル変数が適切に処理されている

- **Text Features (4 points) | テキスト特徴量（4ポイント）**
  - Relevant keywords identified | 関連キーワードが特定されている
  - Keyword features correctly implemented | キーワード特徴量が正しく実装されている
  - Features align with personal interests/classification goal | 特徴量が個人的な興味/分類目標と一致している
  - Additional text features (length, word count, etc.) | 追加のテキスト特徴量（長さ、単語数など）

- **Feature Quality (2 points) | 特徴量品質（2ポイント）**
  - All features are numeric | すべての特徴量が数値
  - No missing values in feature dataset | 特徴量データセットに欠損値なし
  - Features are ML-ready | 特徴量がML準備完了
  - Reasonable number of features | 合理的な数の特徴量

- **Documentation and AI Transparency (2 points) | 文書化とAI透明性（2ポイント）**
  - Clear explanation of each feature | 各特徴量の明確な説明
  - Well-documented feature engineering process | よく文書化された特徴量エンジニアリングプロセス
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ

**Quality Expectations:**
- Features should be meaningful for classification task | 特徴量は分類タスクに意味がある必要があります
- Code should execute without errors | コードはエラーなしで実行する必要があります
- Clear connection between features and project goal | 特徴量とプロジェクト目標の間の明確なつながり
- Professional documentation | プロフェッショナルな文書化
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: get_dummies() creates too many columns | get_dummies()が多すぎる列を作成する**
- **Solution:** This happens with many unique categories. Consider grouping rare categories into "Other" before encoding. Or focus on top N most common categories. | これは多くのユニークなカテゴリで発生します。エンコーディング前にまれなカテゴリを「その他」にグループ化することを検討。または上位N個の最も一般的なカテゴリに焦点を当てます。
- **Bot Assistance:** Bot helps identify and group rare categories | ボットはまれなカテゴリを特定してグループ化するのを助けます

**Problem 2: Keyword features all showing 0 or all showing 1 | キーワード特徴量がすべて0またはすべて1を表示**
- **Solution:** Check if keywords actually appear in your descriptions. Use `df['description'].str.contains('keyword')` to test each word. May need different keywords more relevant to your specific companies. | キーワードが実際に説明に表示されるかチェック。各単語をテストするために`df['description'].str.contains('keyword')`を使用。あなたの特定の企業により関連する異なるキーワードが必要かもしれません。
- **Bot Assistance:** Bot helps identify which keywords are actually present in the data | ボットはデータに実際に存在するキーワードを特定するのを助けます

**Problem 3: Don't know which keywords to use | どのキーワードを使用すべきかわからない**
- **Solution:** Read through some company descriptions. What words stand out? What words would indicate a company you'd like? Start with 5 obvious ones and add more based on what you find. | いくつかの企業説明を読んでください。どの単語が目立ちますか？どの単語があなたが好きな企業を示しますか？5つの明らかなものから始めて、見つけたものに基づいてさらに追加します。
- **Bot Assistance:** Bot can analyze your descriptions and suggest common themes and keywords | ボットはあなたの説明を分析し、一般的なテーマとキーワードを提案できます

**Problem 4: TF-IDF returns error or strange results | TF-IDFがエラーまたは奇妙な結果を返す**
- **Solution:** Make sure descriptions are filled (use fillna('')). Check that sklearn is imported. Start with small max_features (like 10) to debug. TF-IDF is optional - if too complex, stick with keyword features. | 説明が埋められていることを確認（fillna('')を使用）。sklearnがインポートされているかチェック。デバッグのために小さなmax_features（10など）から始めます。TF-IDFはオプション - 複雑すぎる場合は、キーワード特徴量にこだわります。
- **Bot Assistance:** Bot helps troubleshoot TF-IDF issues and provides simpler alternatives | ボットはTF-IDFの問題をトラブルシュートし、よりシンプルな代替案を提供します

**Problem 5: Too few or too many features created | 作成された特徴量が少なすぎるまたは多すぎる**
- **Solution:** Aim for 15-50 features for small datasets. Too few: add more keywords, include more categorical variables. Too many: reduce categories, limit keywords, skip TF-IDF. Quality over quantity. | 小さなデータセットには15-50の特徴量を目指します。少なすぎる：より多くのキーワードを追加、より多くのカテゴリカル変数を含める。多すぎる：カテゴリを削減、キーワードを制限、TF-IDFをスキップ。量より質。
- **Bot Assistance:** Bot reviews feature count and suggests adjustments | ボットは特徴量カウントを確認し、調整を提案します

**Problem 6: Features don't seem relevant to classification goal | 特徴量が分類目標に関連しないようだ**
- **Solution:** Revisit your goal: What makes a company interesting to YOU? Features should capture those characteristics. If you like innovative companies, include innovation-related keywords. If size matters, include size features. Personalize to YOUR preferences. | あなたの目標を再訪：何が企業をあなたにとって興味深くしますか？特徴量はそれらの特性をキャプチャする必要があります。革新的な企業が好きなら、イノベーション関連のキーワードを含めます。サイズが重要なら、サイズ特徴量を含めます。あなたの好みにパーソナライズ。
- **Bot Assistance:** Bot helps align features with personal classification goals | ボットは特徴量を個人的な分類目標と一致させるのを助けます

**When to Ask for Help:**
- Encoding creates errors or unexpected results | エンコーディングがエラーまたは予期しない結果を作成
- Unclear which features are important for your goal | あなたの目標にどの特徴量が重要か不明確
- Feature dataset has quality issues | 特徴量データセットに品質問題がある
- Want feedback on feature relevance | 特徴量の関連性についてフィードバックが必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for feature suggestions and validation | 特徴量の提案と検証にはボットを使用
- Share your feature list with bot for relevance check | 関連性チェックのために特徴量リストをボットと共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
