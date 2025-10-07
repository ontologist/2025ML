# ML-101 Lecture Guide (14 Weeks)
# ML-101講義ガイド（14週間）

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Format:** Short lectures (15-20 minutes) + Extended hands-on activities (40-60 minutes)
**形式:** 短い講義（15-20分） + 長めのハンズオンアクティビティ（40-60分）

---

## Lecture Philosophy | 講義哲学

**BMad BotEdu Approach | BMadボット教育アプローチ:**

This course follows a **hands-on first** pedagogy where:
このコースは以下の**ハンズオン第一**教育法に従います：

- **Lectures are SHORT (15-20 minutes)** - Introduce key concepts only
  講義は短く（15-20分） - 主要コンセプトのみ紹介
- **Activities are LONG (40-60 minutes)** - Learning by doing
  アクティビティは長く（40-60分） - 実践による学習
- **Bot provides ongoing guidance** - Support during hands-on work
  ボットが継続的なガイダンスを提供 - ハンズオン作業中のサポート

**Lecture Goals | 講義目標:**
1. Introduce 2-3 key ML concepts | 2-3の主要MLコンセプトを紹介
2. Prepare students for hands-on activity | 学生をハンズオンアクティビティに準備
3. Connect concepts to real-world applications | コンセプトを実世界の応用に関連付け
4. Build excitement for the activity ahead | 今後のアクティビティへの興奮を構築

---

## Week 1: Introduction to ML and Course Overview
## 第1週：ML入門とコース概要

**Lecture Duration:** 15-20 minutes | 15-20分
**Activity Duration:** 40-60 minutes | 40-60分

### Lecture Outline | 講義アウトライン

**Opening (2 minutes):**
- Welcome to ML-101! | ML-101へようこそ！
- Course overview | コース概要
- What to expect this semester | 今学期に期待すること

**Core Content (12 minutes):**

1. **What is Machine Learning? | 機械学習とは？ (5 minutes)**
   - Definition: Teaching computers to learn from data | 定義：コンピュータにデータから学習させること
   - Examples students already use:
     - Netflix recommendations | Netflix推薦
     - Spotify playlists | Spotifyプレイリスト
     - Face unlock on phones | スマートフォンの顔認証
   - Key point: ML learns patterns from data, not explicit programming

2. **Why ML Matters Today | なぜMLが今日重要か (4 minutes)**
   - ML in business: personalization, automation | ビジネスでのML：パーソナライゼーション、自動化
   - ML in daily life: search, translation, recommendations | 日常生活でのML：検索、翻訳、推薦
   - ML in career decisions (connect to course project!) | キャリア決定でのML（コースプロジェクトに関連付け！）

3. **Course Project Preview | コースプロジェクトプレビュー (3 minutes)**
   - You'll build a company recommendation system | 企業推薦システムを構築します
   - Use ML to classify companies based on YOUR interests | MLを使用してあなたの興味に基づいて企業を分類
   - Apply to real job search! | 実際の就職活動に適用！

**Transition to Activity (1 minute):**
- "Now let's discover ML in your daily life through hands-on exploration!"
- "では、ハンズオン探索を通じて日常生活のMLを発見しましょう！"

### Key Concepts to Emphasize | 強調すべき主要コンセプト
- ML = learning from data | ML = データからの学習
- ML is everywhere in modern life | MLは現代生活のどこにでもある
- You'll build a real ML system this semester | 今学期実際のMLシステムを構築します

### Visual Aids Recommended | 推奨される視覚資料
- Slide 1: Examples of ML in daily apps | 日常アプリでのMLの例
- Slide 2: Traditional programming vs ML | 従来のプログラミングvsML
- Slide 3: Course project visual | コースプロジェクトのビジュアル

---

## Week 2: Understanding Data and Its Role
## 第2週：データとその役割の理解

**Lecture Duration:** 15-20 minutes
**Activity Duration:** 40-60 minutes

### Lecture Outline

**Core Content (15 minutes):**

1. **What is Data? | データとは？ (5 minutes)**
   - Data = information we collect | データ = 収集する情報
   - Types of data:
     - Numbers (age, price, size) | 数字（年齢、価格、サイズ）
     - Text (descriptions, reviews) | テキスト（説明、レビュー）
     - Categories (industry, location) | カテゴリー（業界、場所）
   - Structured vs unstructured data | 構造化vs非構造化データ

2. **Data in ML Workflows | MLワークフローにおけるデータ (5 minutes)**
   - Data is the foundation of ML | データはMLの基盤
   - ML workflow stages:
     1. Collect data | データ収集
     2. Prepare data | データ準備
     3. Train model | モデル訓練
     4. Make predictions | 予測実行
   - "Garbage in, garbage out" - data quality matters! | データ品質が重要！

3. **Data for Company Recommendations | 企業推薦のためのデータ (5 minutes)**
   - What data about companies might be useful? | 企業についてどのようなデータが役立つか？
   - Company name, industry, size, culture, job types | 企業名、業界、規模、文化、職種
   - Where can we find this data? (preview web scraping) | このデータをどこで見つけられるか？（Webスクレイピングのプレビュー）

**Transition:**
- "Let's explore real datasets and identify data sources for our project!"

### Key Concepts
- Data quality is crucial | データ品質が重要
- ML needs lots of data to learn | MLは学習するために多くのデータが必要
- Different types of data require different handling | 異なるタイプのデータは異なる処理が必要

---

## Week 3: Introduction to Google Colab and Python Basics
## 第3週：Google Colabと基本的なPython入門

**Lecture Duration:** 15-20 minutes
**Activity Duration:** 40-60 minutes

### Lecture Outline

**Core Content (15 minutes):**

1. **What is Google Colab? | Google Colabとは？ (3 minutes)**
   - Free, cloud-based Python environment | 無料のクラウドベースPython環境
   - No installation needed! | インストール不要！
   - Perfect for ML and data analysis | MLとデータ分析に最適

2. **Python Basics (Just Enough!) | Python基礎（必要最小限！） (10 minutes)**
   - Variables: storing information | 変数：情報の保存
     ```python
     company_name = "ABC Corp"
     employee_count = 100
     ```
   - Data types: numbers, text, lists | データ型：数字、テキスト、リスト
   - Simple operations: print, basic math | 簡単な操作：print、基本的な算術
   - Why we need Python for ML | MLのためになぜPythonが必要か

3. **What We'll Do with Python This Semester | 今学期Pythonで何をするか (2 minutes)**
   - Data cleaning | データクリーニング
   - Data manipulation | データ操作
   - Simple data analysis | 簡単なデータ分析
   - Note: We'll learn as we go! No prior experience needed | 注意：進めながら学びます！事前経験不要

**Transition:**
- "Let's jump into Colab and write our first Python code!"

### Key Concepts
- Colab = easy Python environment | Colab = 簡単なPython環境
- Python is a tool, not the focus | Pythonはツールであり、焦点ではない
- We'll learn Python by using it for ML tasks | MLタスクに使用することでPythonを学びます

---

## Week 4: Introduction to Web Scraping
## 第4週：Webスクレイピング入門

**Lecture Duration:** 15-20 minutes
**Activity Duration:** 40-60 minutes

### Lecture Outline

**Core Content (15 minutes):**

1. **What is Web Scraping? | Webスクレイピングとは？ (4 minutes)**
   - Collecting data from websites automatically | ウェブサイトから自動的にデータを収集
   - Why scraping? Data isn't always available as downloads | なぜスクレイピング？データは常にダウンロードとして利用可能ではない
   - Our goal: Collect company information | 私たちの目標：企業情報を収集

2. **Ethical and Legal Considerations | 倫理的および法的考慮事項 (6 minutes)**
   - **IMPORTANT:** Not all scraping is legal/ethical! | 重要：すべてのスクレイピングが合法・倫理的ではない！
   - Check website's robots.txt file | ウェブサイトのrobots.txtファイルを確認
   - Check Terms of Service | 利用規約を確認
   - Respect rate limits (don't overload servers) | レート制限を尊重（サーバーに過負荷をかけない）
   - Personal use vs commercial use | 個人使用vs商用使用
   - When in doubt, ask! | 疑問がある場合は尋ねる！

3. **How Web Scraping Works (Simplified) | Webスクレイピングの仕組み（簡略化） (5 minutes)**
   - Websites are made of HTML (structure) | ウェブサイトはHTML（構造）で作られている
   - Scraping = extracting specific information from HTML | スクレイピング = HTMLから特定の情報を抽出
   - Tools: No-code platforms OR Python libraries | ツール：ノーコードプラットフォームまたはPythonライブラリ
   - We'll use both approaches! | 両方のアプローチを使用します！

**Transition:**
- "Let's explore website structure and practice ethical scraping!"

### Key Concepts
- Scraping is powerful but must be done ethically | スクレイピングは強力だが倫理的に行う必要がある
- Always check if scraping is allowed | 常にスクレイピングが許可されているか確認
- We're collecting data for learning, not commercial use | 学習のためにデータを収集、商用使用ではない

### Critical Warning
- Emphasize that violating Terms of Service can have consequences
- Students should only scrape websites where it's explicitly allowed or for educational fair use

---

## Week 5: No-Code Web Scraping Tools
## 第5週：ノーコードWebスクレイピングツール

**Lecture Duration:** 15-20 minutes
**Activity Duration:** 40-60 minutes

### Lecture Outline

**Core Content (15 minutes):**

1. **Why No-Code Tools? | なぜノーコードツール？ (3 minutes)**
   - Faster to set up | セットアップが速い
   - Visual, intuitive interface | ビジュアルで直感的なインターフェース
   - Good for simple scraping tasks | 簡単なスクレイピングタスクに適している
   - No programming required! | プログラミング不要！

2. **Overview of No-Code Scraping Platforms | ノーコードスクレイピングプラットフォームの概要 (7 minutes)**
   - Popular tools: [List specific tools being used in course]
   - How they work:
     1. Point and click on data you want | 欲しいデータをポイントアンドクリック
     2. Tool learns the pattern | ツールがパターンを学習
     3. Extract data automatically | 自動的にデータを抽出
     4. Export as CSV/Excel | CSVやExcelとしてエクスポート
   - Live demo (if time allows) | ライブデモ（時間があれば）

3. **Best Practices | ベストプラクティス (5 minutes)**
   - Start with simple websites | シンプルなウェブサイトから始める
   - Test on small samples first | 最初は小さなサンプルでテスト
   - Verify data quality | データ品質を検証
   - Save your work frequently | 頻繁に作業を保存
   - Document what you did | 何をしたかを文書化

**Transition:**
- "Let's set up the scraping tool and practice on sample websites!"

### Key Concepts
- No-code tools make scraping accessible | ノーコードツールがスクレイピングをアクセス可能にする
- Still need to think about what data to collect | 何のデータを収集するかを考える必要がある
- Tool does the work, you guide it | ツールが作業を行い、あなたがガイドする

---

## Weeks 6-14: Lecture Outlines Summary
## 第6-14週：講義アウトライン要約

Due to space constraints, here's a concise outline for remaining weeks:
スペースの制約により、残りの週の簡潔なアウトラインを示します：

### Week 6: Building Company Dataset
**Key Topics:** Data schema design, systematic collection, quality checks
**主要トピック:** データスキーマ設計、体系的な収集、品質チェック

### Week 7: Data Cleaning Fundamentals
**Key Topics:** Common data quality issues, cleaning techniques in Python, documenting decisions
**主要トピック:** 一般的なデータ品質問題、Pythonでのクリーニング技術、決定の文書化

### Week 8: Handling Missing Data and Outliers
**Key Topics:** Missing data strategies (deletion, imputation), outlier detection, when to keep vs remove
**主要トピック:** 欠損データ戦略（削除、代入）、外れ値検出、保持vs削除の判断

### Week 9: Feature Engineering Basics
**Key Topics:** What are features, creating features from text, preparing data for ML models
**主要トピック:** 特徴量とは、テキストからの特徴量作成、MLモデル用のデータ準備

### Week 10: Classification Concepts and ML Models
**Key Topics:** What is classification, supervised learning, training vs testing, model types
**主要トピック:** 分類とは、教師あり学習、訓練vsテスト、モデルタイプ

### Week 11: Training ML Classification Models
**Key Topics:** Using no-code ML platforms, model selection, training process, model parameters
**主要トピック:** ノーコードMLプラットフォームの使用、モデル選択、訓練プロセス、モデルパラメータ

### Week 12: Model Evaluation and Making Predictions
**Key Topics:** Evaluation metrics (accuracy, precision, recall), interpreting results, critical thinking about AI
**主要トピック:** 評価指標（精度、適合率、再現率）、結果の解釈、AIに関する批判的思考

### Week 13: Final Project Development
**Key Topics:** Project requirements review, system integration, documentation best practices
**主要トピック:** プロジェクト要件レビュー、システム統合、文書化ベストプラクティス

### Week 14: Final Project Presentations
**Key Topics:** Presentation skills, demonstrating ML systems, Q&A handling, course reflection
**主要トピック:** プレゼンテーションスキル、MLシステムのデモンストレーション、Q&A対応、コース考察

---

## Lecture Delivery Tips | 講義配信のヒント

### For the Instructor | インストラクター向け

**Before Each Lecture:**
- Review activity plan for the week | その週のアクティビティプランをレビュー
- Prepare 3-5 slides maximum | 最大3-5スライドを準備
- Test any live demos | ライブデモをテスト
- Set up timer for 15-20 minutes | 15-20分のタイマーを設定

**During Lecture:**
- Start on time | 時間通りに開始
- Use simple language (non-technical students) | 簡単な言語を使用（非技術系学生）
- Show real examples | 実例を示す
- Connect to students' interests | 学生の興味に関連付ける
- Leave time for 1-2 questions | 1-2つの質問の時間を残す
- **STOP after 20 minutes** - transition to activity! | 20分後に停止 - アクティビティに移行！

**After Lecture:**
- Immediately transition to hands-on activity | すぐにハンズオンアクティビティに移行
- Students work, you circulate and support | 学生が作業し、あなたが巡回してサポート
- Bot provides primary guidance | ボットが主要なガイダンスを提供
- You handle questions bot can't answer | ボットが答えられない質問をあなたが処理

---

## Slide Template Recommendations | スライドテンプレート推奨

### Minimal Slide Design | 最小限のスライドデザイン

**Template Structure:**
```
Slide 1: Week # - Topic Title
        第#週 - トピックタイトル

Slide 2: Key Concept 1 (with visual/example)
        主要コンセプト1（ビジュアル・例付き）

Slide 3: Key Concept 2 (with visual/example)
        主要コンセプト2（ビジュアル・例付き）

Slide 4: Key Concept 3 (with visual/example)
        主要コンセプト3（ビジュアル・例付き）

Slide 5: Today's Activity Preview
        今日のアクティビティプレビュー
```

**Design Principles:**
- Large fonts (24pt+ for body text) | 大きなフォント（本文24pt以上）
- Minimal text (bullet points, not paragraphs) | 最小限のテキスト（箇条書き、段落ではない）
- High-contrast colors (dark on light) | 高コントラスト色（明るい背景に暗い文字）
- Bilingual format (EN | JA) where appropriate | 適切な場合はバイリンガル形式（EN | JA）
- Images and diagrams preferred over text | テキストよりも画像と図を優先

---

## Assessment Through Lectures | 講義を通じた評価

### Formative Assessment Techniques | 形成的評価技術

**Quick Checks During Lecture:**
1. **Show of hands:** "Who has used an ML app today?"
   挙手：「今日MLアプリを使用した人は？」

2. **Think-Pair-Share:** "Talk to your neighbor: Why might data quality matter?"
   考える・ペア・共有：「隣の人と話す：なぜデータ品質が重要かもしれないか？」

3. **Exit question:** "One thing you learned + one question you have"
   出口質問：「学んだこと1つ + ある質問1つ」

**Note:** Main assessment happens through:
注：主要な評価は以下を通じて行われます：
- Weekly activities (40%)
- Bot conversational assessments (15%)
- Final project (35%)
- Participation (10%)

---

## Resources for Lecture Preparation | 講義準備のためのリソース

### Recommended Materials

**For Instructor Reference:**
- Course curriculum outline | コースカリキュラムアウトライン
- Weekly activity plans | 週次アクティビティプラン
- Bot configuration documentation | ボット設定文書

**For Student Distribution:**
- Lecture slides (after each class) | 講義スライド（各クラス後）
- Key concept summaries | 主要コンセプト要約
- Activity instructions | アクティビティ指示

**External Resources (Optional):**
- Introduction to ML videos (YouTube) | ML入門動画（YouTube）
- Simple ML tutorials | 簡単なMLチュートリアル
- Career-related ML articles | キャリア関連ML記事

---

## Adapting Lectures Mid-Semester | 学期半ばでの講義適応

### Using Bot Analytics to Improve | ボット分析を使用して改善

**Monitor These Indicators:**
1. **Common questions in bot interactions** | ボットインタラクションでの一般的な質問
   - If many students ask same question → add to next lecture

2. **Activity completion rates** | アクティビティ完了率
   - Low completion → concept may need more explanation

3. **Assessment performance** | 評価性能
   - Low scores on specific topics → revisit in next lecture

4. **Student feedback** | 学生フィードバック
   - Direct feedback through bot or in-class

**Adjustment Strategy:**
- Week 1-3: Stick to plan, collect data | 計画に従い、データを収集
- Week 4-6: Make small adjustments | 小さな調整を行う
- Week 7+: Refine based on trends | トレンドに基づいて洗練

---

## Bilingual Lecture Delivery | バイリンガル講義配信

### Language Strategy | 言語戦略

**Option 1: Sequential (Recommended for ML-101)**
- Present concept in English first | 最初に英語でコンセプトを提示
- Immediately repeat in Japanese | すぐに日本語で繰り返す
- Example: "This is called feature engineering. これは特徴量エンジニアリングと呼ばれます。"

**Option 2: Alternating**
- Some sections in English, some in Japanese
- Slides always bilingual

**Option 3: Student Choice**
- Ask students their preference at semester start
- Adjust based on class composition

**Best Practice for ML-101:**
- Technical terms in English (with Japanese explanation)
- Instructions and explanations bilingual
- Slides always EN | JA format

---

## Troubleshooting Common Lecture Challenges | 一般的な講義課題のトラブルシューティング

### Challenge 1: Running Over Time
**Problem:** Lecture exceeds 20 minutes
**Solution:**
- Use timer visible to you
- Prepare "must cover" vs "nice to have" content
- Skip details, let activity and bot fill gaps

### Challenge 2: Students Look Lost
**Problem:** Confused faces during explanation
**Solution:**
- Stop and ask: "Is this making sense?"
- Use simpler analogy
- Show concrete example
- Remind: "We'll practice this in the activity!"

### Challenge 3: Too Technical
**Problem:** Using jargon students don't understand
**Solution:**
- Define terms simply first time
- Use real-world analogies
- Avoid unnecessary technical depth
- Remember: Non-technical audience!

### Challenge 4: Engagement Low
**Problem:** Students not paying attention
**Solution:**
- Ask questions during lecture
- Show relevant, interesting examples
- Connect to their future careers
- Keep it short! (that's why 15-20 min max)

---

## Success Metrics for Lectures | 講義の成功指標

### How to Know Lectures Are Working | 講義が機能しているかを知る方法

**Positive Indicators:**
- ✅ Students complete activities successfully | 学生がアクティビティを成功裏に完了
- ✅ Few basic concept questions to bot | ボットへの基本的なコンセプト質問が少ない
- ✅ High engagement during activities | アクティビティ中の高いエンゲージメント
- ✅ Good performance on assessments | 評価での良好な性能
- ✅ Students reference lecture concepts in work | 学生が作業で講義コンセプトを参照

**Warning Signs:**
- ⚠️ Many students asking same basic question | 多くの学生が同じ基本的な質問をしている
- ⚠️ Low activity completion rates | 低いアクティビティ完了率
- ⚠️ Confused looks during activity start | アクティビティ開始時の困惑した様子
- ⚠️ Poor assessment performance | 評価性能が悪い

**Action Steps:**
- Review bot interaction data weekly | ボットインタラクションデータを毎週レビュー
- Adjust future lectures based on patterns | パターンに基づいて将来の講義を調整
- Ask for mid-semester feedback | 学期半ばのフィードバックを求める

---

## Final Notes for Success | 成功のための最終ノート

**Remember the BMad BotEdu Philosophy:**

1. **Lectures introduce, activities teach** | 講義は紹介し、アクティビティが教える
   - Keep lectures SHORT
   - Make activities LONG
   - Let students LEARN BY DOING

2. **Bot is the primary guide during activities** | アクティビティ中はボットが主要ガイド
   - Your lecture sets the stage
   - Bot provides step-by-step guidance
   - You handle complex questions

3. **Students learn best through hands-on practice** | 学生はハンズオン実践を通じて最もよく学ぶ
   - Don't try to cover everything in lecture
   - Trust the activity + bot to fill gaps
   - Focus on core concepts only

4. **Adapt based on data** | データに基づいて適応
   - Use bot analytics to improve
   - Listen to student feedback
   - Refine each semester

---

**Lecture Guide Complete | 講義ガイド完了**

This guide provides the framework for delivering effective, concise lectures that prepare students for hands-on learning. Remember: lectures are just the beginning - the real learning happens during the extended activity time with bot guidance.

このガイドは、ハンズオン学習に学生を準備する効果的で簡潔な講義を提供するためのフレームワークを提供します。覚えておいてください：講義は始まりに過ぎません - 本当の学習はボットガイダンスを伴う長いアクティビティ時間中に起こります。

---

**Generated using BMad BotEdu Lecture Material Creator**
**BMadボット教育講義資料クリエーターを使用して生成**

**Developer:** Yuri Tijerino
**Last Updated:** October 2025
