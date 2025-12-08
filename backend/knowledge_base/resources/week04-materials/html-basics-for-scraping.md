# HTML Basics for Web Scraping
# ウェブスクレイピングのためのHTML基礎

**Week 4 Reference Material | 第4週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## What is HTML? | HTMLとは？

**HTML = HyperText Markup Language**
**HTML = ハイパーテキストマークアップ言語**

**Simple definition:**
**シンプルな定義:**
HTML is the code that structures web pages - like the skeleton of a website.
HTMLはウェブページを構造化するコード - ウェブサイトの骨格のようなものです。

**Think of a house:**
**家を考えてください:**
- HTML = Structure (walls, rooms, doors)
  HTML = 構造（壁、部屋、ドア）
- CSS = Style (paint, decorations, furniture)
  CSS = スタイル（ペイント、装飾、家具）
- JavaScript = Interactivity (lights, appliances, automation)
  JavaScript = インタラクティブ性（照明、家電、自動化）

**For web scraping, we focus on HTML!**
**ウェブスクレイピングでは、HTMLに焦点を当てます！**

---

## Why Learn HTML for Web Scraping? | なぜウェブスクレイピングのためにHTMLを学ぶのか？

**You need to understand HTML to:**
**次のためにHTMLを理解する必要があります:**

✅ **Find the data you want**
   必要なデータを見つける
   - Identify where company names are stored
     会社名がどこに保存されているかを特定
   - Locate salary information
     給与情報を見つける

✅ **Write effective scraping code**
   効果的なスクレイピングコードを書く
   - Target specific elements
     特定の要素をターゲット
   - Extract exact information
     正確な情報を抽出

✅ **Troubleshoot problems**
   問題のトラブルシューティング
   - Understand why scraping fails
     スクレイピングが失敗する理由を理解
   - Fix broken scrapers
     壊れたスクレイパーを修正

**Good news:** You only need basic HTML knowledge!
**良いニュース:** 基本的なHTML知識だけが必要です！

---

## Basic HTML Structure | 基本的なHTML構造

### Simple HTML Page | シンプルなHTMLページ

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Company Website</title>
  </head>
  <body>
    <h1>ABC Corporation</h1>
    <p>We are a technology company.</p>
  </body>
</html>
```

**Structure breakdown:**
**構造の内訳:**

```
<!DOCTYPE html>          ← Declares this is HTML5
<html>                   ← Root element (everything goes inside)
  <head>                 ← Metadata (not visible on page)
    <title>...</title>   ← Page title (shows in browser tab)
  </head>
  <body>                 ← Visible content (what users see)
    <h1>...</h1>         ← Heading
    <p>...</p>           ← Paragraph
  </body>
</html>                  ← Closing tag
```

---

## HTML Tags | HTMLタグ

### What are Tags? | タグとは？

**Tags = Markup symbols that define elements**
**タグ = 要素を定義するマークアップシンボル**

**Anatomy of a tag:**
**タグの構造:**

```html
<tagname>Content goes here</tagname>
   ↑         ↑                ↑
Opening   Content        Closing tag
  tag                      (with /)
```

**Example:**
```html
<p>This is a paragraph.</p>
```

**Self-closing tags (no content):**
**自己閉鎖タグ（コンテンツなし）:**
```html
<br>    <!-- Line break -->
<img src="photo.jpg">    <!-- Image -->
<hr>    <!-- Horizontal rule -->
```

---

## Common HTML Elements | 一般的なHTML要素

### Headings | 見出し

**6 levels of headings (h1 is largest, h6 is smallest):**
**6レベルの見出し（h1が最大、h6が最小）:**

```html
<h1>Main Title</h1>           <!-- Largest -->
<h2>Section Title</h2>
<h3>Subsection Title</h3>
<h4>Minor Heading</h4>
<h5>Small Heading</h5>
<h6>Tiny Heading</h6>         <!-- Smallest -->
```

**Example on company page:**
**企業ページの例:**
```html
<h1>ABC Corporation</h1>
<h2>About Us</h2>
<h3>Our Mission</h3>
```

**For scraping:** Company names often in `<h1>` or `<h2>` tags
**スクレイピング用:** 会社名は`<h1>`または`<h2>`タグによくあります

---

### Paragraphs | 段落

```html
<p>This is a paragraph of text.</p>
<p>This is another paragraph.</p>
```

**Example:**
```html
<p>ABC Corp is a leading technology company founded in 2010.</p>
<p>We specialize in AI and machine learning solutions.</p>
```

**For scraping:** Company descriptions often in `<p>` tags
**スクレイピング用:** 会社の説明は`<p>`タグによくあります

---

### Links | リンク

**Anchor tags (`<a>`) create clickable links:**
**アンカータグ（`<a>`）がクリック可能なリンクを作成:**

```html
<a href="https://example.com">Click here</a>
         ↑                         ↑
      URL to go to            Link text
```

**Real example:**
**実際の例:**
```html
<a href="https://abc-corp.com/careers">View Jobs</a>
<a href="https://abc-corp.com/about">About Us</a>
```

**For scraping:**
**スクレイピング用:**
- Extract URLs from `href` attribute
  `href`属性からURLを抽出
- Follow links to detail pages
  詳細ページへのリンクをフォロー

---

### Lists | リスト

**Unordered list (bullets):**
**順序なしリスト（箇条書き）:**

```html
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

**Ordered list (numbers):**
**順序付きリスト（番号）:**

```html
<ol>
  <li>First item</li>
  <li>Second item</li>
  <li>Third item</li>
</ol>
```

**Example on company page:**
**企業ページの例:**
```html
<h3>Our Benefits</h3>
<ul>
  <li>Health insurance</li>
  <li>Remote work option</li>
  <li>Professional development</li>
</ul>
```

**For scraping:** Benefits, skills, requirements often in `<li>` tags
**スクレイピング用:** 福利厚生、スキル、要件は`<li>`タグによくあります

---

### Divs and Spans | DivsとSpans

**`<div>` = Division (container for larger sections):**
**`<div>` = Division（大きなセクションのコンテナ）:**

```html
<div>
  <h2>About Us</h2>
  <p>We are a technology company...</p>
</div>

<div>
  <h2>Contact</h2>
  <p>Email: info@company.com</p>
</div>
```

**`<span>` = Span (container for inline elements):**
**`<span>` = Span（インライン要素のコンテナ）:**

```html
<p>Price: <span>$50,000</span> per year</p>
<p>Location: <span>Tokyo, Japan</span></p>
```

**For scraping:**
**スクレイピング用:**
- `<div>` groups related information
  `<div>`は関連情報をグループ化
- `<span>` highlights specific data within text
  `<span>`はテキスト内の特定のデータを強調

---

### Tables | テーブル

**Tables organize data in rows and columns:**
**テーブルは行と列でデータを整理:**

```html
<table>
  <tr>                    <!-- Table Row -->
    <th>Company</th>      <!-- Table Header -->
    <th>Industry</th>
    <th>Employees</th>
  </tr>
  <tr>
    <td>ABC Corp</td>     <!-- Table Data -->
    <td>Technology</td>
    <td>500</td>
  </tr>
  <tr>
    <td>XYZ Inc</td>
    <td>Finance</td>
    <td>250</td>
  </tr>
</table>
```

**Rendered as:**
**レンダリングされると:**

| Company | Industry | Employees |
|---------|----------|-----------|
| ABC Corp | Technology | 500 |
| XYZ Inc | Finance | 250 |

**For scraping:** Tables are GREAT for structured data!
**スクレイピング用:** テーブルは構造化データに最適！

---

### Images | 画像

```html
<img src="company-logo.jpg" alt="ABC Corp Logo">
      ↑                          ↑
  Image file path          Alternative text
```

**Attributes:**
**属性:**
- `src` = Source (image file URL)
  `src` = ソース（画像ファイルURL）
- `alt` = Alternative text (description)
  `alt` = 代替テキスト（説明）

**For scraping:** Extract image URLs from `src` attribute
**スクレイピング用:** `src`属性から画像URLを抽出

---

## HTML Attributes | HTML属性

### What are Attributes? | 属性とは？

**Attributes = Additional information about elements**
**属性 = 要素に関する追加情報**

**Format:**
```html
<tag attribute="value">Content</tag>
```

---

### Class Attribute | クラス属性

**`class` = Identifies groups of elements (can have multiple elements with same class)**
**`class` = 要素のグループを識別（同じクラスの複数の要素を持つことができます）**

```html
<div class="company-card">
  <h2>ABC Corp</h2>
  <p>Technology company</p>
</div>

<div class="company-card">
  <h2>XYZ Inc</h2>
  <p>Finance company</p>
</div>
```

**Multiple classes:**
```html
<div class="company-card featured-company">
  ...
</div>
```

**For scraping:** Class names help target specific elements
**スクレイピング用:** クラス名は特定の要素をターゲットにするのに役立ちます

---

### ID Attribute | ID属性

**`id` = Unique identifier (only ONE element can have a specific ID)**
**`id` = 一意の識別子（特定のIDを持つことができる要素は1つだけ）**

```html
<div id="main-content">
  <h1>Welcome</h1>
</div>

<div id="sidebar">
  <p>Additional info</p>
</div>
```

**For scraping:** IDs are great for targeting unique elements
**スクレイピング用:** IDは一意の要素をターゲットにするのに最適

---

### Common Attributes | 一般的な属性

| Attribute | Purpose | Example |
|-----------|---------|---------|
| `class` | Group identifier | `<div class="company">` |
| `id` | Unique identifier | `<div id="header">` |
| `href` | Link destination | `<a href="url">` |
| `src` | Image/file source | `<img src="image.jpg">` |
| `alt` | Alternative text | `<img alt="Logo">` |
| `title` | Tooltip text | `<a title="Click here">` |
| `style` | Inline CSS | `<p style="color:red">` |

---

## Nested Elements | ネストされた要素

**HTML elements can be nested inside each other:**
**HTML要素は互いにネストできます:**

```html
<div class="company-info">
  <h2 class="company-name">ABC Corporation</h2>
  <div class="details">
    <p class="industry">Industry: <span>Technology</span></p>
    <p class="location">Location: <span>Tokyo</span></p>
    <ul class="benefits">
      <li>Health Insurance</li>
      <li>Remote Work</li>
    </ul>
  </div>
</div>
```

**Hierarchy (tree structure):**
**階層（ツリー構造）:**
```
div.company-info
  ├── h2.company-name
  └── div.details
      ├── p.industry
      │   └── span
      ├── p.location
      │   └── span
      └── ul.benefits
          ├── li
          └── li
```

**For scraping:** Understanding nesting helps navigate to specific data
**スクレイピング用:** ネストを理解することで特定のデータへのナビゲートに役立ちます

---

## Real Company Page Example | 実際の企業ページの例

### Typical Company Listing | 典型的な企業リスト

```html
<div class="company-card" id="company-123">
  <div class="header">
    <h2 class="company-name">
      <a href="/companies/abc-corp">ABC Corporation</a>
    </h2>
    <span class="industry-tag">Technology</span>
  </div>

  <div class="company-info">
    <p class="description">
      Leading AI and machine learning company in Tokyo.
    </p>

    <ul class="quick-facts">
      <li class="employee-count">
        <span class="label">Employees:</span>
        <span class="value">500</span>
      </li>
      <li class="location">
        <span class="label">Location:</span>
        <span class="value">Tokyo, Japan</span>
      </li>
      <li class="founded">
        <span class="label">Founded:</span>
        <span class="value">2010</span>
      </li>
    </ul>

    <div class="benefits">
      <h3>Benefits</h3>
      <ul>
        <li>Health Insurance</li>
        <li>Remote Work Option</li>
        <li>Professional Development</li>
      </ul>
    </div>
  </div>

  <div class="footer">
    <a href="/companies/abc-corp/apply" class="apply-button">
      Apply Now
    </a>
  </div>
</div>
```

---

### What to Extract | 抽出するもの

**From this HTML, you can extract:**
**このHTMLから抽出できます:**

1. **Company Name:** Text inside `<h2 class="company-name">`
   会社名：`<h2 class="company-name">`内のテキスト

2. **Industry:** Text inside `<span class="industry-tag">`
   業界：`<span class="industry-tag">`内のテキスト

3. **Description:** Text inside `<p class="description">`
   説明：`<p class="description">`内のテキスト

4. **Employee Count:** Text inside `<span class="value">` within `<li class="employee-count">`
   従業員数：`<li class="employee-count">`内の`<span class="value">`内のテキスト

5. **Location:** Text inside `<span class="value">` within `<li class="location">`
   場所：`<li class="location">`内の`<span class="value">`内のテキスト

6. **Benefits:** All `<li>` inside `<div class="benefits">`
   福利厚生：`<div class="benefits">`内のすべての`<li>`

7. **Detail URL:** `href` attribute in `<a href="/companies/abc-corp">`
   詳細URL：`<a href="/companies/abc-corp">`の`href`属性

---

## Using Browser DevTools | ブラウザDevToolsの使用

### What are DevTools? | DevToolsとは？

**DevTools = Built-in browser tools to inspect HTML**
**DevTools = HTMLを検査するためのブラウザ組み込みツール**

**Available in all modern browsers:**
**すべての最新ブラウザで利用可能:**
- Chrome
- Firefox
- Safari
- Edge

---

### How to Open DevTools | DevToolsを開く方法

**Method 1: Right-click**
**方法1：右クリック**
1. Right-click on any element on a webpage
   ウェブページの任意の要素を右クリック
2. Select "Inspect" or "Inspect Element"
   「検査」または「要素を検査」を選択

**Method 2: Keyboard shortcut**
**方法2：キーボードショートカット**
- Windows/Linux: `F12` or `Ctrl+Shift+I`
- Mac: `Cmd+Option+I`

**Method 3: Browser menu**
**方法3：ブラウザメニュー**
- Chrome: Menu → More Tools → Developer Tools
- Firefox: Menu → Web Developer → Inspector

---

### Using the Elements Tab | Elements タブの使用

**Elements tab shows the HTML structure:**
**Elements タブはHTML構造を表示:**

```
Elements Panel:
┌─────────────────────────────────────────────┐
│ <html>                                       │
│   <body>                                     │
│     <div class="company-card">               │
│       <h2 class="company-name">ABC Corp</h2>│ ← Click to select
│       <p class="description">...</p>         │
│     </div>                                   │
│   </body>                                    │
└─────────────────────────────────────────────┘

Styles Panel (right side):
Shows CSS styling for selected element
```

---

### Finding Elements | 要素の検索

**Step-by-step:**
**ステップバイステップ:**

1. **Open DevTools** (F12 or right-click → Inspect)
   DevToolsを開く（F12または右クリック→検査）

2. **Click the "Select element" tool** (cursor icon, top-left of DevTools)
   「要素を選択」ツールをクリック（カーソルアイコン、DevToolsの左上）

3. **Hover over elements on the page**
   ページ上の要素にカーソルを合わせる
   - Elements highlight as you move cursor
     カーソルを移動すると要素がハイライト表示

4. **Click on the element you want to inspect**
   検査したい要素をクリック
   - HTML for that element appears in DevTools
     その要素のHTMLがDevToolsに表示されます

5. **View the element's:**
   要素の次を表示:**
   - Tag name (e.g., `<div>`, `<p>`, `<span>`)
     タグ名（例：`<div>`、`<p>`、`<span>`）
   - Class names
     クラス名
   - ID (if any)
     ID（ある場合）
   - Parent/child elements
     親/子要素

---

### Practical Example | 実用例

**Scenario:** You want to scrape company names from mynavi.jp
**シナリオ:** mynavi.jpから会社名をスクレイプしたい

**Steps:**
**手順:**

1. **Go to mynavi.jp company listing page**
   mynavi.jpの企業リストページに移動

2. **Right-click on a company name → "Inspect"**
   会社名を右クリック→「検査」

3. **DevTools opens, showing:**
   DevToolsが開き、次を表示:**
   ```html
   <h2 class="js-atomic-object-text">
     <a href="/companies/12345">
       ABC Corporation
     </a>
   </h2>
   ```

4. **You now know:**
   これで次がわかります:**
   - Company names are in `<h2>` with class `js-atomic-object-text`
     会社名は`js-atomic-object-text`クラスの`<h2>`にあります
   - Inside an `<a>` tag
     `<a>`タグ内
   - Link is in `href` attribute
     リンクは`href`属性にあります

5. **Write scraping code to target this structure!**
   この構造をターゲットにするスクレイピングコードを書く！**

---

## HTML Patterns in Job Sites | 求人サイトのHTMLパターン

### Common Patterns | 一般的なパターン

**1. List of Companies:**
**1. 企業リスト:**
```html
<div class="company-list">
  <div class="company-item">...</div>
  <div class="company-item">...</div>
  <div class="company-item">...</div>
</div>
```

**2. Data in Tables:**
**2. テーブル内のデータ:**
```html
<table class="company-table">
  <tr>
    <td class="name">ABC Corp</td>
    <td class="industry">Tech</td>
  </tr>
</table>
```

**3. Data in Lists:**
**3. リスト内のデータ:**
```html
<ul class="job-details">
  <li>Salary: ¥5,000,000</li>
  <li>Location: Tokyo</li>
  <li>Type: Full-time</li>
</ul>
```

**4. Labeled Data:**
**4. ラベル付きデータ:**
```html
<div class="info-row">
  <span class="label">Industry:</span>
  <span class="value">Technology</span>
</div>
```

---

## HTML Tips for Scraping | スクレイピングのためのHTMLヒント

### ✅ Look for Patterns | パターンを探す

**Websites repeat HTML structure:**
**ウェブサイトはHTML構造を繰り返します:**

If you see:
見る場合:
```html
<div class="company-card">Company 1 info</div>
<div class="company-card">Company 2 info</div>
<div class="company-card">Company 3 info</div>
```

You can scrape ALL companies with class `company-card`!
クラス`company-card`ですべての企業をスクレイプできます！

---

### ✅ Classes and IDs are Your Friends | クラスとIDはあなたの友達

**Good identifiers:**
**良い識別子:**
- Descriptive names: `company-name`, `salary-info`, `job-location`
  説明的な名前：`company-name`、`salary-info`、`job-location`
- Stable across pages
  ページ間で安定

**Bad identifiers:**
**悪い識別子:**
- Generic names: `div1`, `box`, `container`
  一般的な名前：`div1`、`box`、`container`
- Random codes: `x7k3n`, `tmp_234`
  ランダムコード：`x7k3n`、`tmp_234`

---

### ✅ Navigate the Hierarchy | 階層をナビゲート

**If data is nested:**
**データがネストされている場合:**

```html
<div class="company-card">
  <div class="header">
    <h2 class="name">ABC Corp</h2>
  </div>
  <div class="info">
    <span class="industry">Tech</span>
  </div>
</div>
```

**Path to company name:**
**会社名へのパス:**
`div.company-card` → `div.header` → `h2.name`

---

### ✅ Check Multiple Pages | 複数ページを確認

**HTML structure might change between:**
**HTML構造は次の間で変わる可能性があります:**
- List page vs. Detail page
  リストページと詳細ページ
- Different sections of the site
  サイトの異なるセクション

**Always verify your scraping logic works on multiple examples!**
**常にスクレイピングロジックが複数の例で機能することを確認してください！**

---

## Practice Exercise | 練習問題

**Given this HTML:**
**このHTMLが与えられた場合:**

```html
<div class="job-listing">
  <h2 class="job-title">Software Engineer</h2>
  <div class="company-info">
    <span class="company-name">Tech Innovations Inc.</span>
    <span class="location">Tokyo, Japan</span>
  </div>
  <div class="job-details">
    <p class="salary">Salary: ¥6,000,000 - ¥8,000,000</p>
    <p class="employment-type">Full-time</p>
  </div>
  <ul class="requirements">
    <li>3+ years of Python experience</li>
    <li>Machine learning knowledge</li>
    <li>Bachelor's degree in CS</li>
  </ul>
  <a href="/jobs/12345" class="apply-link">Apply Now</a>
</div>
```

**Questions:**
**質問:**

1. What tag contains the job title?
   職種を含むタグは何ですか？
   **Answer:** `<h2 class="job-title">`

2. What class identifies the company name?
   会社名を識別するクラスは何ですか？
   **Answer:** `company-name`

3. Where is the salary information?
   給与情報はどこにありますか？
   **Answer:** Inside `<p class="salary">`

4. How would you extract all requirements?
   すべての要件をどのように抽出しますか？
   **Answer:** Find all `<li>` elements within `<ul class="requirements">`

5. What attribute contains the application link?
   応募リンクを含む属性は何ですか？
   **Answer:** `href` attribute in `<a class="apply-link">`

---

## Quick Reference Table | クイックリファレンステーブル

| Element | Purpose | Example |
|---------|---------|---------|
| `<h1>` to `<h6>` | Headings | `<h1>Company Name</h1>` |
| `<p>` | Paragraph | `<p>Description text</p>` |
| `<a>` | Link | `<a href="url">Click</a>` |
| `<div>` | Container (block) | `<div class="company">...</div>` |
| `<span>` | Container (inline) | `<span class="price">$50</span>` |
| `<ul>`, `<li>` | Unordered list | `<ul><li>Item</li></ul>` |
| `<ol>`, `<li>` | Ordered list | `<ol><li>First</li></ol>` |
| `<table>`, `<tr>`, `<td>` | Table | `<table><tr><td>Data</td></tr></table>` |
| `<img>` | Image | `<img src="logo.jpg">` |

| 要素 | 目的 | 例 |
|------|------|-----|
| `<h1>`から`<h6>` | 見出し | `<h1>会社名</h1>` |
| `<p>` | 段落 | `<p>説明テキスト</p>` |
| `<a>` | リンク | `<a href="url">クリック</a>` |
| `<div>` | コンテナ（ブロック） | `<div class="company">...</div>` |
| `<span>` | コンテナ（インライン） | `<span class="price">$50</span>` |
| `<ul>`, `<li>` | 順序なしリスト | `<ul><li>項目</li></ul>` |
| `<ol>`, `<li>` | 順序付きリスト | `<ol><li>最初</li></ol>` |
| `<table>`, `<tr>`, `<td>` | テーブル | `<table><tr><td>データ</td></tr></table>` |
| `<img>` | 画像 | `<img src="logo.jpg">` |

---

## Key Takeaways | 重要なポイント

✅ **HTML is just text** - You can read and understand it!
   HTMLはただのテキスト - 読んで理解できます！

✅ **Tags define structure** - They organize content into elements
   タグが構造を定義 - コンテンツを要素に整理

✅ **Attributes provide details** - class, id, href, src are most important
   属性が詳細を提供 - class、id、href、srcが最も重要

✅ **DevTools are essential** - Use them to explore any website
   DevToolsは不可欠 - 任意のウェブサイトを探索するために使用

✅ **Look for patterns** - Websites repeat structures for similar content
   パターンを探す - ウェブサイトは類似のコンテンツに構造を繰り返す

✅ **Practice inspecting** - The more you explore, the easier it gets!
   検査を練習 - より多く探索するほど簡単になります！

---

*Created for ML-101: Week 4*
*ML-101用に作成：第4週*
