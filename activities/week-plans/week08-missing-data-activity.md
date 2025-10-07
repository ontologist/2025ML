# Week 8 Activity: Handling Missing Data and Outliers
# 第8週アクティビティ：欠損データと外れ値の処理

## Activity Information | アクティビティ情報

**Activity Title:** Applying Missing Data Strategies and Data Validation | 欠損データ戦略の適用とデータ検証
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Handle missing data and validate dataset quality | 欠損データを処理し、データセット品質を検証する
**Prerequisites:** Week 7 completion - Cleaned company dataset | 第7週完了 - クリーニング済み企業データセット

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Analyze patterns and causes of missing data in their dataset | データセット内の欠損データのパターンと原因を分析する
- Apply appropriate strategies for handling missing values (deletion, imputation, flagging) | 欠損値を処理するための適切な戦略を適用する（削除、代入、フラグ付け）
- Identify and handle outliers in numeric data | 数値データ内の外れ値を特定して処理する
- Validate dataset quality and readiness for ML | データセット品質とML準備状況を検証する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Strategies for missing data, identifying outliers
講義のコンセプト：欠損データの戦略、外れ値の特定

**Activity Application:** Students apply lecture concepts by analyzing and resolving missing data issues in their cleaned company dataset, preparing it for feature engineering and ML model training.
アクティビティの適用：学生はクリーニング済み企業データセット内の欠損データ問題を分析および解決することで講義のコンセプトを適用し、特徴量エンジニアリングとMLモデル訓練のためにそれを準備します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides missing data analysis, recommends appropriate handling strategies, validates decisions, and ensures dataset quality for ML.
ボットの役割：ML-101ボットは欠損データ分析をガイドし、適切な処理戦略を推奨し、決定を検証し、ML用のデータセット品質を確保します。

**BMAD Workflow Steps:**
1. Bot guides comprehensive missing data analysis | ボットが包括的な欠損データ分析をガイド
2. Bot recommends strategies based on data patterns | ボットがデータパターンに基づいて戦略を推奨
3. Bot assists with implementing handling techniques | ボットが処理技術の実装を支援
4. Bot guides outlier detection and treatment | ボットが外れ値の検出と処理をガイド
5. Bot validates final dataset quality and ML-readiness | ボットが最終データセット品質とML準備状況を検証

**Bot Portal Interaction Points:**
- Missing data diagnostic dashboard | 欠損データ診断ダッシュボード
- Strategy recommendation engine | 戦略推奨エンジン
- Interactive implementation tutorial | インタラクティブな実装チュートリアル
- Quality validation checkpoint | 品質検証チェックポイント

**Data Captured:**
- Missing data patterns identified | 特定された欠損データパターン
- Strategies selected and rationale | 選択された戦略と根拠
- Implementation effectiveness | 実装の有効性
- Final dataset quality metrics | 最終データセット品質メトリクス

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Missing Data Analysis (12 minutes) | 欠損データ分析（12分）

**What Students Do:**
- Open Week 7 cleaned dataset in Google Colab | Google Colabで第7週のクリーニング済みデータセットを開く
- Calculate missing value statistics: | 欠損値統計を計算：
  ```python
  # Count missing values per column
  missing_counts = df.isnull().sum()
  missing_percent = (df.isnull().sum() / len(df)) * 100

  missing_summary = pd.DataFrame({
      'Missing_Count': missing_counts,
      'Missing_Percent': missing_percent
  })
  print(missing_summary[missing_summary['Missing_Count'] > 0])
  ```
- Visualize missing data patterns: | 欠損データパターンを可視化：
  ```python
  import matplotlib.pyplot as plt
  missing_summary[missing_summary['Missing_Count'] > 0].plot(kind='bar', y='Missing_Percent')
  plt.title('Missing Data by Column')
  plt.ylabel('Percentage Missing')
  ```
- Analyze patterns: Are certain fields consistently missing? Are they random? | パターンを分析：特定のフィールドが一貫して欠落していますか？ランダムですか？
- Categorize missing data by importance (critical vs optional fields) | 重要性で欠損データを分類（重要 vs オプションフィールド）

**Bot Guidance:**
- Provides analysis code templates | 分析コードテンプレートを提供
- Asks diagnostic questions: "Which columns have the most missing data? Why?" | 診断的質問：「どの列が最も多くの欠損データを持っていますか？なぜですか？」
- Helps interpret patterns: "Missing descriptions might mean company doesn't share that info" | パターンを解釈するのを助ける：「欠落している説明は、企業がその情報を共有していないことを意味するかもしれません」
- Guides categorization: "Company name is critical; revenue might be optional" | 分類をガイド：「企業名は重要です；収益はオプションかもしれません」

**Expected Output:** Comprehensive missing data analysis with visualizations and categorization
期待される出力：可視化と分類を伴う包括的な欠損データ分析

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Strategy Selection for Missing Data (10 minutes) | 欠損データの戦略選択（10分）

**What Students Do:**
- For each column with missing data, decide on strategy: | 欠損データを持つ各列について、戦略を決定：
  - **Deletion:** Remove rows with missing critical information | 削除：重要な情報が欠落している行を削除
  - **Imputation:** Fill with meaningful values (mean, median, mode, or category like "Unknown") | 代入：意味のある値で埋める（平均、中央値、最頻値、または「不明」のようなカテゴリ）
  - **Keep as-is:** Leave empty if it won't affect ML model | そのままにする：MLモデルに影響しない場合は空のままにする
  - **Create indicator:** Add flag column showing value was missing | インジケーターを作成：値が欠落していることを示すフラグ列を追加
- Document decision rationale for each column | 各列の決定根拠を文書化
- Create strategy plan table: | 戦略計画表を作成：
  - Column name | 列名
  - Missing percentage | 欠損パーセンテージ
  - Chosen strategy | 選択された戦略
  - Rationale | 根拠

**Bot Guidance:**
- Presents decision framework: | 決定フレームワークを提示：
  - "If <5% missing and not critical: delete rows" | 「<5%欠落かつ重要でない場合：行を削除」
  - "If numeric: consider mean/median imputation" | 「数値の場合：平均/中央値代入を検討」
  - "If categorical: use mode or add 'Unknown' category" | 「カテゴリカルの場合：最頻値を使用または「不明」カテゴリを追加」
  - "If >30% missing: question if field is needed" | 「>30%欠落の場合：フィールドが必要かどうかを質問」
- Asks: "What would be a reasonable value to fill in? Does it make sense for your data?" | 質問：「埋めるための合理的な値は何ですか？あなたのデータに意味がありますか？」
- Warns about risks: "Be careful with imputation - you're adding information that wasn't there" | リスクについて警告：「代入には注意してください - そこになかった情報を追加しています」

**Expected Output:** Strategy plan document with clear rationale for each decision
期待される出力：各決定の明確な根拠を含む戦略計画文書

**Time Allocation:** 10 minutes | 10分

---

### Step 3: Implementing Missing Data Strategies (15 minutes) | 欠損データ戦略の実装（15分）

**What Students Do:**
- Implement chosen strategies using Python: | Pythonを使用して選択された戦略を実装：

  **Deletion approach:**
  ```python
  # Remove rows where critical field is missing
  df = df.dropna(subset=['company_name', 'industry'])
  ```

  **Imputation approaches:**
  ```python
  # Fill numeric with median
  df['employee_count'].fillna(df['employee_count'].median(), inplace=True)

  # Fill categorical with mode or "Unknown"
  df['location'].fillna('Unknown', inplace=True)

  # Fill text fields with placeholder
  df['description'].fillna('No description available', inplace=True)
  ```

  **Create missing indicator:**
  ```python
  # Create flag before imputing
  df['revenue_was_missing'] = df['revenue'].isnull().astype(int)
  # Then fill
  df['revenue'].fillna(df['revenue'].median(), inplace=True)
  ```

- Verify implementation: | 実装を検証：
  ```python
  # Check missing values after handling
  print("Missing values after handling:")
  print(df.isnull().sum())
  ```
- Document what was done for each field | 各フィールドで何が行われたかを文書化

**Bot Guidance:**
- Provides code templates for each strategy | 各戦略のコードテンプレートを提供
- Explains parameters: "inplace=True modifies the original DataFrame" | パラメータを説明：「inplace=Trueは元のDataFrameを変更します」
- Troubleshoots errors: "TypeError often means you're trying to fill wrong data type" | エラーをトラブルシュート：「TypeErrorは間違ったデータ型を埋めようとしていることを意味することがよくあります」
- Validates results: "Great! You reduced missing values from 45 to 5" | 結果を検証：「素晴らしい！欠損値を45から5に削減しました」

**Expected Output:** Dataset with missing data handled according to strategy plan
期待される出力：戦略計画に従って欠損データが処理されたデータセット

**Time Allocation:** 15 minutes | 15分

---

### Step 4: Outlier Detection and Treatment (13 minutes) | 外れ値の検出と処理（13分）

**What Students Do:**
- Identify numeric columns for outlier analysis | 外れ値分析のための数値列を特定
- Detect outliers using statistical methods: | 統計的方法を使用して外れ値を検出：
  ```python
  # Calculate IQR for each numeric column
  Q1 = df['employee_count'].quantile(0.25)
  Q3 = df['employee_count'].quantile(0.75)
  IQR = Q3 - Q1

  # Define outlier bounds
  lower_bound = Q1 - 1.5 * IQR
  upper_bound = Q3 + 1.5 * IQR

  # Find outliers
  outliers = df[(df['employee_count'] < lower_bound) | (df['employee_count'] > upper_bound)]
  print(f"Found {len(outliers)} outliers in employee_count")
  ```
- Visualize outliers using box plots: | ボックスプロットを使用して外れ値を可視化：
  ```python
  df.boxplot(column='employee_count')
  plt.title('Employee Count Distribution')
  ```
- Decide treatment for each outlier: | 各外れ値の処理を決定：
  - **Keep:** Legitimate extreme values (e.g., very large companies) | 保持：正当な極値（例：非常に大きな企業）
  - **Remove:** Clear errors (e.g., negative employee count) | 削除：明確なエラー（例：負の従業員数）
  - **Cap:** Limit extreme values to reasonable maximum | 制限：極値を合理的な最大値に制限
- Implement treatments | 処理を実装

**Bot Guidance:**
- Explains IQR method: "Values beyond 1.5*IQR from quartiles are considered outliers" | IQR方法を説明：「四分位数から1.5*IQRを超える値は外れ値と見なされます」
- Helps interpret: "Is this a true outlier or just a very large company?" | 解釈を助ける：「これは真の外れ値ですか、それともただの非常に大きな企業ですか？」
- Suggests context-specific decisions: "For company data, large values might be legitimate" | コンテキスト固有の決定を提案：「企業データの場合、大きな値は正当かもしれません」
- Provides capping code if needed: `df['column'] = df['column'].clip(lower=min, upper=max)` | 必要に応じてキャッピングコードを提供：`df['column'] = df['column'].clip(lower=min, upper=max)`

**Expected Output:** Outlier analysis report and treated dataset with justifications
期待される出力：外れ値分析レポートと正当化を伴う処理されたデータセット

**Time Allocation:** 13 minutes | 13分

---

### Step 5: Final Validation and ML-Readiness Check (10 minutes) | 最終検証とML準備状況チェック（10分）

**What Students Do:**
- Run comprehensive data quality validation: | 包括的なデータ品質検証を実行：
  ```python
  print("=== Final Dataset Quality Report ===")
  print(f"Total companies: {len(df)}")
  print(f"\nShape: {df.shape}")
  print(f"\nMissing values:\n{df.isnull().sum()}")
  print(f"\nData types:\n{df.dtypes}")
  print(f"\nDuplicate rows: {df.duplicated().sum()}")
  print(f"\nBasic statistics:\n{df.describe()}")
  ```
- Check ML-readiness criteria: | ML準備状況基準をチェック：
  - Minimum 20 companies | 最低20社
  - Required fields complete (>90%) | 必須フィールドが完全（>90%）
  - No duplicates | 重複なし
  - Appropriate data types | 適切なデータ型
  - Reasonable value ranges | 合理的な値の範囲
- Create before/after comparison across Weeks 6, 7, and 8 | 第6週、第7週、第8週にわたる前後比較を作成
- Export final validated dataset: `df.to_csv('companies_final.csv', index=False)` | 最終検証済みデータセットをエクスポート：`df.to_csv('companies_final.csv', index=False)`
- Document complete data preparation journey | 完全なデータ準備の旅を文書化
- Complete AI transparency log if used | 使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Runs automated ML-readiness checklist | 自動ML準備状況チェックリストを実行
- Confirms: "✓ Your dataset meets all requirements for ML training!" | 確認：「✓ あなたのデータセットはML訓練のすべての要件を満たしています！」
- Flags any remaining issues: "⚠ Industry field still has 15% missing - consider addressing" | 残りの問題をフラグ：「⚠ 業界フィールドにまだ15%欠落があります - 対処を検討してください」
- Celebrates progress: "From raw data to ML-ready dataset - great work!" | 進捗を祝う：「生データからML準備完了データセットへ - 素晴らしい仕事！」

**Expected Output:** Validated, ML-ready dataset with comprehensive quality report
期待される出力：包括的な品質レポートを伴う検証済みML準備完了データセット

**Time Allocation:** 10 minutes | 10分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Google Colab | Google Colab
- Week 7 cleaned dataset | 第7週クリーニング済みデータセット
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 7 cleaned company dataset | 第7週クリーニング済み企業データセット
- Missing data strategy template | 欠損データ戦略テンプレート
- ML-readiness checklist | ML準備状況チェックリスト
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Missing data handling strategies guide | 欠損データ処理戦略ガイド
- Outlier detection methods reference | 外れ値検出方法リファレンス
- Pandas fillna() and dropna() documentation | Pandas fillna()およびdropna()ドキュメント
- Data validation best practices | データ検証のベストプラクティス

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI about missing data handling strategies | 欠損データ処理戦略についてAIに尋ねる
- Getting help with pandas fillna() syntax | pandas fillna()構文の支援を取得
- Understanding outlier detection methods | 外れ値検出方法の理解
- Debugging imputation code | 代入コードのデバッグ

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What's the best way to handle missing values in a categorical column?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI suggestions and code

3. **Document verification process** | 検証プロセスを文書化
   - Did you test the AI's suggested approach on your data?
   - Was the imputation method appropriate for your field?
   - Did you verify the results made sense?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest non-existent pandas methods?
   - Were the imputation strategies statistically sound?
   - Did you verify recommendations against course materials?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Final Validated Dataset (required) | 最終検証済みデータセット（必須）**
   - CSV file with all missing data handled | すべての欠損データが処理されたCSVファイル
   - Outliers addressed appropriately | 外れ値が適切に対処されている
   - ML-ready quality | ML準備完了品質
   - Format: CSV file | 形式：CSVファイル

2. **Missing Data Handling Notebook (required) | 欠損データ処理ノートブック（必須）**
   - Complete Colab notebook with all analysis and code | すべての分析とコードを含む完全なColabノートブック
   - Missing data analysis and visualizations | 欠損データ分析と可視化
   - Strategy implementation code | 戦略実装コード
   - Outlier detection and treatment | 外れ値の検出と処理
   - Final validation | 最終検証
   - Format: .ipynb file | 形式：.ipynbファイル

3. **Data Preparation Report (required) | データ準備レポート（必須）**
   - Missing data analysis summary | 欠損データ分析要約
   - Strategy plan with rationale for each column | 各列の根拠を含む戦略計画
   - Outlier treatment decisions | 外れ値処理の決定
   - Before/after comparison (Weeks 6 → 7 → 8) | 前後比較（第6週 → 第7週 → 第8週）
   - ML-readiness validation results | ML準備状況検証結果
   - Complete data preparation journey documentation | 完全なデータ準備の旅の文書化
   - Format: Word/PDF or markdown in notebook | 形式：Word/PDFまたはノートブック内のマークダウン

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week08_YourName_MissingData | ファイル命名：Week08_あなたの名前_MissingData

**Deadline:** End of Week 8 | 第8週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Missing Data Analysis (2 points) | 欠損データ分析（2ポイント）**
  - Comprehensive analysis of missing patterns | 欠損パターンの包括的な分析
  - Appropriate categorization by importance | 重要性による適切な分類
  - Clear visualizations | 明確な可視化

- **Strategy Implementation (4 points) | 戦略実装（4ポイント）**
  - Appropriate strategy chosen for each column | 各列に対して適切な戦略が選択されている
  - Clear rationale documented | 明確な根拠が文書化されている
  - Correct implementation in Python | Pythonでの正しい実装
  - Significant reduction in missing data | 欠損データの大幅な削減

- **Outlier Treatment (2 points) | 外れ値処理（2ポイント）**
  - Outliers correctly identified | 外れ値が正しく特定されている
  - Appropriate treatment decisions | 適切な処理決定
  - Justifications provided | 正当化が提供されている

- **Validation and AI Transparency (2 points) | 検証とAI透明性（2ポイント）**
  - Dataset meets ML-readiness criteria | データセットがML準備状況基準を満たしている
  - Comprehensive quality report | 包括的な品質レポート
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ

**Quality Expectations:**
- Dataset should be significantly improved from Week 7 | データセットは第7週から大幅に改善されている必要があります
- All decisions should be well-justified | すべての決定がよく正当化されている必要があります
- Code should execute without errors | コードはエラーなしで実行する必要があります
- Professional documentation throughout | 全体を通してプロフェッショナルな文書化
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Imputation creates unrealistic values | 代入が非現実的な値を作成する**
- **Solution:** Check if mean/median makes sense for your data. For some fields, "Unknown" category might be better than numeric imputation. Consider domain knowledge - would this value exist in real world? | 平均/中央値があなたのデータに意味があるかチェック。一部のフィールドでは、数値代入よりも「不明」カテゴリの方が良いかもしれません。ドメイン知識を検討 - この値は現実世界に存在しますか？
- **Bot Assistance:** Bot helps evaluate if imputation method is appropriate for specific fields | ボットは特定のフィールドに対して代入方法が適切かどうかを評価するのを助けます

**Problem 2: Too much data deleted when dropping rows with missing values | 欠損値を持つ行を削除しすぎてデータが多く削除される**
- **Solution:** Be selective - only drop for critical missing fields. For others, use imputation or keep as-is. Check percentage: if deleting >20% of data, reconsider approach. | 選択的に - 重要な欠落フィールドのみ削除。その他はimputation または そのままにする。パーセンテージを確認：データの>20%を削除する場合、アプローチを再考。
- **Bot Assistance:** Bot warns when deletion would remove too many rows and suggests alternatives | ボットは削除が多くの行を削除する場合に警告し、代替案を提案

**Problem 3: Can't decide which strategy to use | どの戦略を使用すべきか決められない**
- **Solution:** Consider: Is field critical? What's the missing percentage? What type of data? Start with safest option ("Unknown" for categories, median for numbers). You can always revise. | 考慮：フィールドは重要ですか？欠損パーセンテージは？どのタイプのデータですか？最も安全なオプションから始める（カテゴリには「不明」、数値には中央値）。いつでも修正できます。
- **Bot Assistance:** Bot provides decision tree to help choose appropriate strategy | ボットは適切な戦略を選択するのを助ける決定木を提供

**Problem 4: All values in a column appear as outliers | 列のすべての値が外れ値として表示される**
- **Solution:** Check if data distribution is highly skewed. IQR method assumes normal distribution. For skewed data, use different thresholds or domain knowledge instead of pure statistics. | データ分布が非常に歪んでいるかチェック。IQR方法は正規分布を仮定します。歪んだデータの場合、純粋な統計の代わりに異なる閾値またはドメイン知識を使用。
- **Bot Assistance:** Bot helps interpret distribution and suggests appropriate outlier detection methods | ボットは分布を解釈し、適切な外れ値検出方法を提案するのを助けます

**Problem 5: fillna() doesn't seem to work | fillna()が機能しないようだ**
- **Solution:** Remember to use `inplace=True` or reassign: `df['col'] = df['col'].fillna(value)`. Check data type matches - can't fill numeric with string. Verify column name is correct. | `inplace=True`を使用するか再割り当てすることを忘れないでください：`df['col'] = df['col'].fillna(value)`。データ型が一致することを確認 - 文字列で数値を埋めることはできません。列名が正しいことを確認。
- **Bot Assistance:** Bot helps debug fillna() issues and checks for common mistakes | ボットはfillna()の問題をデバッグし、一般的な間違いをチェックするのを助けます

**Problem 6: Don't know if dataset is "good enough" for ML | データセットがMLに「十分」かどうかわからない**
- **Solution:** Use bot's ML-readiness checklist: 20+ companies, <10% missing in required fields, no duplicates, reasonable value ranges. If you meet these, you're ready! Perfect data doesn't exist. | ボットのML準備状況チェックリストを使用：20社以上、必須フィールドで<10%欠落、重複なし、合理的な値の範囲。これらを満たせば、準備完了！完璧なデータは存在しません。
- **Bot Assistance:** Bot validates dataset against ML requirements and confirms readiness | ボットはML要件に照らしてデータセットを検証し、準備状況を確認

**When to Ask for Help:**
- Unsure which missing data strategy is appropriate | どの欠損データ戦略が適切か不明
- Dataset quality not improving | データセット品質が改善しない
- Outlier treatment decisions unclear | 外れ値処理の決定が不明確
- Not confident dataset is ML-ready | データセットがML準備完了であることに自信がない

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for strategy recommendations and validation | 戦略推奨と検証にはボットを使用
- Share your quality report with bot for feedback | フィードバックのために品質レポートをボットと共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
