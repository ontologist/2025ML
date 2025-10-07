# Week 6 Activity: Building Company Dataset
# 第6週アクティビティ：企業データセットの構築

## Activity Information | アクティビティ情報

**Activity Title:** Collecting Company Data for Recommendation Project | 推薦プロジェクト用の企業データ収集
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Collect and organize real company data for ML project | MLプロジェクト用の実際の企業データを収集して整理する
**Prerequisites:** Week 5 completion - Proficiency with no-code scraping tools | 第5週完了 - ノーコードスクレイピングツールの習熟

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Design and implement a data schema for company information | 企業情報のデータスキーマを設計して実装する
- Collect structured company data from approved sources | 承認されたソースから構造化された企業データを収集する
- Organize collected data in a consistent, usable format | 収集されたデータを一貫した使用可能な形式で整理する
- Perform initial quality checks on collected data | 収集されたデータの初期品質チェックを実行する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Defining data schema for company information
講義のコンセプト：企業情報のデータスキーマ定義

**Activity Application:** Students apply lecture concepts by creating their own company dataset schema and collecting real data that will be used throughout the rest of the course for their ML classification project.
アクティビティの適用：学生は自分の企業データセットスキーマを作成し、コースの残りの期間にわたってML分類プロジェクトに使用される実際のデータを収集することで、講義のコンセプトを適用します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides schema design, provides data collection strategy, monitors progress, and validates data quality throughout the collection process.
ボットの役割：ML-101ボットはスキーマ設計をガイドし、データ収集戦略を提供し、進捗を監視し、収集プロセス全体でデータ品質を検証します。

**BMAD Workflow Steps:**
1. Bot guides data schema design based on project goals | ボットがプロジェクト目標に基づいてデータスキーマ設計をガイド
2. Bot helps prioritize which data fields are most important | ボットがどのデータフィールドが最も重要かを優先順位付けするのを助ける
3. Bot provides structured data collection workflow | ボットが構造化されたデータ収集ワークフローを提供
4. Bot performs quality checks during collection | ボットが収集中に品質チェックを実行
5. Bot validates dataset completeness and consistency | ボットがデータセットの完全性と一貫性を検証

**Bot Portal Interaction Points:**
- Schema design workshop | スキーマ設計ワークショップ
- Data collection progress tracking | データ収集進捗追跡
- Real-time quality validation | リアルタイム品質検証
- Milestone checkpoints | マイルストーンチェックポイント

**Data Captured:**
- Schema design decisions | スキーマ設計決定
- Data collection strategies used | 使用されたデータ収集戦略
- Quality issues encountered | 遭遇した品質問題
- Dataset characteristics | データセット特性

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Data Schema Design (12 minutes) | データスキーマ設計（12分）

**What Students Do:**
- Review project goal: classify companies based on personal interests | プロジェクト目標を確認：個人的な興味に基づいて企業を分類
- Brainstorm what company information would be useful for decision-making | 意思決定に役立つ企業情報は何かをブレインストーム
- Design data schema with required and optional fields: | 必須およびオプションのフィールドを含むデータスキーマを設計：
  - **Required fields:** Company name, industry, description | 必須フィールド：企業名、業界、説明
  - **Recommended fields:** Size, location, founding year, website | 推奨フィールド：規模、所在地、設立年、ウェブサイト
  - **Optional fields:** Revenue, employee count, culture keywords | オプションフィールド：収益、従業員数、文化キーワード
- Create schema document with field names, data types, and descriptions | フィールド名、データ型、説明を含むスキーマ文書を作成
- Set target: 20-30 companies minimum for initial dataset | 目標を設定：初期データセット用に最低20-30社

**Bot Guidance:**
- Asks guiding questions: "What information helps you decide which companies interest you?" | ガイド質問：「どの情報があなたが興味のある企業を決めるのに役立ちますか？」
- Suggests standard fields for classification tasks | 分類タスクの標準フィールドを提案
- Explains data type considerations: "Descriptions should be text; size could be categorical" | データ型の考慮事項を説明：「説明はテキストであるべき；規模はカテゴリカルであり得る」
- Reviews feasibility: "Can you actually get this data from your chosen sources?" | 実現可能性を確認：「選択したソースから実際にこのデータを取得できますか？」
- Provides schema template | スキーマテンプレートを提供

**Expected Output:** Complete data schema document with at least 5-8 defined fields
期待される出力：少なくとも5-8の定義されたフィールドを含む完全なデータスキーマ文書

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Data Collection Strategy (10 minutes) | データ収集戦略（10分）

**What Students Do:**
- Review approved websites from Week 4 feasibility report | 第4週実現可能性レポートからの承認されたウェブサイトを確認
- Map each schema field to potential data sources | 各スキーマフィールドを潜在的なデータソースにマッピング
- Identify which source provides which information | どのソースがどの情報を提供するかを特定
- Plan collection order and approach: | 収集順序とアプローチを計画：
  - Primary source for basic company list | 基本的な企業リストの主要ソース
  - Secondary sources for additional details | 追加詳細の二次ソース
- Document collection strategy | 収集戦略を文書化

**Bot Guidance:**
- Helps map fields to sources: "Company websites usually have descriptions and founding info" | フィールドをソースにマッピングするのを助ける：「企業ウェブサイトには通常、説明と設立情報があります」
- Suggests efficient collection order: "Start with one comprehensive source, then supplement" | 効率的な収集順序を提案：「1つの包括的なソースから始めて、その後補完する」
- Warns about challenges: "Some fields might be hard to find - be flexible" | 課題について警告：「一部のフィールドは見つけにくい可能性があります - 柔軟に対応してください」
- Reminds of ethical practices: "Respect robots.txt and rate limits" | 倫理的実践を思い出させる：「robots.txtとレート制限を尊重してください」

**Expected Output:** Data collection strategy document mapping fields to sources
期待される出力：フィールドをソースにマッピングするデータ収集戦略文書

**Time Allocation:** 10 minutes | 10分

---

### Step 3: Primary Data Collection (20 minutes) | 主要データ収集（20分）

**What Students Do:**
- Set up scraping workflow for primary data source | 主要データソースのスクレイピングワークフローをセットアップ
- Configure selectors for all defined schema fields | すべての定義されたスキーマフィールドのセレクターを設定
- Run scraper to collect initial company list (target: 20-30 companies) | 初期企業リストを収集するためにスクレイパーを実行（目標：20-30社）
- Export data in CSV format | CSVフォーマットでデータをエクスポート
- Review collected data for completeness | 収集されたデータの完全性を確認
- Document any missing fields or issues | 欠損フィールドまたは問題を文書化

**Bot Guidance:**
- Provides collection progress tracking | 収集進捗追跡を提供
- Monitors in real-time: "You've collected 15 companies so far - halfway there!" | リアルタイムで監視：「これまでに15社を収集しました - 半分まで来ました！」
- Flags quality issues: "Company X is missing industry information" | 品質問題をフラグ：「企業Xは業界情報が欠落しています」
- Suggests adjustments: "If descriptions are too short, try including more text fields" | 調整を提案：「説明が短すぎる場合は、より多くのテキストフィールドを含めてみてください」
- Validates data structure matches schema | データ構造がスキーマと一致することを検証

**Expected Output:** CSV file with 20-30 companies including as many schema fields as possible from primary source
期待される出力：主要ソースから可能な限り多くのスキーマフィールドを含む20-30社のCSVファイル

**Time Allocation:** 20 minutes | 20分

---

### Step 4: Data Supplementation and Organization (12 minutes) | データ補完と整理（12分）

**What Students Do:**
- Identify missing or incomplete fields in primary dataset | 主要データセットの欠損または不完全なフィールドを特定
- Use secondary sources to fill gaps (may require manual research for some companies) | 二次ソースを使用してギャップを埋める（一部の企業は手動調査が必要な場合があります）
- Standardize data format across all entries: | すべてのエントリにわたってデータフォーマットを標準化：
  - Consistent company name spelling | 一貫した企業名のスペリング
  - Standardized industry categories | 標準化された業界カテゴリ
  - Uniform date formats | 統一された日付フォーマット
- Create master CSV file with all collected data | すべての収集されたデータを含むマスターCSVファイルを作成
- Add metadata: collection date, sources used | メタデータを追加：収集日、使用されたソース

**Bot Guidance:**
- Identifies gaps: "10 companies are missing location data" | ギャップを特定：「10社が所在地データを欠落しています」
- Suggests supplementation strategies: "Try company websites for missing information" | 補完戦略を提案：「欠落情報のために企業ウェブサイトを試してください」
- Provides standardization tips: "Use consistent industry names like 'Technology' not 'Tech/IT/Technology'" | 標準化のヒントを提供：「Tech/IT/Technologyではなく、Technologyのような一貫した業界名を使用してください」
- Validates consistency: "All dates should follow YYYY-MM-DD format" | 一貫性を検証：「すべての日付はYYYY-MM-DD形式に従う必要があります」

**Expected Output:** Organized, standardized dataset with maximum possible completeness
期待される出力：可能な限り最大の完全性を持つ整理された標準化されたデータセット

**Time Allocation:** 12 minutes | 12分

---

### Step 5: Quality Check and Documentation (6 minutes) | 品質チェックと文書化（6分）

**What Students Do:**
- Perform systematic quality check: | 体系的な品質チェックを実行：
  - Count total companies collected | 収集された企業の総数をカウント
  - Calculate completeness percentage for each field | 各フィールドの完全性パーセンテージを計算
  - Identify any duplicate entries | 重複エントリを特定
  - Check for obvious errors or inconsistencies | 明らかなエラーまたは不整合をチェック
- Create dataset documentation: | データセット文書を作成：
  - Schema description | スキーマ説明
  - Sources used | 使用されたソース
  - Collection methodology | 収集方法論
  - Known limitations | 既知の制限
- Complete AI transparency log if external AI was used | 外部AIを使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Runs automated quality checks | 自動品質チェックを実行
- Generates completeness report: "Industry field: 95% complete, Location: 80% complete" | 完全性レポートを生成：「業界フィールド：95%完全、所在地：80%完全」
- Validates minimum requirements met: "You have 28 companies - great work!" | 最小要件が満たされていることを検証：「28社があります - 素晴らしい仕事！」
- Reviews documentation completeness | 文書の完全性を確認

**Expected Output:** Quality-checked dataset with comprehensive documentation
期待される出力：包括的な文書を伴う品質チェック済みデータセット

**Time Allocation:** 6 minutes | 6分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- No-code web scraping tool (from Week 5) | ノーコードWebスクレイピングツール（第5週から）
- Spreadsheet software (Excel, Google Sheets) for data organization | データ整理のためのスプレッドシートソフトウェア（Excel、Google Sheets）
- Web browser | Webブラウザ
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Data schema template | データスキーマテンプレート
- Data collection strategy template | データ収集戦略テンプレート
- Company dataset CSV template with proper column headers | 適切な列ヘッダーを含む企業データセットCSVテンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Data schema design best practices | データスキーマ設計のベストプラクティス
- Data standardization guidelines | データ標準化ガイドライン
- Quality check checklist | 品質チェックチェックリスト
- Approved websites list from Week 4 | 第4週からの承認されたウェブサイトリスト

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI for suggestions on data schema design | データスキーマ設計の提案をAIに求める
- Getting help with data standardization strategies | データ標準化戦略の支援を取得
- Researching specific company information to fill gaps | ギャップを埋めるために特定の企業情報を調査
- Understanding data organization best practices | データ整理のベストプラクティスを理解

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What are the most important data fields to collect about companies for a classification project?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI suggestions and recommendations

3. **Document verification process** | 検証プロセスを文書化
   - If AI suggested company information, how did you verify it was accurate?
   - Did you cross-reference AI-provided data with original sources?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI provide false information about companies?
   - Did you verify all company data independently?
   - Did the AI suggest data fields that aren't practical to collect?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Data Schema Document (required) | データスキーマ文書（必須）**
   - Complete schema with 5-8 defined fields | 5-8の定義されたフィールドを含む完全なスキーマ
   - Field names, data types, and descriptions | フィールド名、データ型、説明
   - Justification for included fields | 含まれるフィールドの正当化
   - Format: Word document or PDF | 形式：WordドキュメントまたはPDF

2. **Company Dataset (required) | 企業データセット（必須）**
   - CSV file with 20-30 companies | 20-30社を含むCSVファイル
   - All schema fields included as columns | すべてのスキーマフィールドが列として含まれている
   - Standardized and organized data | 標準化および整理されたデータ
   - Format: CSV file | 形式：CSVファイル

3. **Data Collection Documentation (required) | データ収集文書（必須）**
   - Data collection strategy | データ収集戦略
   - Sources used with URLs | 使用されたソースとURL
   - Collection methodology | 収集方法論
   - Quality check results (completeness percentages) | 品質チェック結果（完全性パーセンテージ）
   - Known limitations and challenges | 既知の制限と課題
   - Format: Word/PDF | 形式：Word/PDF

4. **Dataset Metadata (required) | データセットメタデータ（必須）**
   - Collection date | 収集日
   - Total number of companies | 企業の総数
   - Field completeness statistics | フィールド完全性統計
   - Sources list | ソースリスト
   - Format: Include in documentation or as separate file | 形式：文書に含めるか、別ファイルとして

5. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week06_YourName_CompanyDataset | ファイル命名：Week06_あなたの名前_CompanyDataset

**Deadline:** End of Week 6 | 第6週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Data Schema Design (2 points) | データスキーマ設計（2ポイント）**
  - Well-designed schema with 5-8 appropriate fields | 5-8の適切なフィールドを含む適切に設計されたスキーマ
  - Clear field definitions and justifications | 明確なフィールド定義と正当化
  - Practical and feasible for collection | 収集のために実用的で実現可能

- **Dataset Quality and Completeness (4 points) | データセット品質と完全性（4ポイント）**
  - Collected 20-30 companies (minimum requirement) | 20-30社を収集（最小要件）
  - High field completeness (80%+ for required fields) | 高いフィールド完全性（必須フィールドで80%以上）
  - Standardized and consistent formatting | 標準化され一貫したフォーマット
  - No obvious errors or duplicates | 明らかなエラーまたは重複なし

- **Documentation and Methodology (2 points) | 文書化と方法論（2ポイント）**
  - Clear documentation of collection process | 収集プロセスの明確な文書化
  - Proper source attribution | 適切なソース帰属
  - Quality check results included | 品質チェック結果が含まれている
  - Known limitations acknowledged | 既知の制限が認識されている

- **AI Transparency (2 points) | AI透明性（2ポイント）**
  - Complete documentation if AI was used | AIを使用した場合の完全な文書化
  - Proper verification of AI-provided information | AI提供情報の適切な検証
  - OR: Clear statement that no external AI was used | または：外部AIを使用しなかったという明確な声明

**Quality Expectations:**
- Dataset must be usable for ML project in later weeks | データセットは後の週でのMLプロジェクトに使用可能である必要があります
- Data should be relevant to student's career interests | データは学生のキャリア興味に関連している必要があります
- Professional data organization and presentation | プロフェッショナルなデータ整理とプレゼンテーション
- Evidence of ethical data collection practices | 倫理的データ収集実践の証拠
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Can't find 20-30 companies in one source | 1つのソースで20-30社を見つけられない**
- **Solution:** Combine multiple approved sources. It's okay to collect 10 companies from source A, 10 from source B, and 10 from source C. Just document all sources clearly. | 複数の承認されたソースを組み合わせます。ソースAから10社、ソースBから10社、ソースCから10社を収集しても問題ありません。すべてのソースを明確に文書化してください。
- **Bot Assistance:** Bot suggests complementary sources and helps track collection from multiple origins | ボットは補完的なソースを提案し、複数の起点からの収集を追跡するのを助けます

**Problem 2: Some schema fields have very low completeness | 一部のスキーマフィールドの完全性が非常に低い**
- **Solution:** It's okay if optional fields are incomplete. Focus on getting 90%+ completeness for required fields (name, industry, description). You can fill gaps later or mark as "unavailable." | オプションフィールドが不完全でも問題ありません。必須フィールド（名前、業界、説明）で90%以上の完全性を取得することに焦点を当てます。後でギャップを埋めるか、「利用不可」とマークできます。
- **Bot Assistance:** Bot helps prioritize which fields are most critical for ML classification | ボットはML分類に最も重要なフィールドを優先順位付けするのを助けます

**Problem 3: Data is inconsistent across companies | 企業間でデータが一貫していない**
- **Solution:** Create standardization rules. For example: always use full company names, standardize industry categories (Technology, Healthcare, Finance, etc.), use consistent date formats. Apply rules to all entries. | 標準化ルールを作成します。例：常に完全な企業名を使用、業界カテゴリを標準化（Technology、Healthcare、Financeなど）、一貫した日付フォーマットを使用。すべてのエントリにルールを適用します。
- **Bot Assistance:** Bot provides standardization guidelines and can identify inconsistencies | ボットは標準化ガイドラインを提供し、不整合を特定できます

**Problem 4: Scraping takes too long or keeps failing | スクレイピングに時間がかかりすぎるまたは失敗し続ける**
- **Solution:** Reduce target to 20 companies (minimum). Add delays between requests. Check if website structure changed. For some companies, manual data entry may be faster and acceptable. | 目標を20社（最小）に減らします。リクエスト間に遅延を追加します。ウェブサイト構造が変更されたかどうかを確認します。一部の企業では、手動データ入力の方が速く受け入れられる場合があります。
- **Bot Assistance:** Bot helps troubleshoot scraping issues and validates that manual collection is acceptable when needed | ボットはスクレイピングの問題をトラブルシュートし、必要に応じて手動収集が受け入れられることを検証します

**Problem 5: Don't know which companies to include | どの企業を含めるべきかわからない**
- **Solution:** Choose companies relevant to your career interests. Mix of: companies you'd like to work for, companies in your field of interest, both large and small companies, local and international companies. Diversity is good for classification. | あなたのキャリア興味に関連する企業を選択します。混合：働きたい企業、あなたの興味のある分野の企業、大企業と中小企業の両方、国内および国際企業。多様性は分類に適しています。
- **Bot Assistance:** Bot asks guiding questions to help students identify relevant companies | ボットは学生が関連企業を特定するのを助けるガイド質問を行います

**Problem 6: Some company information seems outdated or wrong | 一部の企業情報が古いまたは間違っているようだ**
- **Solution:** Cross-reference with company official website when possible. Note uncertainty in your documentation. It's okay if some data isn't perfect - we'll learn to handle data quality issues in Week 7. | 可能な場合は企業公式ウェブサイトと相互参照します。文書内の不確実性を記録します。一部のデータが完璧でなくても問題ありません - 第7週でデータ品質問題の処理方法を学びます。
- **Bot Assistance:** Bot provides verification strategies and helps document data quality concerns | ボットは検証戦略を提供し、データ品質の懸念を文書化するのを助けます

**When to Ask for Help:**
- Can't collect minimum 20 companies despite multiple attempts | 複数回試行しても最低20社を収集できない
- All approved sources from Week 4 are no longer accessible | 第4週のすべての承認されたソースにアクセスできなくなった
- Unsure if collected data is suitable for ML project | 収集されたデータがMLプロジェクトに適しているか不明
- Need help with data organization or standardization | データ整理または標準化の支援が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for technical and strategy questions | 技術的および戦略的質問にはボットを使用
- Share your dataset with bot for feedback on quality | 品質に関するフィードバックのためにデータセットをボットと共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
