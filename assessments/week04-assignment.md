# Week 4 Assignment: Introduction to Web Scraping
# 第4週課題：Webスクレイピング入門

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Week:** 4 | 第4週
**Due Date:** End of Week 4 class session | 第4週授業終了時
**Weight:** Part of 40% Weekly Activities grade | 週次アクティビティ評価40%の一部
**Submission:** Through ML-101 Bot Portal | ML-101ボットポータル経由

---

## Assignment Overview | 課題概要

This assignment develops your understanding of web scraping fundamentals, HTML structure, and ethical/legal considerations. You'll examine web page structures, evaluate data sources, and create a scraping feasibility plan for the course project. **This is a planning and analysis assignment - you will not write scraping code this week.**

この課題は、Webスクレイピングの基礎、HTML構造、倫理的/法的考慮事項の理解を発展させます。Webページ構造を調査し、データソースを評価し、コースプロジェクトのスクレイピング実現可能性計画を作成します。**これは計画と分析の課題です - 今週はスクレイピングコードを書きません。**

---

## Learning Objectives | 学習目標

By completing this assignment, you will be able to:
この課題を完了することで、以下ができるようになります：

- ✅ Understand HTML structure and identify data-containing elements
  HTML構造を理解しデータを含む要素を特定する

- ✅ Use browser developer tools to inspect web pages
  ブラウザ開発者ツールを使用してWebページを検査する

- ✅ Apply ethical and legal frameworks to web scraping decisions
  Webスクレイピングの決定に倫理的および法的フレームワークを適用する

- ✅ Interpret robots.txt files and Terms of Service
  robots.txtファイルと利用規約を解釈する

- ✅ Evaluate websites for scraping feasibility and appropriateness
  スクレイピングの実現可能性と適切性についてウェブサイトを評価する

---

## Prerequisites | 前提条件

- ✅ Attended Week 4 lecture (or reviewed lecture slides)
  第4週講義に出席（または講義スライドをレビュー）

- ✅ Completed Week 3 assignment
  第3週課題を完了

- ✅ Completed Week 2 data source identification
  第2週データソース識別を完了

- ✅ Web browser with developer tools (Chrome, Firefox, Safari)
  開発者ツール付きWebブラウザ（Chrome、Firefox、Safari）

---

## Assignment Deliverables | 課題成果物

### Deliverable 1: HTML Element Identification Document
### 成果物1：HTML要素識別文書

**Required Content | 必要な内容:**

Using browser developer tools, identify and document **at least 5 different HTML elements** from a company profile webpage.

ブラウザ開発者ツールを使用して、企業プロフィールWebページから**少なくとも5つの異なるHTML要素**を特定し文書化します。

For each HTML element identified:
特定された各HTML要素について：

**A. Element Type | 要素タイプ**
- Name the HTML tag (e.g., `<h1>`, `<p>`, `<div>`, `<span>`, `<a>`, `<table>`)
- HTMLタグに名前を付ける（例：`<h1>`、`<p>`、`<div>`、`<span>`、`<a>`、`<table>`）

**B. Purpose/Function | 目的/機能**
- What is this element used for on the page?
- このページでこの要素は何に使用されますか？
- Example: "Heading tag used for company name"
- 例：「企業名に使用される見出しタグ」

**C. Data Contained | 含まれるデータ**
- What information does this element hold?
- この要素はどのような情報を保持しますか？
- Example: "Contains company name: Toyota Motor Corporation"
- 例：「企業名を含む：トヨタ自動車株式会社」

**D. HTML Code Sample | HTMLコードサンプル**
- Copy the actual HTML code from developer tools
- 開発者ツールから実際のHTMLコードをコピー
- Example: `<h1 class="company-name">Toyota Motor Corporation</h1>`
- 例：`<h1 class="company-name">トヨタ自動車株式会社</h1>`

**E. Screenshot | スクリーンショット**
- Include screenshot showing element highlighted in developer tools
- 開発者ツールで強調表示された要素を示すスクリーンショットを含める

**Minimum Expected Elements | 最低期待される要素:**
You should identify at least these 5 types:
少なくともこれらの5つのタイプを特定する必要があります：
1. Heading tags (company name) | 見出しタグ（企業名）
2. Paragraph or div with company description | 企業説明を含む段落またはdiv
3. List items (products, services, or information) | リスト項目（製品、サービス、または情報）
4. Links to other pages | 他のページへのリンク
5. Data in table format (if available) | テーブル形式のデータ（利用可能な場合）

**Format | 形式:**
- Document format: PDF or Word
- 文書形式：PDFまたはWord
- Organized table or structured list
- 整理されたテーブルまたは構造化リスト
- Include all screenshots
- すべてのスクリーンショットを含める

**Scoring (20 points) | 採点（20点）:**
- 5+ HTML elements correctly identified: 10 points (2 each)
  5つ以上のHTML要素を正しく識別：10点（各2点）
- Clear explanations of purpose and data: 5 points
  目的とデータの明確な説明：5点
- HTML code samples included: 3 points
  HTMLコードサンプルを含める：3点
- Screenshots showing elements: 2 points
  要素を示すスクリーンショット：2点

---

### Deliverable 2: Ethical and Legal Analysis
### 成果物2：倫理的および法的分析

**Required Content | 必要な内容:**

**Part A: Ethical Guidelines Summary (1-2 paragraphs)**
倫理的ガイドライン要約（1-2段落）

Summarize the ethical guidelines for web scraping covered in class. Include:
授業で取り上げたWebスクレイピングの倫理的ガイドラインを要約します。含める：

- Why ethical scraping matters
  なぜ倫理的スクレイピングが重要か
- Key principles to follow (respect robots.txt, rate limiting, avoiding personal data)
  従うべき主要原則（robots.txtを尊重、レート制限、個人データを避ける）
- Consequences of unethical scraping
  非倫理的スクレイピングの結果

**Part B: Robots.txt Analysis**
robots.txt分析

Analyze **3 different robots.txt files** from potential data source websites.

潜在的なデータソースウェブサイトからの**3つの異なるrobots.txtファイル**を分析します。

For each robots.txt file:
各robots.txtファイルについて：

1. **Website Name and URL**
   - Example: "MyNavi Japan - https://www.mynavi.jp/robots.txt"
   - 例：「マイナビジャパン - https://www.mynavi.jp/robots.txt」

2. **Key Directives Found**
   - List main User-agent, Disallow, and Allow directives
   - 主要なUser-agent、Disallow、Allow指令をリスト

3. **Interpretation**
   - What does this robots.txt allow or disallow?
   - このrobots.txtは何を許可または禁止しますか？
   - Example: "Disallow: / means no scraping allowed"
   - 例：「Disallow: /はスクレイピングが許可されていないことを意味します」
   - Example: "Allow: /jobs means job pages can be accessed"
   - 例：「Allow: /jobsは求人ページにアクセスできることを意味します」

4. **Scraping Decision**
   - Based on robots.txt, is it ethical to scrape this site?
   - robots.txtに基づいて、このサイトをスクレイピングすることは倫理的ですか？
   - What specific pages/sections are allowed or restricted?
   - どの特定のページ/セクションが許可または制限されていますか？

**Part C: Terms of Service Review**
利用規約レビュー

For at least **2 websites**, review their Terms of Service (ToS) for scraping-related restrictions:

少なくとも**2つのウェブサイト**について、スクレイピング関連の制限について利用規約（ToS）を確認：

- Does the ToS explicitly prohibit web scraping?
  ToSはWebスクレイピングを明示的に禁止していますか？
- Are there API alternatives mentioned?
  API代替案が言及されていますか？
- What are the consequences of ToS violations?
  ToS違反の結果は何ですか？

**Format | 形式:**
- Organized document with clear sections
- 明確なセクションを持つ整理された文書
- Include screenshots of robots.txt files
- robots.txtファイルのスクリーンショットを含める
- Cite ToS sections if referencing specific language
- 特定の言語を参照する場合はToSセクションを引用

**Scoring (25 points) | 採点（25点）:**
- Ethical guidelines summary: 5 points
  倫理的ガイドライン要約：5点
- Three robots.txt files analyzed: 12 points (4 each)
  3つのrobots.txtファイルを分析：12点（各4点）
- Correct interpretations: 5 points
  正しい解釈：5点
- ToS review for 2 websites: 3 points
  2つのウェブサイトのToSレビュー：3点

---

### Deliverable 3: Website Evaluation Matrix
### 成果物3：ウェブサイト評価マトリックス

**Required Content | 必要な内容:**

Create a comprehensive evaluation matrix for **3-5 potential websites** where you could collect company data.

企業データを収集できる**3-5の潜在的なウェブサイト**の包括的な評価マトリックスを作成します。

**Evaluation Criteria | 評価基準:**

For each website, evaluate and rate (1-5 scale, where 1 = Poor, 5 = Excellent):
各ウェブサイトについて、評価して評価（1-5スケール、1 = 不良、5 = 優秀）：

1. **Legal Compliance (1-5) | 法的遵守（1-5）**
   - Does robots.txt allow scraping?
   - robots.txtはスクレイピングを許可しますか？
   - Are there ToS restrictions?
   - ToS制限がありますか？
   - Is the data publicly accessible?
   - データは公的にアクセス可能ですか？

2. **Ethical Appropriateness (1-5) | 倫理的適切性（1-5）**
   - Does scraping align with ethical guidelines?
   - スクレイピングは倫理的ガイドラインと一致しますか？
   - Is this educational use appropriate?
   - この教育的使用は適切ですか？
   - Would scraping harm the website or users?
   - スクレイピングはウェブサイトやユーザーに害を与えますか？

3. **Technical Feasibility (1-5) | 技術的実現可能性（1-5）**
   - Is the HTML structure accessible?
   - HTML構造はアクセス可能ですか？
   - Is data consistently formatted?
   - データは一貫してフォーマットされていますか？
   - Are there technical barriers (JavaScript rendering, login walls)?
   - 技術的な障壁がありますか（JavaScriptレンダリング、ログイン壁）？

4. **Data Quality (1-5) | データ品質（1-5）**
   - Is the data accurate and complete?
   - データは正確で完全ですか？
   - Is it up-to-date?
   - 最新ですか？
   - Does it include relevant company information?
   - 関連する企業情報を含みますか？

5. **Data Richness (1-5) | データの豊富さ（1-5）**
   - How much useful information is available?
   - どれだけ有用な情報が利用可能ですか？
   - Does it include company details needed for the project?
   - プロジェクトに必要な企業詳細を含みますか？

**Then, for each website:**
次に、各ウェブサイトについて：

- **Total Score** (sum of all ratings, out of 25)
  合計スコア（すべての評価の合計、25点満点）

- **Recommendation** (2-3 sentences)
  推奨（2-3文）
  - Would you recommend using this source? Why or why not?
  - このソースの使用を推奨しますか？理由は？
  - What are the main advantages or concerns?
  - 主な利点または懸念事項は何ですか？

**Example Matrix Format:**
```
| Website | Legal | Ethical | Technical | Quality | Richness | Total | Recommendation |
|---------|-------|---------|-----------|---------|----------|-------|----------------|
| MyNavi  | 5     | 5       | 4         | 4       | 5        | 23/25 | Highly recommended for job listings... |
| Site 2  | 3     | 4       | 3         | 4       | 3        | 17/25 | Moderate option with some restrictions... |
```

**Format | 形式:**
- Table/matrix format (Excel, Google Sheets, or formatted document)
- テーブル/マトリックス形式（Excel、Google Sheets、またはフォーマットされた文書）
- Clear rating scale (1-5)
- 明確な評価スケール（1-5）
- Total scores calculated
- 合計スコアを計算
- Brief recommendation for each source
- 各ソースの簡単な推奨

**Scoring (25 points) | 採点（25点）:**
- 3-5 websites evaluated: 10 points (minimum 3)
  3-5のウェブサイトを評価：10点（最低3つ）
- All 5 criteria rated for each site: 8 points
  各サイトのすべての5つの基準を評価：8点
- Total scores calculated correctly: 2 points
  合計スコアを正しく計算：2点
- Clear recommendations provided: 5 points
  明確な推奨を提供：5点

---

### Deliverable 4: Web Scraping Feasibility Report
### 成果物4：Webスクレイピング実現可能性レポート

**Required Content | 必要な内容:**

Write a comprehensive feasibility report (1-2 pages) that synthesizes your analysis.
分析を統合する包括的な実現可能性レポート（1-2ページ）を書きます。

**Report Structure:**

**Section 1: Recommended Websites (1-2 paragraphs)**
推奨ウェブサイト（1-2段落）

- Identify the **top 2-3 websites** from your evaluation matrix
  評価マトリックスから**上位2-3のウェブサイト**を特定
- Explain why these sites are recommended
  これらのサイトが推奨される理由を説明
- What makes them suitable for the project?
  プロジェクトに適している理由は？

**Section 2: Data Elements to Collect (bulleted list)**
収集するデータ要素（箇条書きリスト）

For each recommended website, list specific data fields you plan to scrape:
各推奨ウェブサイトについて、スクレイプする予定の特定のデータフィールドをリスト：

- Company name
- Industry/sector
- Company size (employee count)
- Location
- Job listings (if applicable)
- Company description
- Any other relevant information

**Section 3: Ethical and Legal Justification (1 paragraph)**
倫理的および法的正当化（1段落）

- Explain why scraping these sites is ethical and legal
  これらのサイトをスクレイピングすることが倫理的かつ合法的である理由を説明
- Reference robots.txt findings and ToS analysis
  robots.txt調査結果とToS分析を参照
- Address how you'll respect rate limits and website resources
  レート制限とウェブサイトリソースをどのように尊重するかを述べる

**Section 4: Potential Challenges (1 paragraph)**
潜在的な課題（1段落）

- Identify 2-3 challenges you might face
  直面する可能性のある2-3の課題を特定
- Examples: JavaScript rendering, data inconsistency, pagination
- 例：JavaScriptレンダリング、データの不整合、ページネーション
- How will you address these challenges?
- これらの課題にどのように対処しますか？

**Section 5: Alternative Data Sources (optional)**
代替データソース（オプション）

- Are there websites with APIs instead of scraping?
  スクレイピングの代わりにAPIを持つウェブサイトはありますか？
- What are backup options if primary sources don't work?
  主要ソースが機能しない場合のバックアップオプションは何ですか？

**Format | 形式:**
- 1-2 pages
- Professional formatting with clear sections
- 明確なセクションを持つプロフェッショナルなフォーマット
- Include in main submission document
- メイン提出文書に含める

**Scoring (20 points) | 採点（20点）:**
- Recommended websites with justification: 6 points
  正当化された推奨ウェブサイト：6点
- Data elements clearly identified: 4 points
  データ要素を明確に識別：4点
- Ethical and legal justification: 6 points
  倫理的および法的正当化：6点
- Challenges and solutions: 4 points
  課題と解決策：4点

---

### Deliverable 5: AI Transparency Statement (if applicable)
### 成果物5：AI透明性声明（該当する場合）

**Required Content | 必要な内容:**

If your institution requires AI transparency documentation OR if you used external AI tools, include a statement (3-5 sentences) describing:

あなたの機関がAI透明性文書を要求する場合、または外部AIツールを使用した場合、以下を説明する声明（3-5文）を含めます：

- Which AI tools you used (ML-101 Bot, ChatGPT, etc.)
  どのAIツールを使用したか
- How you used them (HTML explanations, robots.txt interpretation, website research)
  どのように使用したか（HTML説明、robots.txt解釈、ウェブサイト研究）
- What analysis and decisions you made independently
  どの分析と決定を独立して行ったか
- How you verified AI-provided information
  AI提供情報をどのように検証したか

**Format | 形式:**
- Include at the end of your main document
  メイン文書の最後に含める
- Clearly labeled: "AI Transparency Statement"
  明確にラベル付け：「AI透明性声明」

**Scoring (10 points) | 採点（10点）:**
- Honest and clear documentation
  正直で明確な文書化
- Appropriate AI usage for research and understanding
  研究と理解のための適切なAI使用
- Evidence of independent critical thinking
  独立した批判的思考の証拠

**Note:** This deliverable is **required only if** your institution has an AI transparency policy OR if you used external AI tools.
**注意:** この成果物は、あなたの機関がAI透明性ポリシーを持つ**場合、または**外部AIツールを使用した**場合のみ必要**です。

---

## Submission Instructions | 提出指示

### How to Submit | 提出方法

1. **Combine all deliverables** into a single comprehensive document:
   すべての成果物を単一の包括的な文書に結合：
   - HTML Element Identification (Deliverable 1)
   - Ethical and Legal Analysis (Deliverable 2)
   - Website Evaluation Matrix (Deliverable 3) - may be separate Excel/Sheets file
   - Feasibility Report (Deliverable 4)
   - AI Transparency (Deliverable 5, if applicable)

2. **Include all screenshots and supporting materials**
   すべてのスクリーンショットとサポート資料を含める

3. **Name your files:**
   ファイル名を付ける：
   - Main document: `Week04_[YourName]_WebScrapingEthics.pdf` (or .docx)
   - Matrix (if separate): `Week04_[YourName]_EvaluationMatrix.xlsx`
   - Example: `Week04_YuriTijerino_WebScrapingEthics.pdf`
   - 例：`Week04_田中太郎_WebScrapingEthics.pdf`

4. **Upload through ML-101 Bot Portal:**
   ML-101ボットポータルを通じてアップロード：
   - Log in to bot portal
   - Navigate to "Week 4 Assignment Submission"
   - Upload all files
   - Click "Submit"

5. **Confirm submission:**
   提出を確認：
   - Receive automated confirmation
   - Check email for submission receipt
   - 自動確認を受け取る
   - 提出受領のメールを確認

### Submission Deadline | 提出期限

**Due:** End of Week 4 class session
**期限:** 第4週授業終了時

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
| **HTML Element Identification** | 20 | 5+ elements identified with code samples and screenshots |
| **Ethical and Legal Analysis** | 25 | Guidelines summary, 3 robots.txt analyses, ToS review |
| **Website Evaluation Matrix** | 25 | 3-5 sites rated on 5 criteria with recommendations |
| **Feasibility Report** | 20 | Comprehensive report with recommendations and justification |
| **AI Transparency** | 10 | Clear documentation (if required/applicable) |
| **TOTAL** | **100** | |

| 成果物 | 点数 | 基準 |
|--------|------|------|
| **HTML要素識別** | 20 | コードサンプルとスクリーンショット付きの5つ以上の要素を識別 |
| **倫理的および法的分析** | 25 | ガイドライン要約、3つのrobots.txt分析、ToSレビュー |
| **ウェブサイト評価マトリックス** | 25 | 推奨事項を伴う5つの基準で3-5のサイトを評価 |
| **実現可能性レポート** | 20 | 推奨事項と正当化を伴う包括的なレポート |
| **AI透明性** | 10 | 明確な文書化（必要な場合/該当する場合） |
| **合計** | **100** | |

---

## Tips for Success | 成功のためのヒント

### HTML Inspection Tips | HTML検査のヒント

✅ **Start with simple pages**
   シンプルなページから始める
   - Company "About" pages are often cleanly structured
   - 企業の「About」ページはしばしば綺麗に構造化されています
   - Job listing pages have repetitive, scrapable patterns
   - 求人リストページには反復的でスクレイプ可能なパターンがあります

✅ **Use the element selector tool**
   要素セレクターツールを使用する
   - Click the selector icon in developer tools
   - 開発者ツールのセレクターアイコンをクリック
   - Hover over page elements to see corresponding HTML
   - ページ要素の上にカーソルを置いて対応するHTMLを確認

✅ **Look for patterns**
   パターンを探す
   - Similar elements often have the same class or structure
   - 類似した要素は同じクラスまたは構造を持つことが多い
   - This makes them easier to scrape
   - これによりスクレイピングが簡単になります

### Ethical Analysis Tips | 倫理的分析のヒント

✅ **When in doubt, don't scrape**
   疑問がある場合はスクレイプしない
   - If robots.txt says "Disallow: /", respect it
   - robots.txtが「Disallow: /」と言っている場合は尊重する
   - If ToS prohibits scraping, find alternatives
   - ToSがスクレイピングを禁止している場合は代替案を見つける

✅ **Educational use is not a free pass**
   教育的使用は免罪符ではない
   - Even for class projects, respect website policies
   - クラスプロジェクトであっても、ウェブサイトポリシーを尊重
   - Focus on publicly accessible data
   - 公的にアクセス可能なデータに焦点を当てる

✅ **Consider API alternatives**
   API代替案を検討
   - Many websites offer APIs for data access
   - 多くのウェブサイトはデータアクセスのためのAPIを提供
   - APIs are legal, structured, and often easier
   - APIは合法的、構造化されており、しばしばより簡単

### Website Evaluation Tips | ウェブサイト評価のヒント

✅ **Be realistic about feasibility**
   実現可能性について現実的であること
   - Can you actually access this data with your current skills?
   - 現在のスキルでこのデータに実際にアクセスできますか？
   - JavaScript-heavy sites are harder to scrape
   - JavaScript重視のサイトはスクレイピングが難しい

✅ **Prioritize data quality over quantity**
   量より質を優先
   - Better to scrape fewer high-quality sources
   - より少ない高品質のソースをスクレイピングする方が良い
   - Clean, consistent data is more valuable
   - 清潔で一貫性のあるデータはより価値がある

✅ **Think about project needs**
   プロジェクトニーズについて考える
   - What data does the company recommendation system actually need?
   - 企業推薦システムは実際にどのようなデータを必要としますか？
   - Focus on sites with company culture and job information
   - 企業文化と求人情報を持つサイトに焦点を当てる

---

## Example Submission Excerpt | 提出例の抜粋

### Example: HTML Element Identification
### 例：HTML要素識別

**Element 1: Company Name Heading**
**要素1：企業名見出し**

- **Element Type:** `<h1>` heading tag
- **Purpose/Function:** Main heading displaying the company name at the top of the profile page
- **Data Contained:** Company name - "Toyota Motor Corporation"
- **HTML Code Sample:**
  ```html
  <h1 class="company-name" id="main-title">Toyota Motor Corporation</h1>
  ```
- **Screenshot:** [Screenshot showing highlighted h1 element in developer tools]

**Element 2: Company Description**
**要素2：企業説明**

- **Element Type:** `<div>` container with `<p>` paragraph
- **Purpose/Function:** Contains detailed company description text
- **Data Contained:** Multi-paragraph description of company history, mission, and services
- **HTML Code Sample:**
  ```html
  <div class="company-description">
    <p>Toyota Motor Corporation is a Japanese multinational automotive manufacturer...</p>
  </div>
  ```
- **Screenshot:** [Screenshot showing div and paragraph elements]

### Example: robots.txt Analysis
### 例：robots.txt分析

**Website:** MyNavi Japan
**URL:** https://www.mynavi.jp/robots.txt

**Key Directives Found:**
```
User-agent: *
Disallow: /admin/
Disallow: /private/
Allow: /jobs/
Allow: /company/
```

**Interpretation:** This robots.txt file allows most user agents (web crawlers) to access the site. The "/jobs/" and "/company/" paths are explicitly allowed, which means we can ethically scrape job listings and company information pages. However, admin and private sections are off-limits. This is a positive signal for our project needs.

**Scraping Decision:** ✅ Ethical to scrape job and company pages. This site is appropriate for the course project, focusing on the allowed /jobs/ and /company/ sections.

---

## Frequently Asked Questions | よくある質問

**Q: Do we actually scrape websites this week?**
**Q: 今週実際にウェブサイトをスクレイプしますか？**

A: No! This week is planning and analysis only. You'll learn scraping tools in Week 5 and implement scraping in Week 6.
A: いいえ！今週は計画と分析のみです。第5週でスクレイピングツールを学び、第6週でスクレイピングを実装します。

**Q: What if a website doesn't have robots.txt?**
**Q: ウェブサイトにrobots.txtがない場合は？**

A: No robots.txt means there are no explicit restrictions, but you should still check Terms of Service and follow ethical guidelines. Absence of robots.txt doesn't mean "scrape everything."
A: robots.txtがないということは明示的な制限がないことを意味しますが、それでも利用規約を確認し倫理的ガイドラインに従う必要があります。robots.txtがないことは「すべてをスクレイプ」を意味しません。

**Q: Can I evaluate websites in Japanese?**
**Q: 日本語のウェブサイトを評価できますか？**

A: Absolutely! Japanese job sites (MyNavi, Rikunabi) and company sites are highly relevant for this project.
A: もちろん！日本の求人サイト（MyNavi、Rikunabi）と企業サイトはこのプロジェクトに非常に関連しています。

**Q: What if all my top choices prohibit scraping?**
**Q: すべての上位選択がスクレイピングを禁止している場合は？**

A: Look for alternative sources, check if they have APIs, or consult with your instructor. There are many company data sources available.
A: 代替ソースを探し、APIがあるかどうかを確認するか、インストラクターに相談してください。多くの企業データソースが利用可能です。

**Q: How do I find Terms of Service?**
**Q: 利用規約をどのように見つけますか？**

A: Usually linked in the website footer as "Terms," "ToS," "Terms of Use," or "Terms of Service." Search the page for these terms.
A: 通常、ウェブサイトフッターで「規約」、「ToS」、「利用規約」、または「サービス利用規約」としてリンクされています。これらの用語のためにページを検索してください。

**Q: Is it ethical to scrape for commercial purposes?**
**Q: 商業目的でスクレイピングすることは倫理的ですか？**

A: That depends on many factors. For this class project, we're focused on educational use only. Commercial scraping has different ethical and legal considerations.
A: それは多くの要因に依存します。このクラスプロジェクトでは、教育的使用のみに焦点を当てています。商業的スクレイピングには異なる倫理的および法的考慮事項があります。

**Q: What should I do if I'm unsure about a website?**
**Q: ウェブサイトについて不確かな場合はどうすればよいですか？**

A: Ask your instructor! It's better to ask before planning to scrape than to proceed with an inappropriate source.
A: インストラクターに尋ねてください！不適切なソースで進む前にスクレイピングを計画する前に尋ねる方が良いです。

---

## Getting Help | ヘルプを得る

**During Activity:**
- Ask the ML-101 Bot for HTML and ethical guidance
- Raise hand for instructor help with interpretation
- Discuss website evaluations with classmates

**Outside of Class:**
- Use bot portal (24/7 access)
- Email instructor for ethical/legal questions
- Office hours for complex cases

**IMPORTANT RESOURCES:**
- Course ethical guidelines document (provided)
- robots.txt interpretation guide
- HTML tag reference sheet

---

## Academic Integrity | 学術的誠実性

**Permitted:**
- Using ML-101 Bot for HTML explanations
- Using AI to understand robots.txt syntax
- Discussing ethical considerations with classmates
- Researching legal aspects of web scraping

**Not Permitted:**
- Copying another student's analysis
- Having AI write your entire report
- Submitting evaluations without actually checking websites
- Claiming to understand ethical guidelines without reading them

**⚠️ CRITICAL WARNING ⚠️**
**重要な警告**

**This assignment evaluates your understanding of ethical and legal boundaries. Demonstrating poor judgment or disregard for ethical guidelines may result in:**

**この課題は倫理的および法的境界の理解を評価します。倫理的ガイドラインに対する判断の誤りまたは無視を示すことは、次の結果をもたらす可能性があります：**

- Assignment failure
- 課題不合格
- Review of continued enrollment in the course
- コースへの継続登録の見直し
- Potential academic integrity violation
- 潜在的な学術的誠実性違反

**When in doubt about whether scraping is appropriate, ASK YOUR INSTRUCTOR.**
**スクレイピングが適切かどうか疑問がある場合は、インストラクターに尋ねてください。**

---

**Good luck with your ethical analysis!**
**倫理的分析を頑張ってください！**

**Remember: Just because you CAN scrape doesn't mean you SHOULD. Always prioritize ethical and legal considerations.**
**覚えておいてください：スクレイプできるからといって、すべきとは限りません。常に倫理的および法的考慮事項を優先してください。**

---

*Assignment created for ML-101: Machine Learning and Intelligence*
*ML-101用に作成された課題：機械学習と知能*
