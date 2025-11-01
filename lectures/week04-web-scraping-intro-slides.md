# Week 4: Introduction to Web Scraping
# 第4週：Webスクレイピング入門

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Week 4 - Web Scraping Fundamentals
## スライド1：第4週 - Webスクレイピングの基礎

**Topic:** Introduction to Web Scraping
**トピック:** Webスクレイピング入門

**Today's Objectives | 今日の目標:**
- Understand what web scraping is | Webスクレイピングとは何かを理解する
- Learn about ethical and legal considerations | 倫理的および法的考慮事項について学ぶ
- Explore how websites are structured | ウェブサイトがどのように構造化されているかを探索する
- Identify appropriate sources for data | データの適切なソースを特定する

---

## Slide 2: What is Web Scraping?
## スライド2：Webスクレイピングとは？

**Web Scraping = Automatically Collecting Data from Websites**
**Webスクレイピング = ウェブサイトから自動的にデータを収集すること**

### Why Scraping? | なぜスクレイピング？

**The Problem:**
- ML needs lots of data | MLには多くのデータが必要
- Not all data comes in downloadable files | すべてのデータがダウンロード可能ファイルで提供されるわけではない
- Manually copying data is slow and tedious | データを手動でコピーするのは遅くて退屈

**The Solution:**
- Scraping automates data collection | スクレイピングはデータ収集を自動化
- Collects information faster | 情報をより速く収集
- Organizes data for analysis | 分析用にデータを整理

**For Our Project:**
We'll scrape company information from job boards and company directories!
求人サイトや企業ディレクトリから企業情報をスクレイプします！

---

## Slide 3: How Web Scraping Works
## スライド3：Webスクレイピングの仕組み

### The Basic Process | 基本的なプロセス

```
1. VISIT WEBSITE    →    2. READ HTML    →    3. EXTRACT DATA    →    4. SAVE DATA
   ウェブサイト訪問        HTMLを読む            データ抽出            データ保存

🌐 Open webpage     📄 Get page code    🎯 Find specific    💾 Store in file
```

**What Happens:**
1. Your computer visits a website | コンピュータがウェブサイトを訪問
2. Reads the HTML (the code behind the page) | HTML（ページの背後にあるコード）を読む
3. Finds specific information (company names, descriptions) | 特定の情報を見つける（企業名、説明）
4. Saves it in a organized format (CSV, database) | 整理された形式で保存（CSV、データベース）

**Two Approaches:**
- **No-code tools:** Point and click (Week 5) | ポイント＆クリック
- **Python code:** More flexible (later weeks) | より柔軟

---

## Slide 4: CRITICAL - Ethical Considerations
## スライド4：重要 - 倫理的考慮事項

### ⚠️ NOT ALL SCRAPING IS ETHICAL OR LEGAL! ⚠️
### ⚠️ すべてのスクレイピングが倫理的または合法的ではありません！ ⚠️

**Before Scraping ANY Website, Ask:**

❓ **Is this data publicly available?**
   このデータは公的に利用可能ですか？
   - If behind login/paywall → probably NOT okay
   - ログイン/有料の背後 → おそらくNG

❓ **What does robots.txt say?**
   robots.txtは何と言っていますか？
   - Every website has rules for bots | すべてのウェブサイトにはボットのルールがある
   - Check: www.example.com/robots.txt

❓ **What do Terms of Service say?**
   利用規約は何と言っていますか？
   - Many sites prohibit scraping | 多くのサイトがスクレイピングを禁止
   - Violating ToS can have consequences | ToS違反には結果がある

**Golden Rule:** When in doubt, DON'T scrape - or ask permission!
**黄金律:** 疑わしい場合は、スクレイプしないか、許可を求める！

---

## Slide 5: Legal Considerations in Japan
## スライド5：日本における法的考慮事項

### Know the Law | 法律を知る

**Copyright Law | 著作権法**
- Website content may be copyrighted | ウェブサイトのコンテンツは著作権で保護されている可能性
- Scraping doesn't automatically grant usage rights | スクレイピングは自動的に使用権を付与しない

**Personal Information Protection | 個人情報保護**
- DON'T scrape personal data (names, emails, addresses) | 個人データをスクレイプしない（名前、メール、住所）
- Privacy laws protect individuals | プライバシー法は個人を保護

**Terms of Service | 利用規約**
- Legally binding agreements | 法的拘束力のある契約
- Violation can lead to legal action | 違反は法的措置につながる可能性

### For This Course | このコースでは

✅ **We will ONLY scrape:**
- Publicly available information | 公的に利用可能な情報
- Sites that allow scraping (robots.txt) | スクレイピングを許可するサイト（robots.txt）
- For educational purposes | 教育目的のため
- Company information (not personal data) | 企業情報（個人データではない）

---

## Slide 6: Understanding robots.txt
## スライド6：robots.txtの理解

**robots.txt = A Website's Rules for Bots**
**robots.txt = ボットのためのウェブサイトのルール**

### How to Check robots.txt | robots.txtの確認方法

Add `/robots.txt` to any website URL:
```
https://example.com/robots.txt
```

### What You'll See | 表示されるもの

**Example 1: Scraping Allowed**
```
User-agent: *
Allow: /
```
✅ This means: "All bots can access all pages"
これは「すべてのボットがすべてのページにアクセスできる」を意味します

**Example 2: Scraping NOT Allowed**
```
User-agent: *
Disallow: /
```
❌ This means: "Don't scrape anything"
これは「何もスクレイプしない」を意味します

**Today's Activity:** You'll check robots.txt files!
**今日のアクティビティ:** robots.txtファイルをチェックします！

---

## Slide 7: Website Structure - HTML Basics
## スライド7：ウェブサイト構造 - HTML基礎

**HTML = The Code That Makes Websites**
**HTML = ウェブサイトを作るコード**

### Think of HTML Like a Document Structure | HTMLを文書構造のように考える

```html
<div class="company">
  <h1>ABC Corporation</h1>
  <p class="industry">Technology</p>
  <p class="employees">500 employees</p>
  <p class="description">Leading software company...</p>
</div>
```

**HTML Tags We Care About:**
- `<h1>`, `<h2>` = Headings (company names) | 見出し（企業名）
- `<p>` = Paragraphs (descriptions) | 段落（説明）
- `<div>` = Sections (groups related info) | セクション（関連情報をグループ化）
- `<a>` = Links (to company pages) | リンク（企業ページへ）

**Good News:** Scraping tools find this HTML for you!
**良いニュース:** スクレイピングツールがこのHTMLを見つけます！

---

## Slide 8: Browser Developer Tools
## スライド8：ブラウザ開発者ツール

**Your Window Into Website Structure**
**ウェブサイト構造への窓**

### How to Access | アクセス方法

**Method 1:** Press `F12` on keyboard
**Method 2:** Right-click on page → "Inspect"
**Method 3:** Menu → More Tools → Developer Tools

### What You'll See | 表示されるもの

- **Elements tab:** Shows HTML structure | HTML構造を表示
- **Selector tool:** Click to inspect specific elements | 特定の要素を検査するクリック
- **Live preview:** See code for any part of page | ページのあらゆる部分のコードを確認

**Today's Activity:**
You'll use developer tools to explore website structure!
開発者ツールを使用してウェブサイト構造を探索します！

---

## Slide 9: Evaluating Websites for Scraping
## スライド9：スクレイピングのためのウェブサイト評価

### The Scraping Feasibility Checklist | スクレイピング実現可能性チェックリスト

**For Each Potential Website, Check:**

1. ✅ **Data Availability** | データ可用性
   - Does it have company information we need?
   - 必要な企業情報がありますか？

2. ✅ **HTML Structure** | HTML構造
   - Is data organized in a structured way?
   - データは構造化された方法で整理されていますか？

3. ✅ **robots.txt** | robots.txt
   - Does it allow scraping?
   - スクレイピングを許可していますか？

4. ✅ **Terms of Service** | 利用規約
   - Are there prohibitions on scraping?
   - スクレイピングの禁止事項はありますか？

5. ✅ **Ethical Assessment** | 倫理的評価
   - Is this the right thing to do?
   - これは正しいことですか？

**Today:** You'll evaluate 3-5 websites using this checklist!
**今日:** このチェックリストを使用して3-5のウェブサイトを評価します！

---

## Slide 10: Responsible Scraping Practices
## スライド10：責任あるスクレイピング実践

### How to Be a Good Scraper | 良いスクレイパーになる方法

**1. Respect Rate Limits** | レート制限を尊重
- Don't overwhelm servers | サーバーに過負荷をかけない
- Add delays between requests | リクエスト間に遅延を追加
- Scrape during off-peak hours | オフピーク時間にスクレイプ

**2. Use APIs When Available** | 利用可能な場合はAPIを使用
- Many sites offer official APIs | 多くのサイトが公式APIを提供
- APIs are the "proper way" to get data | APIはデータを取得する「適切な方法」

**3. Respect Privacy** | プライバシーを尊重
- Never scrape personal information | 個人情報を決してスクレイプしない
- Focus on public company data | 公開企業データに焦点を当てる

**4. Document Your Work** | 作業を文書化
- Keep track of what you scraped | スクレイプしたものを追跡
- Note ethical decisions made | 下した倫理的決定をメモ

---

## Slide 11: Today's Activity Preview
## スライド11：今日のアクティビティプレビュー

### What You'll Do Today | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Browser Developer Tools** (10 min)
   - Learn to inspect web pages
   - ブラウザ開発者ツール

2. **HTML Structure Exploration** (12 min)
   - Identify data elements on pages
   - HTML構造探索

3. **Ethical Analysis** (13 min)
   - Check robots.txt files and ToS
   - 倫理的分析

4. **Website Evaluation** (15 min)
   - Assess 3-5 sites for scraping feasibility
   - ウェブサイト評価

5. **Feasibility Report** (10 min)
   - Document your findings
   - 実現可能性レポート

**The ML-101 Bot will guide you through ethical decision-making!**
**ML-101ボットが倫理的意思決定を通じてガイドします！**

---

## Slide 12: Key Takeaways
## スライド12：重要なポイント

### Remember | 覚えておいてください

✅ **Scraping = automated data collection**
   スクレイピング = 自動データ収集

✅ **Ethics and legality MATTER** - always check first
   倫理と合法性が重要 - 常に最初に確認

✅ **robots.txt tells you** what's allowed
   robots.txtが何が許可されているかを伝える

✅ **HTML = website structure** that holds data
   HTML = データを保持するウェブサイト構造

✅ **Developer tools** let you explore HTML
   開発者ツールでHTMLを探索できる

✅ **When in doubt, DON'T scrape** - ask permission!
   疑問がある場合は、スクレイプしない - 許可を求める！

---

## Slide 13: Let's Get Started!
## スライド13：始めましょう！

**"Now let's explore website structure and make ethical scraping decisions!"**
**「では、ウェブサイト構造を探索し、倫理的スクレイピング決定を下しましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Begin Week 4 Activity
   第4週アクティビティを開始

3. Learn to use browser developer tools
   ブラウザ開発者ツールの使用を学ぶ

4. Evaluate websites ethically
   ウェブサイトを倫理的に評価

**Remember:** Ethics come FIRST - always verify before scraping!
**覚えておいてください:** 倫理が最優先 - スクレイピング前に常に検証！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum
- **CRITICAL:** Spend adequate time (6+ minutes) on ethics and legality - this cannot be rushed!
- **Tone:** Serious when discussing legal/ethical issues, then lighter for technical content
- **Examples:** Use real examples of websites (with caution about their scraping policies)
- **Warning:** Make consequences clear - violating ToS can have real repercussions
- **Reassurance:** "We'll only scrape ethically approved sites in this course"

### Common Questions

Q: "Can I scrape any website I want?"
A: "No. You must check robots.txt, Terms of Service, and make an ethical assessment first. Many sites explicitly prohibit scraping."

Q: "What happens if I scrape a site that doesn't allow it?"
A: "Consequences can range from being blocked from the site to legal action. Always check first. For this course, we only scrape approved sites."

Q: "Is it legal to scrape for school projects?"
A: "It depends on the site. Educational use may be fair use in some cases, but you still need to respect ToS and robots.txt. When in doubt, ask!"

Q: "What if robots.txt says no but I really need the data?"
A: "Respect the site's wishes. Look for alternatives: the site's API, contact them for permission, or find a different data source."

### After Lecture

- Immediately transition to hands-on activity
- Students work with bot guidance
- **IMPORTANT:** Be available for ethical/legal questions
- Reinforce that the course only uses approved, ethical scraping targets
- Monitor student website selections for appropriateness

### Key Points to Emphasize

1. **Ethics are non-negotiable** - This is the most important lesson today
2. **robots.txt and ToS must be checked** - No exceptions
3. **Personal data is off-limits** - Privacy matters
4. **Educational use has limits** - Still need permission/compliance
5. **Bot will help with decisions** - But students must think critically
6. **When uncertain, ask** - Better safe than sorry

### Ethical Scenarios to Discuss (if time)

- Job posting sites: Often okay for public listings
- Company review sites: Check ToS carefully
- Social media: Usually prohibited by ToS
- News sites: Content often copyrighted
- Government data: Often explicitly public

### Red Flags for Student Projects

Watch for students considering:
- Sites with login requirements
- Social media platforms
- Sites with explicit "no scraping" in ToS
- Sites with personal information
- Sites behind paywalls

### AI Transparency

- Students may use AI to research legal aspects
- Must verify AI's legal advice with authoritative sources
- AI can explain HTML/robots.txt but shouldn't make ethical decisions
- Document all AI interactions per course policy

---

**End of Week 4 Lecture Slides**
**第4週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
