# Week 2 Activity: Understanding Data and Its Role
# 第2週アクティビティ：データとその役割の理解

## Activity Information | アクティビティ情報

**Activity Title:** Analyzing Sample Datasets and Identifying Company Data Sources | サンプルデータセットを分析し企業データソースを特定
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Understand types of data, data quality, and data sources for ML | データの種類、データ品質、ML用のデータソースを理解する
**Prerequisites:** Week 1 completion - Basic understanding of ML applications | 第1週完了 - MLアプリケーションの基本的な理解

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Distinguish between structured, unstructured, and semi-structured data | 構造化データ、非構造化データ、半構造化データを区別する
- Identify data quality issues in real-world datasets | 実世界のデータセットでデータ品質問題を特定する
- Evaluate potential data sources for the company recommendation project | 企業推薦プロジェクトの潜在的なデータソースを評価する
- Apply data quality criteria to assess dataset suitability | データセットの適合性を評価するためにデータ品質基準を適用する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Types of data, data in ML workflows, data quality
講義のコンセプト：データの種類、MLワークフローにおけるデータ、データ品質

**Activity Application:** Students examine real datasets to understand data structure, identify quality issues, and begin planning data collection strategies for their company recommendation project. This hands-on analysis bridges theoretical concepts with practical data work.
アクティビティの適用：学生は実際のデータセットを調査してデータ構造を理解し、品質問題を特定し、企業推薦プロジェクトのためのデータ収集戦略の計画を開始します。このハンズオン分析は理論的コンセプトと実践的なデータ作業を橋渡しします。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides students through systematic data exploration, teaching them to evaluate data quality and identify appropriate sources for their project.
ボットの役割：ML-101ボットは体系的なデータ探索を通じて学生をガイドし、データ品質を評価し、プロジェクトに適切なソースを特定することを教えます。

**BMAD Workflow Steps:**
1. Bot presents sample datasets and guides exploration | ボットがサンプルデータセットを提示し探索をガイド
2. Bot asks diagnostic questions about data structure and quality | ボットがデータ構造と品質について診断的質問を行う
3. Bot helps identify data quality issues | ボットがデータ品質問題の特定を助ける
4. Bot guides brainstorming of company data sources | ボットが企業データソースのブレインストーミングをガイド
5. Bot facilitates evaluation of data source feasibility | ボットがデータソース実現可能性の評価を促進

**Bot Portal Interaction Points:**
- Data exploration guided tour | データ探索ガイドツアー
- Interactive data quality assessment | インタラクティブなデータ品質評価
- Data source identification workshop | データソース特定ワークショップ

**Data Captured:**
- Student's understanding of data types | 学生のデータタイプの理解
- Identified data quality issues | 特定されたデータ品質問題
- Proposed company data sources | 提案された企業データソース
- Evaluation criteria applied | 適用された評価基準

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Data Type Exploration (12 minutes) | データタイプ探索（12分）

**What Students Do:**
- Access sample datasets provided through bot portal (CSV, JSON, text files) | ボットポータルを通じて提供されたサンプルデータセットにアクセス（CSV、JSON、テキストファイル）
- Examine each dataset structure | 各データセット構造を調査
- Identify whether each is structured, semi-structured, or unstructured | それぞれが構造化、半構造化、または非構造化かを特定
- Document characteristics of each data type | 各データタイプの特性を文書化

**Bot Guidance:**
- Provides three sample datasets with different structures | 異なる構造を持つ3つのサンプルデータセットを提供
- Asks: "What patterns do you see in this data?" | 質問：「このデータにどのようなパターンが見えますか？」
- Explains key differences between data types | データタイプ間の主な違いを説明
- Provides examples: "CSV files are structured; social media posts are unstructured" | 例を提供：「CSVファイルは構造化されています；ソーシャルメディア投稿は非構造化です」

**Expected Output:** Identification and categorization of three sample datasets with explanations
期待される出力：説明付きの3つのサンプルデータセットの識別と分類

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Data Quality Assessment (13 minutes) | データ品質評価（13分）

**What Students Do:**
- Analyze a provided "messy" company dataset with intentional quality issues | 意図的な品質問題を含む提供された「乱雑な」企業データセットを分析
- Identify specific data quality problems (missing values, inconsistencies, duplicates, errors) | 特定のデータ品質問題を特定（欠損値、不整合、重複、エラー）
- Categorize each issue by type | 各問題をタイプ別に分類
- Discuss with bot the impact of each issue on ML models | 各問題がMLモデルに与える影響についてボットと議論

**Bot Guidance:**
- Presents dataset with common quality issues | 一般的な品質問題を持つデータセットを提示
- Guides students through systematic quality check | 体系的な品質チェックを通じて学生をガイド
- Asks probing questions: "What happens if we train an ML model on this data?" | 探索的な質問：「このデータでMLモデルを訓練したらどうなりますか？」
- Explains consequences of poor data quality | 低品質データの結果を説明

**Expected Output:** Documented list of at least 5 data quality issues with descriptions and potential impacts
期待される出力：説明と潜在的影響を伴う少なくとも5つのデータ品質問題の文書化されたリスト

**Time Allocation:** 13 minutes | 13分

---

### Step 3: Company Data Source Brainstorming (15 minutes) | 企業データソースブレインストーミング（15分）

**What Students Do:**
- Think about their own company research process | 自分の企業調査プロセスについて考える
- Brainstorm potential online sources for company information | 企業情報の潜在的なオンラインソースをブレインストーム
- Identify at least 5-7 different data sources | 少なくとも5-7の異なるデータソースを特定
- For each source, note what type of data is available | 各ソースについて、どのタイプのデータが利用可能かを記録

**Bot Guidance:**
- Asks: "Where do you currently look for company information?" | 質問：「現在、企業情報をどこで探していますか？」
- Prompts thinking: "What information would help you decide if a company is a good fit?" | 思考を促す：「どの情報が企業が良い適合かを決めるのに役立ちますか？」
- Suggests categories: job boards, company websites, review sites, news articles | カテゴリーを提案：求人サイト、企業ウェブサイト、レビューサイト、ニュース記事
- Helps organize sources by data type and accessibility | データタイプとアクセシビリティでソースを整理するのを助ける

**Expected Output:** List of 5-7 potential company data sources with descriptions of available data
期待される出力：利用可能なデータの説明を伴う5-7の潜在的な企業データソースのリスト

**Time Allocation:** 15 minutes | 15分

---

### Step 4: Data Source Evaluation (12 minutes) | データソース評価（12分）

**What Students Do:**
- Create evaluation criteria for data sources (accessibility, legality, data quality, relevance) | データソースの評価基準を作成（アクセシビリティ、合法性、データ品質、関連性）
- Evaluate each identified source against criteria | 各特定されたソースを基準に照らして評価
- Rank sources by suitability for the project | プロジェクトへの適合性でソースをランク付け
- Select top 3 sources to pursue for data collection | データ収集のために追求するトップ3のソースを選択

**Bot Guidance:**
- Introduces evaluation framework | 評価フレームワークを紹介
- Asks critical questions: "Is this data legally scrapable?" "Will this data help classify companies?" | 批判的な質問：「このデータは合法的にスクレイプ可能ですか？」「このデータは企業を分類するのに役立ちますか？」
- Highlights ethical and legal considerations | 倫理的および法的考慮事項を強調
- Helps students make informed decisions | 学生が情報に基づいた決定を下すのを助ける

**Expected Output:** Evaluated and ranked list of data sources with top 3 selections justified
期待される出力：正当化された上位3選択を伴う評価およびランク付けされたデータソースのリスト

**Time Allocation:** 12 minutes | 12分

---

### Step 5: AI Transparency Documentation (8 minutes) | AI透明性文書化（8分）

**What Students Do:**
- If using external AI chatbots during activity, document: | アクティビティ中に外部AIチャットボットを使用した場合、文書化：
  - All prompts sent to AI | AIに送信したすべてのプロンプト
  - All AI responses received | 受け取ったすべてのAI応答
  - How they verified the information | 情報をどのように検証したか
  - Any hallucinations or errors detected | 検出された幻覚またはエラー
- Complete AI transparency log template | AI透明性ログテンプレートを完成
- Submit with activity deliverable | アクティビティ成果物とともに提出

**Bot Guidance:**
- Reminds students of AI transparency requirements | 学生にAI透明性要件を思い出させる
- Provides transparency log template | 透明性ログテンプレートを提供
- Reviews best practices for verifying AI-generated information | AI生成情報を検証するベストプラクティスを確認

**Expected Output:** Completed AI transparency log (if AI was used) or statement of no AI usage
期待される出力：完成したAI透明性ログ（AIを使用した場合）またはAI使用なしの声明

**Time Allocation:** 8 minutes | 8分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Web browser | Webブラウザ
- Spreadsheet software (Excel, Google Sheets) | スプレッドシートソフトウェア（Excel、Google Sheets）
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Sample structured dataset (CSV format) | サンプル構造化データセット（CSV形式）
- Sample semi-structured dataset (JSON format) | サンプル半構造化データセット（JSON形式）
- Sample unstructured dataset (text format) | サンプル非構造化データセット（テキスト形式）
- "Messy" company dataset with quality issues | 品質問題を持つ「乱雑な」企業データセット
- Data source evaluation template | データソース評価テンプレート

**Reference Materials:**
- Data quality checklist | データ品質チェックリスト
- Data types guide (bilingual) | データタイプガイド（バイリンガル）
- Legal and ethical data collection guidelines | 合法的かつ倫理的なデータ収集ガイドライン
- AI transparency log template | AI透明性ログテンプレート

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain data types or quality concepts | AIにデータタイプや品質コンセプトを説明するよう依頼
- Getting suggestions for company data sources | 企業データソースの提案を取得
- Understanding technical terminology related to data | データに関連する技術用語の理解
- Helping organize evaluation criteria | 評価基準の整理を支援

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What are the best websites to find company information for job searching in Japan?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI responses into transparency log

3. **Document verification process** | 検証プロセスを文書化
   - How did you verify the data sources suggested by AI are legitimate?
   - Did you check if the websites actually exist and are accessible?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest any non-existent websites or data sources?
   - Did you verify each source independently?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Data Type Analysis Document (required) | データタイプ分析文書（必須）**
   - Identification of three sample datasets with data type classification | データタイプ分類を伴う3つのサンプルデータセットの識別
   - Characteristics of each data type explained | 説明された各データタイプの特性
   - Format: Word document or PDF | 形式：Wordドキュメントまたは PDF

2. **Data Quality Assessment Report (required) | データ品質評価レポート（必須）**
   - At least 5 identified data quality issues | 少なくとも5つの特定されたデータ品質問題
   - Description of each issue and potential ML impact | 各問題の説明と潜在的なML影響
   - Format: Word document or PDF | 形式：Wordドキュメントまたは PDF

3. **Data Source Identification Report (required) | データソース特定レポート（必須）**
   - List of 5-7 potential company data sources | 5-7の潜在的な企業データソースのリスト
   - Evaluation of each source using criteria | 基準を使用した各ソースの評価
   - Top 3 sources selected with justification | 正当化された選択された上位3ソース
   - Format: Use provided template | 形式：提供されたテンプレートを使用

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week02_YourName_DataSources | ファイル命名：Week02_あなたの名前_DataSources

**Deadline:** End of Week 2 | 第2週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Data Type Analysis (2 points) | データタイプ分析（2ポイント）**
  - Correct identification of all three data types | 3つすべてのデータタイプの正しい識別
  - Clear explanation of characteristics | 特性の明確な説明

- **Data Quality Assessment (3 points) | データ品質評価（3ポイント）**
  - At least 5 valid quality issues identified | 少なくとも5つの有効な品質問題が特定されている
  - Accurate description of ML impacts | ML影響の正確な説明
  - Demonstrates understanding of data quality importance | データ品質の重要性の理解を示している

- **Data Source Identification (3 points) | データソース特定（3ポイント）**
  - 5-7 relevant company data sources identified | 5-7の関連する企業データソースが特定されている
  - Thoughtful evaluation using criteria | 基準を使用した思慮深い評価
  - Top 3 selections well-justified | 上位3選択がよく正当化されている

- **AI Transparency (2 points) | AI透明性（2ポイント）**
  - Complete documentation if AI was used | AIを使用した場合の完全な文書化
  - Proper verification process documented | 適切な検証プロセスが文書化されている
  - OR: Clear statement that no external AI was used | または：外部AIを使用しなかったという明確な声明

**Quality Expectations:**
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）
- Clear, organized presentation | 明確で整理されたプレゼンテーション
- Evidence of critical thinking about data sources | データソースに関する批判的思考の証拠
- Practical relevance to project goals | プロジェクト目標への実践的な関連性

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Difficulty distinguishing data types | データタイプの区別が困難**
- **Solution:** Look at the structure - Does it have rows/columns (structured)? Is it free text (unstructured)? Does it have some structure but varies (semi-structured)? | 構造を見る - 行/列がありますか（構造化）？自由テキストですか（非構造化）？いくつかの構造がありますが変化しますか（半構造化）？
- **Bot Assistance:** Bot can show side-by-side examples and highlight differences | ボットは並べて例を示し、違いを強調できます

**Problem 2: Can't identify data quality issues | データ品質問題を特定できない**
- **Solution:** Look systematically - check for missing values, check for duplicates, look for inconsistent formatting, verify data makes sense | 体系的に見る - 欠損値をチェック、重複をチェック、一貫性のない書式を探す、データが意味をなすか検証
- **Bot Assistance:** Bot provides quality checklist and guides step-by-step inspection | ボットは品質チェックリストを提供し、ステップバイステップ検査をガイド

**Problem 3: Don't know where to find company data | 企業データをどこで見つけるかわからない**
- **Solution:** Think about your own job search - where do you look? Job boards? Company sites? Review platforms? Start with what you know | 自分の就職活動について考える - どこを見ますか？求人サイト？企業サイト？レビュープラットフォーム？知っているものから始める
- **Bot Assistance:** Bot asks guiding questions to trigger ideas and suggests common sources | ボットはアイデアを引き出すガイド質問を行い、一般的なソースを提案

**Problem 4: Unsure how to evaluate data sources | データソースを評価する方法が不明**
- **Solution:** Use the four criteria: Can I access it? Is it legal to collect? Is the data good quality? Is it relevant to my project? | 4つの基準を使用：アクセスできますか？収集は合法ですか？データは良い品質ですか？プロジェクトに関連していますか？
- **Bot Assistance:** Bot provides evaluation template and walks through each criterion | ボットは評価テンプレートを提供し、各基準を通して歩く

**When to Ask for Help:**
- Can't access sample datasets | サンプルデータセットにアクセスできない
- Confused about legal/ethical data collection | 合法的/倫理的データ収集について混乱している
- Bot can't answer specific questions | ボットが特定の質問に答えられない
- Need clarification on deliverables | 成果物について説明が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot first for technical questions | 技術的な質問にはまずボットを使用

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
