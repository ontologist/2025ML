# Week 5 Activity: No-Code Web Scraping Tools
# 第5週アクティビティ：ノーコードWebスクレイピングツール

## Activity Information | アクティビティ情報

**Activity Title:** Setting Up No-Code Scraping Tools and Practice Data Collection | ノーコードスクレイピングツールのセットアップと練習データ収集
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Use no-code tools to collect data from websites | ノーコードツールを使用してウェブサイトからデータを収集する
**Prerequisites:** Week 4 completion - Understanding of HTML structure and ethical scraping | 第4週完了 - HTML構造と倫理的スクレイピングの理解

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Set up and configure a no-code web scraping tool | ノーコードWebスクレイピングツールをセットアップして設定する
- Create scraping workflows without writing code | コードを書かずにスクレイピングワークフローを作成する
- Extract structured data from sample websites | サンプルウェブサイトから構造化データを抽出する
- Export scraped data in usable formats (CSV, JSON) | スクレイプされたデータを使用可能な形式（CSV、JSON）でエクスポートする

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Introduction to no-code scraping platforms and tools
講義のコンセプト：ノーコードスクレイピングプラットフォームとツールの紹介

**Activity Application:** Students apply lecture concepts by setting up actual scraping tools and practicing data extraction on sample sites. This hands-on experience prepares them for collecting company data in Week 6.
アクティビティの適用：学生は実際のスクレイピングツールをセットアップし、サンプルサイトでデータ抽出を練習することで、講義のコンセプトを適用します。このハンズオン経験は、第6週での企業データ収集のために学生を準備します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot provides step-by-step guidance for tool setup, troubleshoots scraping issues, and validates successful data extraction.
ボットの役割：ML-101ボットはツールセットアップのためのステップバイステップガイダンスを提供し、スクレイピングの問題をトラブルシュートし、データ抽出の成功を検証します。

**BMAD Workflow Steps:**
1. Bot guides tool selection and account setup | ボットがツール選択とアカウントセットアップをガイド
2. Bot provides tutorial on tool interface and features | ボットがツールインターフェースと機能に関するチュートリアルを提供
3. Bot walks through first scraping workflow creation | ボットが最初のスクレイピングワークフロー作成を案内
4. Bot assists with selector configuration | ボットがセレクター設定を支援
5. Bot validates scraped data quality | ボットがスクレイプされたデータの品質を検証

**Bot Portal Interaction Points:**
- Tool setup wizard | ツールセットアップウィザード
- Interactive scraping tutorial | インタラクティブなスクレイピングチュートリアル
- Real-time troubleshooting assistance | リアルタイムトラブルシューティング支援
- Data validation checkpoint | データ検証チェックポイント

**Data Captured:**
- Tool setup success rate | ツールセットアップ成功率
- Common configuration errors | 一般的な設定エラー
- Scraping workflow complexity | スクレイピングワークフローの複雑さ
- Data extraction accuracy | データ抽出の精度

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: No-Code Scraping Tool Setup (12 minutes) | ノーコードスクレイピングツールセットアップ（12分）

**What Students Do:**
- Access recommended no-code scraping tool (e.g., Octoparse, ParseHub, Web Scraper) | 推奨されるノーコードスクレイピングツールにアクセス（例：Octoparse、ParseHub、Web Scraper）
- Create free account and verify email | 無料アカウントを作成しメールを確認
- Download and install desktop application (if required) | デスクトップアプリケーションをダウンロードしてインストール（必要な場合）
- Complete initial tool tutorial/walkthrough | 初期ツールチュートリアル/ウォークスルーを完了
- Familiarize with interface: workspace, selectors, data preview | インターフェースに慣れる：ワークスペース、セレクター、データプレビュー

**Bot Guidance:**
- Recommends specific tool based on course needs and platform availability | コースニーズとプラットフォームの可用性に基づいて特定のツールを推奨
- Provides download links and installation instructions | ダウンロードリンクとインストール手順を提供
- Shows screenshots of key setup steps | 主要なセットアップステップのスクリーンショットを表示
- Explains free tier limitations and capabilities | 無料ティアの制限と機能を説明
- Confirms successful setup: "Can you see the main workspace?" | セットアップの成功を確認：「メインワークスペースが見えますか？」

**Expected Output:** Successfully installed and configured scraping tool with account ready to use
期待される出力：使用準備ができたアカウントを含む正常にインストールおよび設定されたスクレイピングツール

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Simple Scraping Workflow - Book Listings (13 minutes) | シンプルなスクレイピングワークフロー - 書籍リスト（13分）

**What Students Do:**
- Navigate to practice website provided by bot (e.g., books.toscrape.com) | ボットが提供する練習ウェブサイトにナビゲート（例：books.toscrape.com）
- Create new scraping task/project in the tool | ツールで新しいスクレイピングタスク/プロジェクトを作成
- Use point-and-click interface to select data elements: | ポイントアンドクリックインターフェースを使用してデータ要素を選択：
  - Book titles | 書籍タイトル
  - Prices | 価格
  - Star ratings | 星評価
- Configure pagination (if available on practice site) | ページネーションを設定（練習サイトで利用可能な場合）
- Preview scraped data before running | 実行前にスクレイプされたデータをプレビュー
- Run scraper and collect at least 20 book entries | スクレイパーを実行し、少なくとも20の書籍エントリを収集

**Bot Guidance:**
- Provides URL of safe, legal practice website | 安全で合法的な練習ウェブサイトのURLを提供
- Shows step-by-step workflow creation process | ステップバイステップのワークフロー作成プロセスを表示
- Explains: "Click the data you want, the tool will learn the pattern" | 説明：「必要なデータをクリックすると、ツールはパターンを学習します」
- Guides selector configuration: "Make sure you select multiple items to establish a pattern" | セレクター設定をガイド：「パターンを確立するために複数のアイテムを選択してください」
- Troubleshoots common issues: wrong elements selected, data not extracting properly | 一般的な問題をトラブルシュート：間違った要素が選択されている、データが適切に抽出されていない

**Expected Output:** Successfully scraped dataset of at least 20 books with titles, prices, and ratings
期待される出力：タイトル、価格、評価を含む少なくとも20冊の書籍の正常にスクレイプされたデータセット

**Time Allocation:** 13 minutes | 13分

---

### Step 3: Intermediate Scraping - Product Details (15 minutes) | 中級スクレイピング - 製品詳細（15分）

**What Students Do:**
- Navigate to a product listing practice site provided by bot | ボットが提供する製品リスト練習サイトにナビゲート
- Create more complex scraping workflow including: | より複雑なスクレイピングワークフローを作成：
  - Product names | 製品名
  - Descriptions (may be longer text) | 説明（より長いテキストの可能性）
  - Multiple attributes (category, price, availability) | 複数の属性（カテゴリ、価格、在庫状況）
- Handle pagination to scrape multiple pages | ページネーションを処理して複数ページをスクレイプ
- Clean data during extraction (e.g., remove currency symbols if tool supports) | 抽出中にデータをクリーニング（例：ツールがサポートする場合、通貨記号を削除）
- Export data as CSV file | データをCSVファイルとしてエクスポート

**Bot Guidance:**
- Provides second practice website with more complex structure | より複雑な構造を持つ2番目の練習ウェブサイトを提供
- Explains how to handle multi-page scraping | マルチページスクレイピングの処理方法を説明
- Shows how to configure pagination settings | ページネーション設定の構成方法を示す
- Demonstrates data cleaning features: "Some tools let you remove extra characters" | データクリーニング機能を実演：「一部のツールでは余分な文字を削除できます」
- Guides export process: "Save as CSV - this is what we'll use in Python later" | エクスポートプロセスをガイド：「CSVとして保存 - これが後でPythonで使用するものです」

**Expected Output:** CSV file with at least 30 product entries including multiple attributes from multiple pages
期待される出力：複数ページからの複数の属性を含む少なくとも30の製品エントリを含むCSVファイル

**Time Allocation:** 15 minutes | 15分

---

### Step 4: Company Data Practice Scrape (12 minutes) | 企業データ練習スクレイプ（12分）

**What Students Do:**
- Choose one of the approved websites from Week 4 feasibility report | 第4週の実現可能性レポートからの承認されたウェブサイトの1つを選択
- Create scraping workflow for company data including: | 企業データのスクレイピングワークフローを作成：
  - Company names | 企業名
  - Industries or categories | 業界またはカテゴリ
  - Brief descriptions | 簡単な説明
  - Any other available relevant data | その他の利用可能な関連データ
- Scrape a small sample (5-10 companies) as proof of concept | 概念実証として小さなサンプル（5-10社）をスクレイプ
- Verify data quality and completeness | データの品質と完全性を確認
- Document any challenges encountered | 遭遇した課題を文書化

**Bot Guidance:**
- Reviews ethical considerations before scraping real sites | 実際のサイトをスクレイピングする前に倫理的考慮事項を確認
- Reminds: "Only scrape sites you evaluated as ethical and legal in Week 4" | 思い出させる：「第4週で倫理的かつ合法的と評価したサイトのみをスクレイプしてください」
- Provides troubleshooting for site-specific issues | サイト固有の問題のトラブルシューティングを提供
- Helps identify best selectors for company data | 企業データの最良のセレクターを特定するのを助ける
- Validates data quality: "Do all fields have data? Are there errors?" | データ品質を検証：「すべてのフィールドにデータがありますか？エラーはありますか？」

**Expected Output:** Small sample dataset of 5-10 companies with complete information and documentation of process
期待される出力：完全な情報とプロセスの文書化を含む5-10社の小さなサンプルデータセット

**Time Allocation:** 12 minutes | 12分

---

### Step 5: Documentation and AI Transparency (8 minutes) | 文書化とAI透明性（8分）

**What Students Do:**
- Document scraping workflows created: | 作成されたスクレイピングワークフローを文書化：
  - URLs scraped | スクレイプされたURL
  - Data fields extracted | 抽出されたデータフィールド
  - Number of records collected | 収集されたレコード数
  - Challenges and solutions | 課題と解決策
- Save all exported CSV files | すべてのエクスポートされたCSVファイルを保存
- Take screenshots of successful scraping workflows | 成功したスクレイピングワークフローのスクリーンショットを撮る
- Complete AI transparency log if external AI was used | 外部AIを使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Provides documentation template | 文書テンプレートを提供
- Reviews what should be included in submission | 提出に含めるべきものを確認
- Reminds of AI transparency requirements | AI透明性要件を思い出させる
- Validates completeness of deliverables | 成果物の完全性を検証

**Expected Output:** Complete documentation package with CSV files, screenshots, and process notes
期待される出力：CSVファイル、スクリーンショット、プロセスノートを含む完全な文書パッケージ

**Time Allocation:** 8 minutes | 8分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- No-code web scraping tool (recommended: Octoparse, ParseHub, or Web Scraper extension) | ノーコードWebスクレイピングツール（推奨：Octoparse、ParseHub、またはWeb Scraper拡張機能）
- Web browser (Chrome recommended for extensions) | Webブラウザ（拡張機能にはChrome推奨）
- Spreadsheet software for viewing CSV files | CSVファイルを表示するためのスプレッドシートソフトウェア
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Practice website URLs (provided via bot) | 練習ウェブサイトURL（ボット経由で提供）
- Scraping workflow documentation template | スクレイピングワークフロー文書テンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- No-code scraping tool quick start guide | ノーコードスクレイピングツールクイックスタートガイド
- Selector configuration best practices | セレクター設定のベストプラクティス
- Data export format comparison (CSV vs JSON) | データエクスポート形式比較（CSV vs JSON）
- Troubleshooting common scraping errors | 一般的なスクレイピングエラーのトラブルシューティング

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI for help understanding tool features | ツール機能の理解のためにAIに助けを求める
- Getting suggestions for fixing scraping errors | スクレイピングエラーを修正するための提案を取得
- Understanding selector configuration | セレクター設定の理解
- Learning about data export formats | データエクスポート形式について学ぶ

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "How do I configure pagination in Octoparse to scrape multiple pages?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI instructions and suggestions

3. **Document verification process** | 検証プロセスを文書化
   - Did you test the AI's suggested solution?
   - Did the scraping workflow work after following AI advice?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest features that don't exist in your tool?
   - Did you verify instructions against tool documentation?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Practice Scraping Results (required) | 練習スクレイピング結果（必須）**
   - CSV file from book listing scrape (at least 20 entries) | 書籍リストスクレイプからのCSVファイル（少なくとも20エントリ）
   - CSV file from product details scrape (at least 30 entries) | 製品詳細スクレイプからのCSVファイル（少なくとも30エントリ）
   - CSV file from company data practice scrape (5-10 entries) | 企業データ練習スクレイプからのCSVファイル（5-10エントリ）
   - Format: CSV files | 形式：CSVファイル

2. **Scraping Workflow Documentation (required) | スクレイピングワークフロー文書（必須）**
   - Screenshots of each scraping workflow configuration | 各スクレイピングワークフロー設定のスクリーンショット
   - Description of data fields extracted | 抽出されたデータフィールドの説明
   - URLs of all scraped websites | すべてのスクレイプされたウェブサイトのURL
   - Challenges encountered and solutions applied | 遭遇した課題と適用された解決策
   - Format: Word/PDF with embedded screenshots | 形式：埋め込まれたスクリーンショットを含むWord/PDF

3. **Tool Setup Confirmation (required) | ツールセットアップ確認（必須）**
   - Screenshot of successfully installed tool | 正常にインストールされたツールのスクリーンショット
   - Account information (username, not password) | アカウント情報（ユーザー名、パスワードは不可）
   - Brief reflection: What was easy? What was challenging? | 簡単な考察：何が簡単でしたか？何が挑戦的でしたか？
   - Format: Word document or PDF | 形式：WordドキュメントまたはPDF

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week05_YourName_NoCodeScraping | ファイル命名：Week05_あなたの名前_NoCodeScraping

**Deadline:** End of Week 5 | 第5週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Tool Setup and Basic Scraping (3 points) | ツールセットアップと基本的なスクレイピング（3ポイント）**
  - Successfully installed and configured scraping tool | スクレイピングツールを正常にインストールおよび設定
  - Completed book listing scrape with at least 20 valid entries | 少なくとも20の有効なエントリを含む書籍リストスクレイプを完了
  - Data is correctly extracted and formatted | データが正しく抽出およびフォーマットされている

- **Intermediate Scraping Skills (3 points) | 中級スクレイピングスキル（3ポイント）**
  - Successfully scraped product details from multiple pages | 複数ページから製品詳細を正常にスクレイプ
  - Collected at least 30 entries with multiple attributes | 複数の属性を持つ少なくとも30エントリを収集
  - Properly exported data in CSV format | CSVフォーマットでデータを適切にエクスポート

- **Company Data Application (2 points) | 企業データ適用（2ポイント）**
  - Successfully scraped sample company data | サンプル企業データを正常にスクレイプ
  - Data is relevant and complete | データは関連性があり完全
  - Ethical considerations followed | 倫理的考慮事項に従った

- **Documentation and AI Transparency (2 points) | 文書化とAI透明性（2ポイント）**
  - Clear documentation of all workflows | すべてのワークフローの明確な文書化
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ
  - Thoughtful reflection on experience | 経験に関する思慮深い考察

**Quality Expectations:**
- All CSV files must be readable and well-formatted | すべてのCSVファイルは読みやすく、よくフォーマットされている必要があります
- Data should be clean without obvious errors | データは明らかなエラーなしでクリーンである必要があります
- Screenshots must clearly show workflow configurations | スクリーンショットはワークフロー設定を明確に表示する必要があります
- Evidence of ethical scraping practices | 倫理的スクレイピング実践の証拠
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Tool won't install or crashes | ツールがインストールされないまたはクラッシュする**
- **Solution:** Check system requirements. Try browser extension version if desktop app fails. Restart computer. Clear browser cache. Try different browser. | システム要件を確認します。デスクトップアプリが失敗した場合はブラウザ拡張バージョンを試します。コンピュータを再起動します。ブラウザキャッシュをクリアします。別のブラウザを試します。
- **Bot Assistance:** Bot provides alternative tool suggestions and troubleshooting steps | ボットは代替ツールの提案とトラブルシューティングステップを提供

**Problem 2: Selectors not capturing the right data | セレクターが正しいデータをキャプチャしない**
- **Solution:** Be more specific with selection. Select multiple similar items to establish pattern. Use tool's "edit selector" feature to refine. Try selecting parent elements. | 選択をより具体的にします。パターンを確立するために複数の類似アイテムを選択します。ツールの「セレクターを編集」機能を使用して改良します。親要素を選択してみます。
- **Bot Assistance:** Bot provides selector debugging guide and can suggest improvements | ボットはセレクターデバッグガイドを提供し、改善を提案できます

**Problem 3: Scraper runs but returns no data | スクレイパーは実行されるがデータが返されない**
- **Solution:** Check if website structure changed. Verify selectors are still valid. Check for JavaScript-rendered content (some tools can't handle this). Try refreshing workflow. | ウェブサイト構造が変更されたかどうかを確認します。セレクターがまだ有効か検証します。JavaScript でレンダリングされたコンテンツを確認（一部のツールはこれを処理できません）。ワークフローを更新してみます。
- **Bot Assistance:** Bot provides checklist for diagnosing data extraction failures | ボットはデータ抽出の失敗を診断するためのチェックリストを提供

**Problem 4: Pagination not working | ページネーションが機能しない**
- **Solution:** Look for tool's pagination settings. Identify "next page" button or page number links. Configure maximum pages to scrape. Some tools auto-detect pagination - make sure it's enabled. | ツールのページネーション設定を探します。「次のページ」ボタンまたはページ番号リンクを特定します。スクレイプする最大ページ数を設定します。一部のツールはページネーションを自動検出します - それが有効になっていることを確認します。
- **Bot Assistance:** Bot provides tool-specific pagination configuration guide | ボットはツール固有のページネーション設定ガイドを提供

**Problem 5: CSV file is messy or has formatting issues | CSVファイルが乱雑またはフォーマット問題がある**
- **Solution:** Check tool's export settings. Make sure all fields are properly labeled. Use UTF-8 encoding for international characters. Some tools let you clean data before export - use those features. | ツールのエクスポート設定を確認します。すべてのフィールドが適切にラベル付けされていることを確認します。国際文字にはUTF-8エンコーディングを使用します。一部のツールではエクスポート前にデータをクリーニングできます - それらの機能を使用します。
- **Bot Assistance:** Bot explains CSV formatting and provides cleaning tips | ボットはCSVフォーマットを説明し、クリーニングのヒントを提供

**Problem 6: Website blocks or limits scraping | ウェブサイトがスクレイピングをブロックまたは制限する**
- **Solution:** Respect the website's wishes - if it's actively blocking scrapers, don't force it. Try the website's API if available. Add delays between requests. For practice sites, this shouldn't be an issue. | ウェブサイトの意向を尊重 - スクレイパーを積極的にブロックしている場合、強制しないでください。利用可能な場合はウェブサイトのAPIを試してください。リクエスト間に遅延を追加します。練習サイトの場合、これは問題にならないはずです。
- **Bot Assistance:** Bot reviews ethical considerations and suggests alternative sources | ボットは倫理的考慮事項を確認し、代替ソースを提案

**When to Ask for Help:**
- Tool consistently fails or crashes | ツールが一貫して失敗またはクラッシュする
- Can't get any data to extract despite multiple attempts | 複数回試行してもデータを抽出できない
- Unsure if scraping approach is ethical for specific site | 特定のサイトでのスクレイピングアプローチが倫理的かどうか不明
- Need alternative tool recommendation | 代替ツールの推奨が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for technical troubleshooting | 技術的なトラブルシューティングにはボットを使用
- Share screenshots when asking for help - shows exactly what's happening | 助けを求めるときはスクリーンショットを共有 - 正確に何が起こっているかを示す

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
