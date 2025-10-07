# Week 4 Activity: Introduction to Web Scraping
# 第4週アクティビティ：Webスクレイピング入門

## Activity Information | アクティビティ情報

**Activity Title:** Exploring Web Page Structure and Ethical Scraping | Webページ構造の探索と倫理的スクレイピング
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Understand web scraping fundamentals, ethical considerations, and HTML basics | Webスクレイピングの基礎、倫理的考慮事項、HTMLの基礎を理解する
**Prerequisites:** Week 3 completion - Basic Python and Colab experience | 第3週完了 - 基本的なPythonとColab経験

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Understand basic HTML structure and how web pages display data | 基本的なHTML構造とWebページがどのようにデータを表示するかを理解する
- Identify which elements of a web page contain scrapable data | Webページのどの要素がスクレイプ可能なデータを含むかを特定する
- Apply ethical and legal considerations to web scraping decisions | Webスクレイピングの決定に倫理的および法的考慮事項を適用する
- Evaluate the feasibility and appropriateness of scraping specific websites | 特定のウェブサイトをスクレイピングする実現可能性と適切性を評価する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** What is web scraping? Ethical considerations, legal aspects
講義のコンセプト：Webスクレイピングとは？倫理的考慮事項、法的側面

**Activity Application:** Students apply lecture concepts by examining real web pages, identifying their structure, and making ethical decisions about what can and should be scraped for their company recommendation project.
アクティビティの適用：学生は実際のWebページを調査し、その構造を特定し、企業推薦プロジェクトのために何をスクレイプできるか、すべきかについて倫理的な決定を下すことで、講義のコンセプトを適用します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides students through web page inspection, teaches HTML basics, and facilitates ethical decision-making about scraping practices.
ボットの役割：ML-101ボットはWebページ検査を通じて学生をガイドし、HTMLの基礎を教え、スクレイピング実践に関する倫理的な意思決定を促進します。

**BMAD Workflow Steps:**
1. Bot introduces browser developer tools for page inspection | ボットがページ検査のためのブラウザ開発者ツールを紹介
2. Bot guides HTML structure exploration | ボットがHTML構造探索をガイド
3. Bot presents ethical framework for web scraping | ボットがWebスクレイピングのための倫理的フレームワークを提示
4. Bot facilitates website evaluation exercise | ボットがウェブサイト評価演習を促進
5. Bot helps create scraping feasibility analysis | ボットがスクレイピング実現可能性分析の作成を支援

**Bot Portal Interaction Points:**
- Interactive HTML tutorial | インタラクティブなHTMLチュートリアル
- Ethical guidelines discussion | 倫理的ガイドライン議論
- Website evaluation workshop | ウェブサイト評価ワークショップ
- Scraping decision framework | スクレイピング決定フレームワーク

**Data Captured:**
- Student's HTML comprehension level | 学生のHTML理解レベル
- Ethical reasoning in scraping decisions | スクレイピング決定における倫理的推論
- Identified target websites for project | プロジェクトのために特定されたターゲットウェブサイト
- Feasibility assessments | 実現可能性評価

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Introduction to Browser Developer Tools (10 minutes) | ブラウザ開発者ツール入門（10分）

**What Students Do:**
- Open a simple website (example provided by bot) | シンプルなウェブサイトを開く（ボットが提供する例）
- Access browser developer tools (F12 or right-click > Inspect) | ブラウザ開発者ツールにアクセス（F12または右クリック > 検査）
- Navigate the Elements/Inspector tab | Elements/Inspectorタブをナビゲート
- Use element selector tool to inspect different parts of the page | 要素セレクターツールを使用してページのさまざまな部分を検査
- Identify HTML tags: `<h1>`, `<p>`, `<div>`, `<a>` | HTMLタグを特定：`<h1>`、`<p>`、`<div>`、`<a>`

**Bot Guidance:**
- Provides step-by-step instructions for opening developer tools | 開発者ツールを開くためのステップバイステップ指示を提供
- Shows screenshots of what to look for | 何を探すべきかのスクリーンショットを表示
- Explains: "Developer tools let you see the HTML code behind any website" | 説明：「開発者ツールを使用すると、任意のウェブサイトの背後にあるHTMLコードを確認できます」
- Guides students to hover over elements and see corresponding HTML | 要素の上にカーソルを置いて対応するHTMLを確認するよう学生をガイド

**Expected Output:** Successfully opened developer tools and identified basic HTML elements on a web page
期待される出力：開発者ツールを正常に開き、Webページ上の基本的なHTML要素を特定

**Time Allocation:** 10 minutes | 10分

---

### Step 2: HTML Structure Exploration (12 minutes) | HTML構造探索（12分）

**What Students Do:**
- Examine the hierarchical structure of HTML (parent/child relationships) | HTMLの階層構造を調査（親子関係）
- Identify key HTML tags commonly used for content: | コンテンツに一般的に使用される主要なHTMLタグを特定：
  - `<h1>` to `<h6>` for headings | 見出し用の`<h1>`から`<h6>`
  - `<p>` for paragraphs | 段落用の`<p>`
  - `<div>` for divisions/sections | 区分/セクション用の`<div>`
  - `<span>` for inline content | インライン コンテンツ用の`<span>`
  - `<a>` for links | リンク用の`<a>`
  - `<table>`, `<tr>`, `<td>` for tables | テーブル用の`<table>`、`<tr>`、`<td>`
- Understand HTML attributes (class, id, href) | HTML属性を理解（class、id、href）
- Complete bot exercise: Identify specific elements on a company profile page | ボット演習を完了：企業プロフィールページの特定の要素を特定

**Bot Guidance:**
- Presents annotated HTML examples | 注釈付きHTML例を提示
- Explains: "HTML is like a tree structure - elements contain other elements" | 説明：「HTMLは木構造のようなものです - 要素は他の要素を含みます」
- Shows visual diagram of HTML hierarchy | HTML階層の視覚的な図を表示
- Provides company profile page example for practice | 練習用に企業プロフィールページの例を提供
- Asks: "Where on this page would you find the company name? Industry? Description?" | 質問：「このページのどこに企業名がありますか？業界は？説明は？」

**Expected Output:** Documented identification of at least 6 different HTML elements and their purposes on a company page
期待される出力：企業ページ上の少なくとも6つの異なるHTML要素とその目的の文書化された識別

**Time Allocation:** 12 minutes | 12分

---

### Step 3: Ethical and Legal Considerations (13 minutes) | 倫理的および法的考慮事項（13分）

**What Students Do:**
- Review ethical guidelines for web scraping provided by bot | ボットが提供するWebスクレイピングの倫理的ガイドラインを確認
- Learn about: | 学ぶ：
  - robots.txt files and what they mean | robots.txtファイルとそれが意味するもの
  - Terms of Service (ToS) restrictions | 利用規約（ToS）制限
  - Copyright and data ownership | 著作権とデータ所有権
  - Rate limiting and server respect | レート制限とサーバーの尊重
  - Personal data and privacy concerns | 個人データとプライバシーの懸念
- Access robots.txt files for 3 websites (e.g., website.com/robots.txt) | 3つのウェブサイトのrobots.txtファイルにアクセス（例：website.com/robots.txt）
- Interpret what the robots.txt file allows or disallows | robots.txtファイルが何を許可または禁止しているかを解釈

**Bot Guidance:**
- Provides comprehensive ethical framework document | 包括的な倫理的フレームワーク文書を提供
- Explains: "Just because you can scrape doesn't mean you should" | 説明：「スクレイプできるからといって、すべきという意味ではありません」
- Shows examples of robots.txt files | robots.txtファイルの例を示す
- Guides interpretation: "Disallow: / means don't scrape anything" | 解釈をガイド：「Disallow: /は何もスクレイプしないことを意味します」
- Discusses real-world cases of problematic scraping | 問題のあるスクレイピングの実世界のケースを議論

**Expected Output:** Notes on ethical guidelines and analysis of 3 robots.txt files with interpretations
期待される出力：倫理的ガイドラインに関するメモと解釈を伴う3つのrobots.txtファイルの分析

**Time Allocation:** 13 minutes | 13分

---

### Step 4: Website Evaluation for Company Data (15 minutes) | 企業データのためのウェブサイト評価（15分）

**What Students Do:**
- Select 3-5 potential websites for collecting company data (from Week 2 list) | 企業データ収集のための3-5の潜在的なウェブサイトを選択（第2週のリストから）
- For each website, evaluate: | 各ウェブサイトについて、評価：
  1. What company data is available? | どのような企業データが利用可能か？
  2. How is the data structured in HTML? | データはHTMLでどのように構造化されていますか？
  3. What does robots.txt say? | robots.txtは何と言っていますか？
  4. Are there Terms of Service restrictions? | 利用規約の制限はありますか？
  5. Is this data publicly accessible? | このデータは公的にアクセス可能ですか？
  6. Is scraping this site ethical and legal? | このサイトをスクレイピングすることは倫理的かつ合法的ですか？
- Create evaluation matrix for each site | 各サイトの評価マトリックスを作成

**Bot Guidance:**
- Provides website evaluation template | ウェブサイト評価テンプレートを提供
- Guides systematic evaluation of each criterion | 各基準の体系的な評価をガイド
- Asks critical questions: "Does this site have an API you should use instead?" | 批判的な質問：「このサイトには代わりに使用すべきAPIがありますか？」
- Helps students make informed decisions | 学生が情報に基づいた決定を下すのを助ける
- Suggests: "Look for job boards, company directories, or review sites" | 提案：「求人サイト、企業ディレクトリ、またはレビューサイトを探してください」

**Expected Output:** Completed evaluation matrix for 3-5 websites with recommendations for scraping feasibility
期待される出力：スクレイピング実現可能性の推奨事項を伴う3-5のウェブサイトの完成した評価マトリックス

**Time Allocation:** 15 minutes | 15分

---

### Step 5: Scraping Feasibility Report (10 minutes) | スクレイピング実現可能性レポート（10分）

**What Students Do:**
- Synthesize findings from website evaluations | ウェブサイト評価からの調査結果を統合
- Write feasibility report including: | 実現可能性レポートを書く：
  - Top 2-3 websites suitable for scraping | スクレイピングに適した上位2-3のウェブサイト
  - Justification based on ethical and technical criteria | 倫理的および技術的基準に基づく正当化
  - Data elements that can be collected from each site | 各サイトから収集できるデータ要素
  - Potential challenges or limitations | 潜在的な課題または制限
- Complete AI transparency log if external AI was used | 外部AIを使用した場合、AI透明性ログを完成

**Bot Guidance:**
- Provides report template and structure | レポートテンプレートと構造を提供
- Reviews key points to include | 含めるべき主要なポイントを確認
- Reminds of AI transparency requirements | AI透明性要件を思い出させる
- Validates that chosen sites are appropriate | 選択されたサイトが適切であることを検証

**Expected Output:** Complete web scraping feasibility report with ethical justification
期待される出力：倫理的正当化を伴う完全なWebスクレイピング実現可能性レポート

**Time Allocation:** 10 minutes | 10分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Web browser with developer tools (Chrome, Firefox, Safari) | 開発者ツール付きWebブラウザ（Chrome、Firefox、Safari）
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Text editor or word processor for notes | メモ用テキストエディタまたはワードプロセッサ
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Sample HTML page for practice (provided via bot) | 練習用サンプルHTMLページ（ボット経由で提供）
- HTML basics reference guide (bilingual) | HTML基礎リファレンスガイド（バイリンガル）
- Website evaluation template | ウェブサイト評価テンプレート
- Ethical scraping guidelines document | 倫理的スクレイピングガイドライン文書

**Reference Materials:**
- Common HTML tags cheat sheet | 一般的なHTMLタグチートシート
- robots.txt interpretation guide | robots.txt解釈ガイド
- Web scraping legal considerations (Japan-specific) | Webスクレイピング法的考慮事項（日本固有）
- Examples of ethical scraping policies | 倫理的スクレイピングポリシーの例
- AI transparency log template | AI透明性ログテンプレート

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain HTML concepts or tag meanings | AIにHTMLコンセプトやタグの意味を説明するよう依頼
- Getting help understanding robots.txt syntax | robots.txt構文の理解を支援
- Researching legal aspects of web scraping | Webスクレイピングの法的側面を調査
- Finding examples of company information websites | 企業情報ウェブサイトの例を見つける

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What does the HTML tag <div> do and when is it used?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete AI explanations and suggestions

3. **Document verification process** | 検証プロセスを文書化
   - Did you verify the AI's explanation by testing on a real webpage?
   - Did you cross-reference legal information with official sources?

4. **Check for hallucinations** | 幻覚をチェック
   - Did the AI suggest non-existent HTML tags or attributes?
   - Did the AI provide accurate information about robots.txt?
   - Did you verify legal advice with authoritative sources?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **HTML Structure Analysis (required) | HTML構造分析（必須）**
   - Screenshots of developer tools showing identified HTML elements | 識別されたHTML要素を示す開発者ツールのスクリーンショット
   - Documentation of at least 6 different HTML tags and their purposes | 少なくとも6つの異なるHTMLタグとその目的の文書化
   - Example company page with annotated elements | 注釈付き要素を含む企業ページの例
   - Format: Word/PDF with embedded screenshots | 形式：埋め込まれたスクリーンショットを含むWord/PDF

2. **Ethical Analysis Document (required) | 倫理的分析文書（必須）**
   - Summary of ethical guidelines for web scraping | Webスクレイピングの倫理的ガイドラインの要約
   - Analysis of 3 robots.txt files with interpretations | 解釈を伴う3つのrobots.txtファイルの分析
   - Ethical decision-making framework applied to project | プロジェクトに適用された倫理的意思決定フレームワーク
   - Format: Word document or PDF | 形式：Wordドキュメントまたは PDF

3. **Web Scraping Feasibility Report (required) | Webスクレイピング実現可能性レポート（必須）**
   - Evaluation of 3-5 potential websites | 3-5の潜在的なウェブサイトの評価
   - Completed evaluation matrix with all criteria | すべての基準を含む完成した評価マトリックス
   - Top 2-3 recommended sites with justification | 正当化された推奨上位2-3サイト
   - List of data elements to collect from each site | 各サイトから収集するデータ要素のリスト
   - Format: Use provided template | 形式：提供されたテンプレートを使用

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week04_YourName_WebScrapingEthics | ファイル命名：Week04_あなたの名前_WebScrapingEthics

**Deadline:** End of Week 4 | 第4週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **HTML Understanding (3 points) | HTML理解（3ポイント）**
  - Successfully used developer tools | 開発者ツールを正常に使用
  - Correctly identified at least 6 HTML elements | 少なくとも6つのHTML要素を正しく識別
  - Demonstrated understanding of HTML structure | HTML構造の理解を実証

- **Ethical Analysis (3 points) | 倫理的分析（3ポイント）**
  - Comprehensive understanding of ethical guidelines | 倫理的ガイドラインの包括的な理解
  - Correct interpretation of robots.txt files | robots.txtファイルの正しい解釈
  - Thoughtful consideration of legal and ethical issues | 法的および倫理的問題の思慮深い考慮

- **Feasibility Assessment (2 points) | 実現可能性評価（2ポイント）**
  - Thorough evaluation of 3-5 websites | 3-5のウェブサイトの徹底的な評価
  - Well-justified site selections | よく正当化されたサイト選択
  - Practical and ethical recommendations | 実践的かつ倫理的な推奨事項

- **AI Transparency (2 points) | AI透明性（2ポイント）**
  - Complete documentation if AI was used | AIを使用した場合の完全な文書化
  - Proper verification of AI-provided information | AI提供情報の適切な検証
  - OR: Clear statement that no external AI was used | または：外部AIを使用しなかったという明確な声明

**Quality Expectations:**
- Evidence of critical thinking about ethics | 倫理に関する批判的思考の証拠
- Practical application to project needs | プロジェクトニーズへの実践的な適用
- Clear documentation with screenshots | スクリーンショット付きの明確な文書
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Can't open developer tools | 開発者ツールを開けない**
- **Solution:** Try F12, Ctrl+Shift+I (Windows) or Cmd+Option+I (Mac), or right-click on page and select "Inspect" | F12、Ctrl+Shift+I（Windows）またはCmd+Option+I（Mac）を試すか、ページを右クリックして「検査」を選択
- **Bot Assistance:** Bot provides browser-specific instructions with screenshots | ボットはスクリーンショット付きのブラウザ固有の指示を提供

**Problem 2: HTML looks confusing and overwhelming | HTMLが混乱して圧倒的に見える**
- **Solution:** Start simple - focus on one section of the page at a time. Use the element selector tool to highlight specific parts. Don't try to understand everything at once. | シンプルに始める - 一度にページの1セクションに焦点を当てます。要素セレクターツールを使用して特定の部分を強調表示します。一度にすべてを理解しようとしないでください。
- **Bot Assistance:** Bot provides simplified examples and guides step-by-step exploration | ボットは簡略化された例を提供し、ステップバイステップの探索をガイド

**Problem 3: Don't understand what robots.txt means | robots.txtの意味が理解できない**
- **Solution:** Key lines to look for: "User-agent: *" (applies to all bots), "Disallow: /" (don't scrape anything), "Allow: /" (okay to scrape). If unclear, ask bot or instructor. | 探すべき主要な行：「User-agent: *」（すべてのボットに適用）、「Disallow: /」（何もスクレイプしない）、「Allow: /」（スクレイプしてもよい）。不明な場合は、ボットまたはインストラクターに尋ねます。
- **Bot Assistance:** Bot can interpret specific robots.txt files and explain what they mean | ボットは特定のrobots.txtファイルを解釈し、それが何を意味するかを説明できます

**Problem 4: Unsure if a website is ethical to scrape | ウェブサイトをスクレイピングするのが倫理的かどうか不明**
- **Solution:** Check all criteria: robots.txt allows it, ToS doesn't prohibit it, data is publicly visible, not personal data, you'll respect rate limits. When in doubt, don't scrape or ask instructor. | すべての基準を確認：robots.txtが許可している、ToSが禁止していない、データは公的に可視、個人データではない、レート制限を尊重する。疑問がある場合は、スクレイプしないか、インストラクターに尋ねます。
- **Bot Assistance:** Bot provides ethical decision framework and can discuss specific cases | ボットは倫理的決定フレームワークを提供し、特定のケースを議論できます

**Problem 5: Can't find suitable websites for company data | 企業データに適したウェブサイトが見つからない**
- **Solution:** Look for: job posting sites (Indeed, LinkedIn), company review sites (Glassdoor), business directories, company official websites, news articles about companies | 探す：求人掲載サイト（Indeed、LinkedIn）、企業レビューサイト（Glassdoor）、ビジネスディレクトリ、企業公式ウェブサイト、企業に関するニュース記事
- **Bot Assistance:** Bot can suggest categories of websites and specific examples appropriate for the project | ボットはウェブサイトのカテゴリーとプロジェクトに適した具体的な例を提案できます

**When to Ask for Help:**
- Confused about ethical boundaries | 倫理的境界について混乱している
- Legal concerns about specific websites | 特定のウェブサイトに関する法的懸念
- Can't find any suitable websites to evaluate | 評価するのに適したウェブサイトが見つからない
- Need clarification on HTML concepts | HTMLコンセプトについて説明が必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for technical HTML questions | 技術的なHTML質問にはボットを使用
- Ask instructor for ethical/legal guidance | 倫理的/法的ガイダンスについてはインストラクターに尋ねる

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
