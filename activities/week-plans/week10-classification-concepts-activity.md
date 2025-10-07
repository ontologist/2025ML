# Week 10 Activity: Classification Concepts and ML Models
# 第10週アクティビティ：分類のコンセプトとMLモデル

## Activity Information | アクティビティ情報

**Activity Title:** Manual Classification and Creating Training Labels | 手動分類と訓練ラベルの作成
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Understand classification and create labeled training dataset | 分類を理解し、ラベル付き訓練データセットを作成する
**Prerequisites:** Week 9 completion - Feature-engineered company dataset | 第9週完了 - 特徴量エンジニアリング済み企業データセット

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Understand what classification means in ML context | MLコンテキストで分類が何を意味するかを理解する
- Manually classify companies based on personal preferences | 個人的な好みに基づいて企業を手動で分類する
- Create labeled training dataset with target variable | ターゲット変数を含むラベル付き訓練データセットを作成する
- Understand the connection between features, labels, and ML model training | 特徴量、ラベル、MLモデル訓練の間のつながりを理解する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** What is classification? How ML models learn, training vs testing
講義のコンセプト：分類とは？MLモデルの学習方法、訓練vsテスト

**Activity Application:** Students apply lecture concepts by manually classifying their companies, experiencing the decision-making process they want ML to automate. This creates the labeled data needed for supervised learning.
アクティビティの適用：学生は企業を手動で分類することで講義のコンセプトを適用し、MLに自動化してほしい意思決定プロセスを体験します。これは教師あり学習に必要なラベル付きデータを作成します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot explains classification concepts, guides manual labeling process, ensures label quality, and prepares dataset for ML training.
ボットの役割：ML-101ボットは分類コンセプトを説明し、手動ラベリングプロセスをガイドし、ラベルの品質を確保し、ML訓練のためにデータセットを準備します。

**BMAD Workflow Steps:**
1. Bot explains classification and supervised learning concepts | ボットが分類と教師あり学習のコンセプトを説明
2. Bot guides systematic manual classification process | ボットが体系的な手動分類プロセスをガイド
3. Bot helps students articulate classification criteria | ボットが学生が分類基準を明確にするのを助ける
4. Bot validates label distribution and quality | ボットがラベルの分布と品質を検証
5. Bot prepares dataset for model training | ボットがモデル訓練のためにデータセットを準備

**Bot Portal Interaction Points:**
- Classification concept tutorial | 分類コンセプトチュートリアル
- Interactive labeling interface | インタラクティブなラベリングインターフェース
- Label quality validation | ラベル品質検証
- Training dataset preparation | 訓練データセット準備

**Data Captured:**
- Classification criteria articulated | 明確にされた分類基準
- Manual labeling decisions | 手動ラベリングの決定
- Label distribution patterns | ラベル分布パターン
- Training dataset characteristics | 訓練データセット特性

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Understanding Classification Concepts (10 minutes) | 分類コンセプトの理解（10分）

**What Students Do:**
- Review what classification means in ML | MLでの分類の意味を確認
- Understand supervised learning concept: | 教師あり学習のコンセプトを理解：
  - Features (X): Company characteristics | 特徴量（X）：企業の特性
  - Labels (y): Your decision (interested or not) | ラベル（y）：あなたの決定（興味があるかどうか）
  - Goal: ML learns to predict labels from features | 目標：MLは特徴量からラベルを予測することを学習
- Review project goal: Build model to classify companies you'd be interested in | プロジェクト目標を確認：興味のある企業を分類するモデルを構築
- Interact with bot to understand how classification works | 分類がどのように機能するかを理解するためにボットとインタラクション
- See examples of classification in daily life: spam detection, product recommendations | 日常生活における分類の例を見る：スパム検出、製品推薦

**Bot Guidance:**
- Explains: "Classification puts things into categories - like sorting mail into inbox vs spam" | 説明：「分類は物をカテゴリに入れます - 受信トレイvsスパムにメールを分類するように」
- Shows project context: "You'll teach ML to identify companies YOU find interesting" | プロジェクトのコンテキストを示す：「あなたはMLにあなたが興味深いと思う企業を特定するよう教えます」
- Explains training process: "ML studies your examples to learn patterns" | 訓練プロセスを説明：「MLはパターンを学習するためにあなたの例を研究します」
- Emphasizes: "Your labels teach the model what you like" | 強調：「あなたのラベルはモデルにあなたが好きなものを教えます」

**Expected Output:** Understanding of classification and how it applies to project
期待される出力：分類の理解とそれがプロジェクトにどのように適用されるか

**Time Allocation:** 10 minutes | 10分

---

### Step 2: Defining Classification Criteria (10 minutes) | 分類基準の定義（10分）

**What Students Do:**
- Load Week 9 feature dataset in Google Colab | Google Colabで第9週の特徴量データセットをロード
- Articulate clear criteria for "interested" vs "not interested": | 「興味がある」vs「興味がない」の明確な基準を明確にする：
  - What industries do you prefer? | どの業界を好みますか？
  - Does company size matter to you? | 企業規模はあなたにとって重要ですか？
  - What keywords indicate interesting companies? | どのキーワードが興味深い企業を示しますか？
  - What location preferences do you have? | どの所在地の好みがありますか？
  - Any other important factors? | 他の重要な要因はありますか？
- Write down explicit classification rules | 明示的な分類ルールを書き留める
- Discuss with bot to refine criteria | 基準を洗練するためにボットと議論
- Create classification guide for consistency | 一貫性のための分類ガイドを作成

**Bot Guidance:**
- Asks guiding questions: "What makes Company A appealing to you?" | ガイド質問を行う：「企業Aをあなたに魅力的にするものは何ですか？」
- Helps clarify vague preferences: "Define what 'innovative' means to you" | 漠然とした好みを明確にするのを助ける：「あなたにとって『革新的』が何を意味するかを定義してください」
- Encourages specificity: "Try to make rules you can consistently apply" | 具体性を奨励：「一貫して適用できるルールを作成してみてください」
- Validates criteria are related to features: "Do your features capture these preferences?" | 基準が特徴量に関連していることを検証：「あなたの特徴量はこれらの好みをキャプチャしていますか？」

**Expected Output:** Written classification criteria guide
期待される出力：書面による分類基準ガイド

**Time Allocation:** 10 minutes | 10分

---

### Step 3: Manual Company Classification (20 minutes) | 手動企業分類（20分）

**What Students Do:**
- Review each company in dataset one by one | データセット内の各企業を1つずつ確認
- For each company, decide: Interested (1) or Not Interested (0) | 各企業について決定：興味がある（1）または興味がない（0）
- Apply your defined criteria consistently | 定義された基準を一貫して適用
- Create label column in Python: | Pythonでラベル列を作成：
  ```python
  # Add label column (will fill manually)
  df['label'] = None

  # Display companies for manual labeling
  for idx, row in df.iterrows():
      print(f"\n--- Company {idx + 1} ---")
      print(f"Name: {row['company_name']}")
      print(f"Industry: {row.get('industry', 'Unknown')}")
      print(f"Size: {row.get('company_size', 'Unknown')}")
      print(f"Description: {row.get('description', 'No description')[:200]}...")

      # Manually assign label
      label = input("Interested? (1 = yes, 0 = no): ")
      df.at[idx, 'label'] = int(label)

  # Save progress
  df.to_csv('labeled_companies.csv', index=False)
  ```
- Alternative: Create spreadsheet with companies and add label column manually | 代替：企業を含むスプレッドシートを作成し、ラベル列を手動で追加
- Document reasoning for borderline cases | 境界線ケースの推論を文書化

**Bot Guidance:**
- Provides labeling interface or code template | ラベリングインターフェースまたはコードテンプレートを提供
- Reminds of criteria during labeling process | ラベリングプロセス中に基準を思い出させる
- Tracks progress: "You've labeled 15 out of 25 companies" | 進捗を追跡：「25社のうち15社をラベル付けしました」
- Flags inconsistencies: "You labeled similar companies differently - review criteria?" | 不整合をフラグ：「類似の企業を異なるようにラベル付けしました - 基準を確認しますか？」
- Encourages thoughtfulness: "Take your time - quality labels = better ML model" | 思慮深さを奨励：「時間をかけてください - 高品質のラベル = より良いMLモデル」

**Expected Output:** Fully labeled dataset with interest labels (1/0) for all companies
期待される出力：すべての企業の興味ラベル（1/0）を含む完全にラベル付けされたデータセット

**Time Allocation:** 20 minutes | 20分

---

### Step 4: Label Quality Check and Balance Analysis (12 minutes) | ラベル品質チェックとバランス分析（12分）

**What Students Do:**
- Analyze label distribution: | ラベル分布を分析：
  ```python
  import matplotlib.pyplot as plt

  # Count labels
  label_counts = df['label'].value_counts()
  print("Label distribution:")
  print(f"Interested (1): {label_counts.get(1, 0)}")
  print(f"Not Interested (0): {label_counts.get(0, 0)}")

  # Visualize
  label_counts.plot(kind='bar')
  plt.title('Label Distribution')
  plt.xlabel('Label')
  plt.ylabel('Count')
  plt.xticks([0, 1], ['Not Interested', 'Interested'], rotation=0)
  plt.show()

  # Calculate balance
  balance_ratio = min(label_counts) / max(label_counts)
  print(f"\nBalance ratio: {balance_ratio:.2f}")
  if balance_ratio < 0.3:
      print("⚠ Warning: Very imbalanced labels - consider relabeling some companies")
  ```
- Check for label consistency: | ラベルの一貫性をチェック：
  - Review similar companies have similar labels | 類似の企業が類似のラベルを持つことを確認
  - Verify labels match your criteria | ラベルが基準と一致することを検証
- If very imbalanced (e.g., 90% one class), consider relabeling some | 非常に不均衡な場合（例：90%が1つのクラス）、いくつかを再ラベル付けすることを検討
- Document label distribution and any concerns | ラベル分布と懸念事項を文書化

**Bot Guidance:**
- Explains label balance importance: "ML learns better with balanced examples" | ラベルバランスの重要性を説明：「MLはバランスの取れた例でより良く学習します」
- Provides balance guidelines: "Aim for 30-70% split, closer to 50-50 is better" | バランスガイドラインを提供：「30-70%の分割を目指し、50-50に近い方が良いです」
- Suggests adjustments if needed: "Consider being more selective OR more lenient to balance" | 必要に応じて調整を提案：「バランスを取るためにより選択的またはより寛大であることを検討してください」
- Validates quality: "✓ Your labels look balanced and consistent!" | 品質を検証：「✓ あなたのラベルはバランスが取れていて一貫しているように見えます！」

**Expected Output:** Label distribution analysis with balance assessment
期待される出力：バランス評価を含むラベル分布分析

**Time Allocation:** 12 minutes | 12分

---

### Step 5: Preparing Final Training Dataset (8 minutes) | 最終訓練データセット準備（8分）

**What Students Do:**
- Merge labels with feature dataset: | ラベルを特徴量データセットにマージ：
  ```python
  # Ensure label column exists
  assert 'label' in df.columns, "Label column missing"

  # Check for missing labels
  missing_labels = df['label'].isnull().sum()
  if missing_labels > 0:
      print(f"⚠ Warning: {missing_labels} companies still need labels")

  # Create final training dataset
  # Keep company_name for reference, label as target, rest as features
  training_data = df.copy()

  # Verify dataset structure
  print(f"Training dataset shape: {training_data.shape}")
  print(f"Label column type: {training_data['label'].dtype}")
  print(f"All labels filled: {training_data['label'].notnull().all()}")
  ```
- Save final labeled dataset: `training_data.to_csv('training_data.csv', index=False)` | 最終ラベル付きデータセットを保存：`training_data.to_csv('training_data.csv', index=False)`
- Create dataset documentation: | データセット文書を作成：
  - Number of companies | 企業数
  - Number of features | 特徴量数
  - Label distribution | ラベル分布
  - Classification criteria used | 使用された分類基準
- Complete AI transparency log if used | 使用した場合、AI透明性ログを完成
- Prepare for Week 11 model training | 第11週のモデル訓練のために準備

**Bot Guidance:**
- Runs final validation checklist | 最終検証チェックリストを実行
- Confirms ML-readiness: | ML準備状況を確認：
  - "✓ All companies labeled" | 「✓ すべての企業がラベル付けされています」
  - "✓ Features and labels aligned" | 「✓ 特徴量とラベルが一致しています」
  - "✓ Dataset ready for training" | 「✓ データセットは訓練の準備ができています」
- Celebrates milestone: "You've created a complete labeled dataset - ready for ML!" | マイルストーンを祝う：「完全なラベル付きデータセットを作成しました - MLの準備完了！」

**Expected Output:** Final training dataset with features and labels, ready for ML model training
期待される出力：特徴量とラベルを含む最終訓練データセット、MLモデル訓練の準備完了

**Time Allocation:** 8 minutes | 8分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Google Colab or spreadsheet software | Google Colabまたはスプレッドシートソフトウェア
- Week 9 feature dataset | 第9週特徴量データセット
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 9 feature-engineered dataset | 第9週特徴量エンジニアリング済みデータセット
- Classification criteria template | 分類基準テンプレート
- Manual labeling guide | 手動ラベリングガイド
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Classification concepts introduction | 分類コンセプト入門
- Supervised learning explanation | 教師あり学習説明
- Label quality best practices | ラベル品質のベストプラクティス
- Class imbalance handling strategies | クラス不均衡処理戦略

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain classification and supervised learning | 分類と教師あり学習を説明するようAIに依頼
- Getting help understanding label balance importance | ラベルバランスの重要性を理解する支援を取得
- Asking about best practices for manual labeling | 手動ラベリングのベストプラクティスについて尋ねる
- Understanding training vs testing concepts | 訓練vsテストのコンセプトを理解

**WARNING:** Do NOT use AI to make labeling decisions for you. Labels must reflect YOUR personal preferences and interests.
警告：あなたのためにラベリングの決定を行うためにAIを使用しないでください。ラベルはあなたの個人的な好みと興味を反映する必要があります。

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What does supervised learning mean in machine learning?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you verify AI's explanation against course materials?

4. **Check for hallucinations** | 幻覚をチェック
   - Did AI provide accurate information about classification?
   - Were concepts explained correctly?

**NOT ALLOWED:** Using AI to decide which companies you should be interested in - this must be YOUR decision based on YOUR criteria.
許可されていません：どの企業に興味を持つべきかを決定するためにAIを使用すること - これはあなたの基準に基づくあなたの決定でなければなりません。

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Labeled Training Dataset (required) | ラベル付き訓練データセット（必須）**
   - CSV file with all companies labeled | すべての企業がラベル付けされたCSVファイル
   - Label column with 1/0 values | 1/0値を含むラベル列
   - All feature columns from Week 9 | 第9週のすべての特徴量列
   - Format: CSV file | 形式：CSVファイル

2. **Classification Criteria Document (required) | 分類基準文書（必須）**
   - Explicit criteria for "interested" vs "not interested" | 「興味がある」vs「興味がない」の明示的な基準
   - Examples of companies in each category | 各カテゴリの企業例
   - Reasoning for classification decisions | 分類決定の推論
   - Format: Word/PDF | 形式：Word/PDF

3. **Label Analysis Report (required) | ラベル分析レポート（必須）**
   - Label distribution statistics | ラベル分布統計
   - Balance ratio analysis | バランス比率分析
   - Visualization of label distribution | ラベル分布の可視化
   - Consistency check results | 一貫性チェック結果
   - Format: Word/PDF or in Colab notebook | 形式：Word/PDFまたはColabノートブック内

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Statement confirming AI was NOT used for labeling decisions | AIがラベリング決定に使用されなかったことを確認する声明
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week10_YourName_Classification | ファイル命名：Week10_あなたの名前_Classification

**Deadline:** End of Week 10 | 第10週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Classification Understanding (2 points) | 分類の理解（2ポイント）**
  - Clear understanding of classification concepts demonstrated | 分類コンセプトの明確な理解が実証されている
  - Project goal properly articulated | プロジェクト目標が適切に明確にされている

- **Classification Criteria (2 points) | 分類基準（2ポイント）**
  - Explicit, well-defined criteria documented | 明示的でよく定義された基準が文書化されている
  - Criteria are personal and relevant to career interests | 基準は個人的でキャリア興味に関連している
  - Criteria can be consistently applied | 基準を一貫して適用できる

- **Manual Labeling Quality (4 points) | 手動ラベリング品質（4ポイント）**
  - All companies labeled (no missing values) | すべての企業がラベル付けされている（欠損値なし）
  - Labels appear consistent with stated criteria | ラベルは述べられた基準と一致して表示される
  - Reasonable label balance (not >90% one class) | 合理的なラベルバランス（1つのクラスが>90%ではない）
  - Thoughtful labeling decisions | 思慮深いラベリング決定

- **Documentation and AI Transparency (2 points) | 文書化とAI透明性（2ポイント）**
  - Comprehensive label analysis | 包括的なラベル分析
  - Clear documentation of process | プロセスの明確な文書化
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ
  - Confirmation that AI was not used for labeling decisions | AIがラベリング決定に使用されなかったことの確認

**Quality Expectations:**
- Labels must reflect genuine personal preferences | ラベルは真の個人的な好みを反映する必要があります
- Consistent application of criteria | 基準の一貫した適用
- Dataset ready for ML training | データセットはML訓練の準備ができている
- Professional documentation | プロフェッショナルな文書化
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: All companies seem interesting or all seem uninteresting | すべての企業が興味深いまたはすべてが興味深くないように見える**
- **Solution:** Refine your criteria. Compare companies directly. Ask: "If I could only work at one, which would I choose?" Be more selective or more open to create balance. Remember: some companies being "not interested" doesn't mean they're bad. | 基準を洗練します。企業を直接比較します。質問：「1つだけで働けるとしたら、どれを選びますか？」バランスを作るためにより選択的またはよりオープンになります。覚えておいてください：一部の企業が「興味がない」ことは、彼らが悪いことを意味しません。
- **Bot Assistance:** Bot helps refine criteria and asks comparison questions | ボットは基準を洗練し、比較質問を行うのを助けます

**Problem 2: Can't decide on borderline cases | 境界線ケースを決定できない**
- **Solution:** Trust your gut feeling. If you're genuinely unsure after considering your criteria, flip a coin. The goal is to capture your preferences, not to be perfect. Borderline cases can go either way. | 直感を信頼します。基準を検討した後に本当に不確かな場合は、コインを投げます。目標はあなたの好みをキャプチャすることであり、完璧であることではありません。境界線ケースはどちらかになり得ます。
- **Bot Assistance:** Bot can help analyze why a case is borderline and suggest factors to consider | ボットはケースがなぜ境界線であるかを分析し、考慮すべき要因を提案するのを助けます

**Problem 3: Labels seem inconsistent when reviewing | 確認すると、ラベルが不整合に見える**
- **Solution:** Review your criteria and make adjustments if needed. It's okay to relabel companies after reviewing. Consistency is important - if similar companies have different labels, reconsider one of them. | 基準を確認し、必要に応じて調整します。確認後に企業を再ラベル付けしても問題ありません。一貫性が重要です - 類似の企業が異なるラベルを持っている場合、そのうちの1つを再考してください。
- **Bot Assistance:** Bot can identify potentially inconsistent labels and suggest review | ボットは潜在的に不整合なラベルを特定し、確認を提案できます

**Problem 4: Very imbalanced labels (e.g., 22 interested, 3 not interested) | 非常に不均衡なラベル（例：22興味がある、3興味がない）**
- **Solution:** This is common! Options: (1) Be more selective about "interested" label, (2) Consider if your dataset has enough variety of companies, (3) Proceed with imbalance (ML can still work, just note it in documentation). Don't force unnatural labels just for balance. | これは一般的です！オプション：（1）「興味がある」ラベルについてより選択的になる、（2）データセットに十分な多様性の企業があるかどうかを検討、（3）不均衡で進める（MLはまだ機能できます、文書内に注記するだけ）。バランスのためだけに不自然なラベルを強制しないでください。
- **Bot Assistance:** Bot provides guidance on acceptable imbalance levels and strategies | ボットは許容可能な不均衡レベルと戦略に関するガイダンスを提供

**Problem 5: Changed mind about criteria halfway through labeling | ラベリングの途中で基準について考えが変わった**
- **Solution:** That's okay! Update your criteria document and relabel previous companies with new criteria. Better to be consistent with final criteria than to keep inconsistent labels. This is a learning process. | 大丈夫です！基準文書を更新し、新しい基準で以前の企業を再ラベル付けします。不整合なラベルを保持するよりも、最終基準と一貫している方が良いです。これは学習プロセスです。
- **Bot Assistance:** Bot helps track when criteria changed and validates consistency after relabeling | ボットは基準が変更されたときを追跡し、再ラベル付け後の一貫性を検証するのを助けます

**Problem 6: Not sure if labels are "good enough" for ML | ラベルがMLに「十分」かどうか不明**
- **Solution:** If you've labeled all companies thoughtfully based on your criteria, they're good enough! ML will learn from your preferences. Perfect labels don't exist. What matters is that labels reflect YOUR genuine interests. | すべての企業を基準に基づいて思慮深くラベル付けした場合、十分です！MLはあなたの好みから学習します。完璧なラベルは存在しません。重要なのは、ラベルがあなたの真の興味を反映していることです。
- **Bot Assistance:** Bot validates label quality and confirms dataset is ready for training | ボットはラベル品質を検証し、データセットが訓練の準備ができていることを確認

**When to Ask for Help:**
- Struggling to define clear classification criteria | 明確な分類基準を定義するのに苦労している
- Unsure if label distribution is acceptable | ラベル分布が受け入れられるかどうか不明
- Need guidance on handling borderline cases | 境界線ケースの処理に関するガイダンスが必要
- Want feedback on label consistency | ラベルの一貫性に関するフィードバックが必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for criteria refinement and label validation | 基準の洗練とラベル検証にはボットを使用
- Share your criteria with bot for feedback | フィードバックのために基準をボットと共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
