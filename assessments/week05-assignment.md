# Week 5 Assignment: No-Code Web Scraping Tools
# 第5週課題：ノーコードWebスクレイピングツール

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Week:** 5 | 第5週
**Due Date:** End of Week 5 class session | 第5週授業終了時
**Weight:** Part of 40% Weekly Activities grade | 週次アクティビティ評価40%の一部
**Submission:** Through ML-101 Bot Portal | ML-101ボットポータル経由

---

## Assignment Overview | 課題概要

This assignment introduces you to no-code web scraping tools and practical data collection. You'll set up a scraping tool, practice on sample websites, and collect your first company data for the course project. This hands-on experience bridges the gap between planning (Week 4) and full project implementation (Week 6).

この課題は、ノーコードWebスクレイピングツールと実践的なデータ収集を紹介します。スクレイピングツールをセットアップし、サンプルウェブサイトで練習し、コースプロジェクトのために最初の企業データを収集します。このハンズオン経験は、計画（第4週）と完全なプロジェクト実装（第6週）の間のギャップを埋めます。

---

## Learning Objectives | 学習目標

By completing this assignment, you will be able to:
この課題を完了することで、以下ができるようになります：

- ✅ Set up and configure no-code web scraping tools
  ノーコードWebスクレイピングツールをセットアップして設定する

- ✅ Create scraping workflows using point-and-click interfaces
  ポイントアンドクリックインターフェースを使用してスクレイピングワークフローを作成する

- ✅ Extract structured data from websites without writing code
  コードを書かずにウェブサイトから構造化データを抽出する

- ✅ Export and validate scraped data in CSV format
  スクレイプされたデータをCSV形式でエクスポートして検証する

- ✅ Troubleshoot common scraping issues and errors
  一般的なスクレイピングの問題とエラーをトラブルシューティングする

---

## Prerequisites | 前提条件

- ✅ Attended Week 5 lecture (or reviewed lecture slides)
  第5週講義に出席（または講義スライドをレビュー）

- ✅ Completed Week 4 assignment (ethical analysis and feasibility report)
  第4週課題を完了（倫理的分析と実現可能性レポート）

- ✅ Identified approved websites for scraping from Week 4
  第4週からのスクレイピング用の承認されたウェブサイトを特定

- ✅ Computer with internet access and ability to install software (or use browser extension)
  インターネットアクセスとソフトウェアをインストールする能力（またはブラウザ拡張機能を使用）を持つコンピュータ

---

## Assignment Deliverables | 課題成果物

### Deliverable 1: Tool Setup Documentation
### 成果物1：ツールセットアップ文書

**Required Content | 必要な内容:**

Document your successful setup of a no-code scraping tool.
ノーコードスクレイピングツールの成功したセットアップを文書化します。

**Recommended Tools (choose ONE):**
推奨ツール（1つを選択）：

1. **Octoparse** (Desktop application, free tier available)
   - Best for: Comprehensive features, good for beginners
   - 最適：包括的な機能、初心者に適している

2. **ParseHub** (Desktop application, free tier available)
   - Best for: JavaScript-heavy sites, visual interface
   - 最適：JavaScript重視のサイト、ビジュアルインターフェース

3. **Web Scraper (Chrome Extension)** (Browser extension)
   - Best for: Quick setup, no download required
   - 最適：クイックセットアップ、ダウンロード不要

4. **Other approved tools** (check with instructor first)
   - その他の承認されたツール（最初にインストラクターに確認）

**Documentation Requirements:**
文書化要件：

**A. Tool Selection and Installation**
ツール選択とインストール

- Which tool did you choose? Why?
  どのツールを選択しましたか？理由は？
- Installation steps followed
  従ったインストールステップ
- Screenshot showing successful installation
  成功したインストールを示すスクリーンショット

**B. Account Creation**
アカウント作成

- Account username (NOT password)
  アカウントユーザー名（パスワードは不可）
- Email confirmation received
  メール確認を受信
- Screenshot of account dashboard or main interface
  アカウントダッシュボードまたはメインインターフェースのスクリーンショット

**C. Initial Configuration**
初期設定

- Settings configured (if any)
  設定された設定（ある場合）
- Tutorial or walkthrough completed
  完了したチュートリアルまたはウォークスルー
- Screenshot showing you're ready to create first scraping task
  最初のスクレイピングタスクを作成する準備ができていることを示すスクリーンショット

**Format | 形式:**
- Include in main submission document
- メイン提出文書に含める
- Clearly labeled section: "Tool Setup Documentation"
- 明確にラベル付けされたセクション：「ツールセットアップ文書」
- Include 2-3 screenshots
- 2-3のスクリーンショットを含める

**Scoring (15 points) | 採点（15点）:**
- Tool installed successfully: 5 points
  ツールが正常にインストールされた：5点
- Account created and confirmed: 5 points
  アカウントが作成され確認された：5点
- Clear documentation with screenshots: 5 points
  スクリーンショット付きの明確な文書：5点

---

### Deliverable 2: Practice Scraping Workflow Results
### 成果物2：練習スクレイピングワークフロー結果

**Required Content | 必要な内容:**

Complete a practice scraping exercise on a **safe, legal sample website** (provided by instructor/bot).

**安全で合法的なサンプルウェブサイト**（インストラクター/ボットが提供）で練習スクレイピング演習を完了します。

**Sample Site:** Books to Scrape (http://books.toscrape.com/) or equivalent provided by instructor
**サンプルサイト:** Books to Scrape (http://books.toscrape.com/) またはインストラクターが提供する同等のもの

**Scraping Task:**
スクレイピングタスク：

Scrape **at least 20 book entries** from the sample website with the following data fields:
サンプルウェブサイトから以下のデータフィールドを持つ**少なくとも20の書籍エントリ**をスクレイプ：

- Book title (書籍タイトル)
- Price (価格)
- Availability status (在庫状況)
- Star rating (星評価)

**Required Documentation:**
必要な文書：

**A. Workflow Creation Process**
ワークフロー作成プロセス

- Step-by-step description of how you created the scraping workflow
  スクレイピングワークフローを作成した方法のステップバイステップの説明
- How did you select elements (click, CSS selector, XPath)?
  要素をどのように選択しましたか（クリック、CSSセレクター、XPath）？
- Screenshot of workflow configuration in the tool
  ツールでのワークフロー設定のスクリーンショット

**B. Data Extraction**
データ抽出

- Number of entries scraped (minimum 20)
  スクレイプされたエントリ数（最低20）
- Screenshot showing data preview in the tool
  ツールでデータプレビューを示すスクリーンショット
- Screenshot of successful scraping completion
  成功したスクレイピング完了のスクリーンショット

**C. CSV Export**
CSVエクスポート

- Export data to CSV format
  データをCSV形式にエクスポート
- Submit the CSV file with your assignment
  課題と一緒にCSVファイルを提出
- CSV must have clean headers and readable data
  CSVはクリーンなヘッダーと読みやすいデータを持つ必要があります

**Format | 形式:**
- Documentation in main document with screenshots
- スクリーンショット付きのメイン文書での文書化
- CSV file: `Week05_[YourName]_PracticeScrape.csv`
- CSVファイル：`Week05_[あなたの名前]_PracticeScrape.csv`

**Scoring (20 points) | 採点（20点）:**
- Workflow created and documented: 6 points
  ワークフローが作成され文書化された：6点
- 20+ entries successfully scraped: 8 points
  20以上のエントリが正常にスクレイプされた：8点
- Clean CSV export with all fields: 6 points
  すべてのフィールドを持つクリーンなCSVエクスポート：6点

---

### Deliverable 3: Intermediate Scraping Results
### 成果物3：中級スクレイピング結果

**Required Content | 必要な内容:**

Complete a more complex scraping task with **multiple pages** and additional data fields.

**複数ページ**と追加のデータフィールドを持つより複雑なスクレイピングタスクを完了します。

**Scraping Task:**
スクレイピングタスク：

From the same or similar practice website, scrape **at least 30 product/item entries across multiple pages**.

同じまたは類似の練習ウェブサイトから、**複数ページにわたって少なくとも30の製品/アイテムエントリ**をスクレイプします。

**Required Data Fields (minimum 4):**
必要なデータフィールド（最低4つ）：

- Product/Item name
  製品/アイテム名
- Price
  価格
- Rating or review score (if available)
  評価またはレビュースコア（利用可能な場合）
- Availability or stock status
  在庫または在庫状況
- Any additional relevant field
  その他の関連フィールド

**Required Documentation:**
必要な文書：

**A. Pagination Configuration**
ページネーション設定

- How did you set up multi-page scraping?
  マルチページスクレイピングをどのように設定しましたか？
- Screenshot showing pagination settings
  ページネーション設定を示すスクリーンショット
- Number of pages scraped
  スクレイプされたページ数

**B. Data Extraction**
データ抽出

- Total entries collected (minimum 30)
  収集された合計エントリ（最低30）
- Screenshot of data preview showing entries from different pages
  異なるページからのエントリを示すデータプレビューのスクリーンショット
- Evidence that pagination worked correctly
  ページネーションが正しく機能した証拠

**C. CSV Export and Validation**
CSVエクスポートと検証

- Export as CSV file
  CSVファイルとしてエクスポート
- Open in spreadsheet software to verify data quality
  データ品質を確認するためにスプレッドシートソフトウェアで開く
- Check for: complete data, no duplicates, correct formatting
  確認：完全なデータ、重複なし、正しいフォーマット
- Screenshot showing clean data in spreadsheet
  スプレッドシートでクリーンなデータを示すスクリーンショット

**Format | 形式:**
- Documentation in main document
- メイン文書での文書化
- CSV file: `Week05_[YourName]_IntermediateScrape.csv`
- CSVファイル：`Week05_[あなたの名前]_IntermediateScrape.csv`

**Scoring (25 points) | 採点（25点）:**
- Pagination configured correctly: 8 points
  ページネーションが正しく設定された：8点
- 30+ entries from multiple pages: 10 points
  複数ページからの30以上のエントリ：10点
- Clean CSV with all required fields: 7 points
  すべての必要なフィールドを持つクリーンなCSV：7点

---

### Deliverable 4: Company Data Sample Scrape
### 成果物4：企業データサンプルスクレイプ

**Required Content | 必要な内容:**

Scrape **5-10 company entries** from one of your **approved websites** from Week 4's feasibility report.

第4週の実現可能性レポートからの**承認されたウェブサイト**の1つから**5-10の企業エントリ**をスクレイプします。

**⚠️ IMPORTANT:** Only scrape websites that you evaluated as ethical and legal in Week 4. This must be a site where:
**⚠️ 重要:** 第4週で倫理的かつ合法的と評価したウェブサイトのみをスクレイプしてください。これは次のようなサイトである必要があります：
- robots.txt allows scraping
- Terms of Service don't prohibit it
- Data is publicly accessible
- 公的にアクセス可能なデータ

**Required Data Fields:**
必要なデータフィールド：

Collect at least **4-5 data fields** per company:
企業ごとに少なくとも**4-5のデータフィールド**を収集：

- Company name (required)
  企業名（必須）
- Industry or sector (required)
  業界またはセクター（必須）
- Company size or employee count (if available)
  企業規模または従業員数（利用可能な場合）
- Location or headquarters (if available)
  場所または本社（利用可能な場合）
- Brief description or tags (if available)
  簡単な説明またはタグ（利用可能な場合）

**Required Documentation:**
必要な文書：

**A. Website Selection and Justification**
ウェブサイト選択と正当化

- Which website did you scrape?
  どのウェブサイトをスクレイプしましたか？
- Why is this scraping ethical and legal? (reference Week 4 analysis)
  なぜこのスクレイピングは倫理的かつ合法的ですか？（第4週の分析を参照）
- What specific page/section did you scrape?
  どの特定のページ/セクションをスクレイプしましたか？

**B. Scraping Process**
スクレイピングプロセス

- Workflow configuration screenshots
  ワークフロー設定のスクリーンショット
- Challenges encountered (if any)
  遭遇した課題（ある場合）
- How you resolved issues
  問題をどのように解決したか
- Screenshot of successful data extraction
  成功したデータ抽出のスクリーンショット

**C. Data Quality Check**
データ品質チェック

- Are all fields populated with data?
  すべてのフィールドにデータが入力されていますか？
- Is data consistent and accurate?
  データは一貫性があり正確ですか？
- Any missing values or errors?
  欠損値またはエラーはありますか？
- Screenshot showing data in spreadsheet
  スプレッドシートでデータを示すスクリーンショット

**D. CSV Export**
CSVエクスポート

- Submit CSV file with company data
  企業データを含むCSVファイルを提出
- Must include 5-10 companies with 4-5 fields each
  各社4-5のフィールドを持つ5-10社を含む必要があります

**Format | 形式:**
- Documentation in main document
- メイン文書での文書化
- CSV file: `Week05_[YourName]_CompanyData.csv`
- CSVファイル：`Week05_[あなたの名前]_CompanyData.csv`

**Scoring (25 points) | 採点（25点）:**
- Website selection justified ethically: 5 points
  ウェブサイト選択が倫理的に正当化された：5点
- 5-10 companies successfully scraped: 10 points
  5-10社が正常にスクレイプされた：10点
- 4-5 data fields per company: 5 points
  企業ごとに4-5のデータフィールド：5点
- Data quality and completeness: 5 points
  データ品質と完全性：5点

---

### Deliverable 5: Complete Documentation Package
### 成果物5：完全な文書化パッケージ

**Required Content | 必要な内容:**

Create a comprehensive documentation package summarizing your scraping experience.
スクレイピング体験を要約する包括的な文書化パッケージを作成します。

**A. Workflow Documentation (1-2 pages)**
ワークフロー文書（1-2ページ）

**For each scraping task (Practice, Intermediate, Company Data), document:**
各スクレイピングタスク（練習、中級、企業データ）について、文書化：

1. **Objective:** What were you trying to scrape?
   目的：何をスクレイプしようとしましたか？

2. **URL/Website:** Where did you scrape from?
   URL/ウェブサイト：どこからスクレイプしましたか？

3. **Data Fields:** What information did you collect?
   データフィールド：どのような情報を収集しましたか？

4. **Number of Entries:** How many records did you get?
   エントリ数：いくつのレコードを取得しましたか？

5. **Workflow Steps:** Briefly describe the scraping process
   ワークフローステップ：スクレイピングプロセスを簡単に説明

6. **Challenges:** What problems did you encounter?
   課題：どのような問題に遭遇しましたか？

7. **Solutions:** How did you solve them?
   解決策：どのように解決しましたか？

**B. Reflection and Learning (1 paragraph)**
考察と学習（1段落）

- What was easier than expected with no-code tools?
  ノーコードツールで予想よりも簡単だったことは何ですか？
- What was more challenging?
  より挑戦的だったことは何ですか？
- How will these skills help with the final project?
  これらのスキルは最終プロジェクトにどのように役立ちますか？
- What do you want to learn more about?
  何についてもっと学びたいですか？

**C. Screenshots Collection**
スクリーンショットコレクション

Organize all screenshots in clear sections:
すべてのスクリーンショットを明確なセクションに整理：
- Tool setup
- Practice scrape workflow
- Intermediate scrape workflow
- Company data scrape workflow
- Data quality checks

**Format | 形式:**
- Comprehensive document (PDF or Word)
- 包括的な文書（PDFまたはWord）
- Well-organized with clear sections and headings
- 明確なセクションと見出しで十分に整理された
- All screenshots properly labeled
- すべてのスクリーンショットが適切にラベル付けされた

**Scoring (10 points) | 採点（10点）:**
- Complete workflow documentation: 5 points
  完全なワークフロー文書：5点
- Thoughtful reflection: 3 points
  思慮深い考察：3点
- Well-organized with clear screenshots: 2 points
  明確なスクリーンショットで十分に整理された：2点

---

### Deliverable 6: AI Transparency Statement (if applicable)
### 成果物6：AI透明性声明（該当する場合）

**Required Content | 必要な内容:**

If your institution requires AI transparency documentation OR if you used external AI tools, include a statement (3-5 sentences) describing:

あなたの機関がAI透明性文書を要求する場合、または外部AIツールを使用した場合、以下を説明する声明（3-5文）を含めます：

- Which AI tools you used (ML-101 Bot, ChatGPT, etc.)
  どのAIツールを使用したか
- How you used them (troubleshooting errors, understanding tool features, selector help)
  どのように使用したか（エラーのトラブルシューティング、ツール機能の理解、セレクターのヘルプ）
- What you did independently (configuration, data validation, problem-solving)
  何を独立して行ったか（設定、データ検証、問題解決）
- How you verified AI suggestions worked correctly
  AI提案が正しく機能することをどのように検証したか

**Format | 形式:**
- Include at the end of your main document
  メイン文書の最後に含める
- Clearly labeled: "AI Transparency Statement"
  明確にラベル付け：「AI透明性声明」

**Scoring (5 points) | 採点（5点）:**
- Honest and clear documentation
  正直で明確な文書化

**Note:** This deliverable is **required only if** your institution has an AI transparency policy OR if you used external AI tools.
**注意:** この成果物は、あなたの機関がAI透明性ポリシーを持つ**場合、または**外部AIツールを使用した**場合のみ必要**です。

---

## Submission Instructions | 提出指示

### How to Submit | 提出方法

1. **Organize all files:**
   すべてのファイルを整理：
   - Main documentation (PDF or Word) with all deliverables 1, 2, 3, 4, 5, 6
   - 3 CSV files (practice, intermediate, company data)

2. **Name your files:**
   ファイル名を付ける：
   - Main document: `Week05_[YourName]_NoCodeScraping.pdf`
   - Practice CSV: `Week05_[YourName]_PracticeScrape.csv`
   - Intermediate CSV: `Week05_[YourName]_IntermediateScrape.csv`
   - Company CSV: `Week05_[YourName]_CompanyData.csv`
   - Example: `Week05_YuriTijerino_NoCodeScraping.pdf`
   - 例：`Week05_田中太郎_NoCodeScraping.pdf`

3. **Verify all files before submission:**
   提出前にすべてのファイルを確認：
   - Main document includes all screenshots and documentation
   - All 3 CSV files are readable and properly formatted
   - CSV files open correctly in spreadsheet software
   - Total file size is reasonable (compress images if needed)

4. **Upload through ML-101 Bot Portal:**
   ML-101ボットポータルを通じてアップロード：
   - Log in to bot portal
   - Navigate to "Week 5 Assignment Submission"
   - Upload all 4 files (1 document + 3 CSVs)
   - Click "Submit"

5. **Confirm submission:**
   提出を確認：
   - Receive automated confirmation
   - Verify all files were uploaded
   - 自動確認を受け取る
   - すべてのファイルがアップロードされたことを確認

### Submission Deadline | 提出期限

**Due:** End of Week 5 class session
**期限:** 第5週授業終了時

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
| **Tool Setup Documentation** | 15 | Installation, account creation, configuration screenshots |
| **Practice Scraping Results** | 20 | 20+ entries, workflow documentation, clean CSV |
| **Intermediate Scraping** | 25 | 30+ entries, pagination, multi-page data, CSV export |
| **Company Data Sample** | 25 | 5-10 companies, ethical justification, quality data |
| **Complete Documentation** | 10 | Workflow docs, reflection, organized screenshots |
| **AI Transparency** | 5 | Clear documentation (if required/applicable) |
| **TOTAL** | **100** | |

| 成果物 | 点数 | 基準 |
|--------|------|------|
| **ツールセットアップ文書** | 15 | インストール、アカウント作成、設定スクリーンショット |
| **練習スクレイピング結果** | 20 | 20以上のエントリ、ワークフロー文書、クリーンなCSV |
| **中級スクレイピング** | 25 | 30以上のエントリ、ページネーション、マルチページデータ、CSVエクスポート |
| **企業データサンプル** | 25 | 5-10社、倫理的正当化、品質データ |
| **完全な文書化** | 10 | ワークフロー文書、考察、整理されたスクリーンショット |
| **AI透明性** | 5 | 明確な文書化（必要な場合/該当する場合） |
| **合計** | **100** | |

---

## Tips for Success | 成功のためのヒント

### Tool Setup Tips | ツールセットアップのヒント

✅ **Choose the right tool for your needs**
   ニーズに合った適切なツールを選択
   - Browser extension: Quick setup, no download
   - ブラウザ拡張機能：クイックセットアップ、ダウンロード不要
   - Desktop app: More powerful, better for complex sites
   - デスクトップアプリ：より強力、複雑なサイトに適している

✅ **Complete the tutorial**
   チュートリアルを完了
   - Don't skip the tool's built-in tutorial
   - ツールの組み込みチュートリアルをスキップしない
   - It teaches essential features you'll need
   - 必要な重要な機能を教えます

✅ **Test on simple sites first**
   まずシンプルなサイトでテスト
   - Practice websites are designed to be easy
   - 練習ウェブサイトは簡単に設計されています
   - Build confidence before tackling real data
   - 実際のデータに取り組む前に自信を築く

### Scraping Workflow Tips | スクレイピングワークフローのヒント

✅ **Select multiple similar elements**
   複数の類似要素を選択
   - Click 2-3 items to establish a pattern
   - パターンを確立するために2-3のアイテムをクリック
   - Tool will learn what to scrape
   - ツールは何をスクレイプするかを学習します

✅ **Preview before running**
   実行前にプレビュー
   - Always check the data preview
   - 常にデータプレビューを確認
   - Make sure selectors captured correct data
   - セレクターが正しいデータをキャプチャしたことを確認

✅ **Start small, then scale up**
   小さく始めて、徐々に拡大
   - Test on 1-2 pages before scraping 50 pages
   - 50ページをスクレイピングする前に1-2ページでテスト
   - Fix issues early when dataset is small
   - データセットが小さいときに早期に問題を修正

### Data Quality Tips | データ品質のヒント

✅ **Validate data in spreadsheet**
   スプレッドシートでデータを検証
   - Open CSV file in Excel or Google Sheets
   - ExcelまたはGoogle SheetsでCSVファイルを開く
   - Check for missing values, duplicates, errors
   - 欠損値、重複、エラーをチェック

✅ **Clean data during export if possible**
   可能であればエクスポート中にデータをクリーニング
   - Some tools let you remove extra characters
   - 一部のツールでは余分な文字を削除できます
   - Configure data formatting options
   - データフォーマットオプションを設定

✅ **Document data quality issues**
   データ品質問題を文書化
   - Note any problems you encountered
   - 遭遇した問題に注意
   - Explain how you addressed them (or plan to)
   - どのように対処したか（または対処する予定か）を説明

### Troubleshooting Tips | トラブルシューティングのヒント

✅ **Read error messages carefully**
   エラーメッセージを注意深く読む
   - Tools usually tell you what's wrong
   - ツールは通常何が間違っているかを教えます
   - Common issues: incorrect selectors, timeout, blocked access
   - 一般的な問題：不正なセレクター、タイムアウト、ブロックされたアクセス

✅ **Use bot for troubleshooting**
   トラブルシューティングにボットを使用
   - ML-101 Bot can help diagnose issues
   - ML-101ボットは問題の診断を支援できます
   - Provide screenshots of errors
   - エラーのスクリーンショットを提供

✅ **Try different selector methods**
   異なるセレクター方法を試す
   - If click selection doesn't work, try manual selectors
   - クリック選択が機能しない場合は、手動セレクターを試す
   - CSS selectors and XPath are alternatives
   - CSSセレクターとXPathは代替案です

---

## Example Submission Excerpt | 提出例の抜粋

### Example: Practice Scraping Documentation
### 例：練習スクレイピング文書

**Objective:** Scrape book information from Books to Scrape practice website
**目的:** Books to Scrape練習ウェブサイトから書籍情報をスクレイプ

**Website URL:** http://books.toscrape.com/

**Data Fields Collected:**
- Book title
- Price
- Star rating
- Availability status

**Workflow Steps:**
1. Created new scraping task in Octoparse
2. Entered URL and loaded page
3. Used "Auto-detect" feature to identify list of books
4. Clicked on 2 book titles to establish pattern
5. Selected additional fields: price, rating, availability
6. Configured to scrape first 2 pages (20 books total)
7. Ran scraper and previewed data
8. Exported to CSV format

**Challenges Encountered:**
- Initial selector captured book images instead of titles
- **Solution:** Used the "Modify selector" feature to target `<h3>` tags specifically

**Results:**
- Successfully scraped 20 book entries
- All 4 data fields populated correctly
- Clean CSV export with no missing values

[Screenshot showing workflow configuration]
[Screenshot showing successful data extraction]

### Example: Reflection
### 例：考察

"Using no-code scraping tools was much easier than I expected. The point-and-click interface made it intuitive to select data elements without writing any code. The most challenging aspect was getting pagination to work correctly - I had to experiment with different settings before the tool successfully moved to the next page. These skills will be essential for Week 6 when we collect larger datasets of company information. I want to learn more about handling JavaScript-rendered content and advanced selector configuration for complex websites."

「ノーコードスクレイピングツールの使用は予想よりもはるかに簡単でした。ポイントアンドクリックインターフェースにより、コードを書かずにデータ要素を選択することが直感的になりました。最も挑戦的な側面はページネーションを正しく機能させることでした - ツールが次のページに正常に移動する前に、さまざまな設定を試す必要がありました。これらのスキルは、企業情報のより大きなデータセットを収集する第6週に不可欠です。JavaScriptでレンダリングされたコンテンツと複雑なウェブサイトのための高度なセレクター設定の処理についてもっと学びたいです。」

---

## Frequently Asked Questions | よくある質問

**Q: Which scraping tool should I use?**
**Q: どのスクレイピングツールを使用すべきですか？**

A: Any recommended tool is fine. Web Scraper (Chrome extension) is quickest to set up. Octoparse and ParseHub have more features but require installation. Choose based on your computer and comfort level.
A: 推奨されるツールであれば問題ありません。Web Scraper（Chrome拡張機能）はセットアップが最も速いです。OctoparseとParseHubはより多くの機能を持っていますが、インストールが必要です。コンピュータと快適さのレベルに基づいて選択してください。

**Q: What if the tool won't install on my computer?**
**Q: ツールがコンピュータにインストールされない場合は？**

A: Try the browser extension version (Web Scraper for Chrome). If that doesn't work, contact your instructor for alternatives or lab computer access.
A: ブラウザ拡張バージョン（Chrome用Web Scraper）を試してください。それが機能しない場合は、代替案またはラボコンピュータアクセスのためにインストラクターに連絡してください。

**Q: Can I scrape more than 10 companies?**
**Q: 10社以上をスクレイプできますか？**

A: Yes! The minimum is 5-10, but collecting more data is excellent preparation for Week 6. Just ensure quality over quantity.
A: はい！最低は5-10ですが、より多くのデータを収集することは第6週の優れた準備です。量より質を確保してください。

**Q: What if my CSV file has formatting issues?**
**Q: CSVファイルにフォーマットの問題がある場合は？**

A: Open it in a spreadsheet program and check for: proper column headers, no merged cells, consistent data types. You can clean minor issues in Excel/Sheets before submitting.
A: スプレッドシートプログラムで開き、次を確認：適切な列ヘッダー、結合されたセルなし、一貫性のあるデータ型。提出前にExcel/Sheetsで軽微な問題をクリーニングできます。

**Q: The website I planned to scrape isn't working. What should I do?**
**Q: スクレイプする予定だったウェブサイトが機能していません。どうすればよいですか？**

A: First, verify it's ethical to scrape (check your Week 4 analysis). If the site is blocking scrapers, try a different approved website from your feasibility report. Contact instructor if you need help selecting an alternative.
A: まず、スクレイピングが倫理的であることを確認（第4週の分析を確認）。サイトがスクレイパーをブロックしている場合は、実現可能性レポートからの別の承認されたウェブサイトを試してください。代替案の選択に助けが必要な場合はインストラクターに連絡してください。

**Q: Do I need to understand CSS selectors or XPath?**
**Q: CSSセレクターまたはXPathを理解する必要がありますか？**

A: Not necessarily! No-code tools are designed for point-and-click. However, understanding basic selectors can help with troubleshooting. The bot can explain them if needed.
A: 必ずしもそうではありません！ノーコードツールはポイントアンドクリック用に設計されています。ただし、基本的なセレクターを理解することは、トラブルシューティングに役立ちます。必要に応じてボットがそれらを説明できます。

**Q: How long should this assignment take?**
**Q: この課題にはどのくらい時間がかかりますか？**

A: Plan for 3-4 hours: 1 hour for tool setup and practice scrape, 1 hour for intermediate scrape, 1 hour for company data, 1 hour for documentation.
A: 3-4時間を計画：ツールセットアップと練習スクレイプに1時間、中級スクレイプに1時間、企業データに1時間、文書化に1時間。

**Q: Can I work with a classmate?**
**Q: クラスメートと一緒に作業できますか？**

A: You can help each other troubleshoot and discuss approaches, but each person must create their own workflows and collect their own data.
A: トラブルシューティングを助け合い、アプローチを議論することはできますが、各人は独自のワークフローを作成し、独自のデータを収集する必要があります。

---

## Getting Help | ヘルプを得る

**During Activity:**
- Ask the ML-101 Bot for tool-specific help
- Raise hand for instructor assistance with errors
- Share troubleshooting tips with classmates

**Outside of Class:**
- Use bot portal (24/7) for technical issues
- Email instructor with screenshots of problems
- Office hours for complex troubleshooting

**Tool-Specific Resources:**
- Octoparse: https://www.octoparse.com/tutorial
- ParseHub: https://help.parsehub.com/
- Web Scraper: https://webscraper.io/documentation

---

## Academic Integrity | 学術的誠実性

**Permitted:**
- Using ML-101 Bot for tool guidance
- Using AI to understand tool features or troubleshoot
- Helping classmates understand concepts
- Looking at tool documentation and tutorials

**Not Permitted:**
- Copying another student's CSV data files
- Sharing workflow configuration files
- Submitting data you didn't personally scrape
- Scraping websites not approved in Week 4

**⚠️ ETHICAL SCRAPING REMINDER ⚠️**
**倫理的スクレイピングの注意**

**For this assignment, you must ONLY scrape:**
**この課題では、以下のみをスクレイプする必要があります：**

1. **Practice websites** provided by instructor (Books to Scrape, etc.)
   インストラクターが提供する**練習ウェブサイト**（Books to Scrapeなど）

2. **Approved company websites** from your Week 4 feasibility report
   第4週実現可能性レポートからの**承認された企業ウェブサイト**

**DO NOT scrape:**
**スクレイプしないでください：**
- Websites that prohibit scraping in robots.txt or ToS
- robots.txtまたはToSでスクレイピングを禁止するウェブサイト
- Personal data or private information
- 個人データまたは非公開情報
- Sites you haven't ethically evaluated
- 倫理的に評価していないサイト

**Violation of ethical guidelines will result in assignment failure.**
**倫理的ガイドラインの違反は課題不合格になります。**

---

**Good luck with your no-code scraping!**
**ノーコードスクレイピングを頑張ってください！**

**Remember: This week you're building practical skills for Week 6's full project implementation. Take time to understand the tools!**
**覚えておいてください：今週は第6週の完全なプロジェクト実装のための実践的なスキルを構築しています。ツールを理解するために時間をかけてください！**

---

*Assignment created for ML-101: Machine Learning and Intelligence*
*ML-101用に作成された課題：機械学習と知能*
