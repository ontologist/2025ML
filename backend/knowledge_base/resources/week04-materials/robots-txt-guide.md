# Robots.txt Guide
# Robots.txtガイド

**Week 4 Reference Material | 第4週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## What is robots.txt? | robots.txtとは？

**robots.txt = A text file that tells web scrapers/bots what they can and cannot access**
**robots.txt = ウェブスクレイパー/ボットが何にアクセスできて何にアクセスできないかを伝えるテキストファイル**

**Think of it as:**
**次のように考えてください:**
- A "rule book" for automated visitors
  自動訪問者のための「ルールブック」
- Website owner's instructions to bots
  ウェブサイト所有者のボットへの指示
- A polite request (not a security measure!)
  丁寧なリクエスト（セキュリティ対策ではありません！）

**Location:** Always at the root of a website
**場所:** 常にウェブサイトのルート

```
https://example.com/robots.txt
https://mynavi.jp/robots.txt
https://google.com/robots.txt
```

---

## Why Does robots.txt Exist? | なぜrobots.txtが存在するのか？

### Website Owners Need to: | ウェブサイト所有者は次のことが必要です:

✅ **Protect server resources**
   サーバーリソースを保護
   - Too many bot requests can slow down or crash a website
     ボットリクエストが多すぎるとウェブサイトが遅くなったりクラッシュする

✅ **Control indexing**
   インデックス作成を制御
   - Tell search engines which pages to index
     検索エンジンにどのページをインデックスするかを伝える
   - Hide private or duplicate content
     プライベートまたは重複コンテンツを非表示

✅ **Prevent scraping of sensitive data**
   機密データのスクレイピングを防ぐ
   - Personal information
     個人情報
   - Proprietary data
     独占データ
   - Database dumps
     データベースダンプ

✅ **Manage bandwidth**
   帯域幅を管理
   - Limit how fast bots can crawl
     ボットがクロールできる速度を制限
   - Prevent server overload
     サーバーの過負荷を防ぐ

---

## How to Find robots.txt | robots.txtを見つける方法

### Simple Formula | シンプルな公式

```
Website URL + /robots.txt
```

**Examples:**
**例:**

```
Website: https://mynavi.jp
Robots.txt: https://mynavi.jp/robots.txt

Website: https://en.wikipedia.org
Robots.txt: https://en.wikipedia.org/robots.txt

Website: https://github.com
Robots.txt: https://github.com/robots.txt
```

---

### Checking if robots.txt Exists | robots.txtが存在するか確認

**Steps:**
**手順:**

1. **Type the website URL + `/robots.txt` in your browser**
   ブラウザにウェブサイトURL + `/robots.txt`を入力

2. **Press Enter**
   Enterを押す

3. **Two possible outcomes:**
   2つの可能な結果:**

   **A) File exists:**
   **A) ファイルが存在する:**
   - You see a text file with rules
     ルールが含まれたテキストファイルが表示される
   - Read the rules!
     ルールを読む！

   **B) File doesn't exist:**
   **B) ファイルが存在しない:**
   - You see a 404 error page
     404エラーページが表示される
   - This means: No specific restrictions (but still be respectful!)
     これは意味する：特定の制限なし（でも尊重すべき！）

---

## Reading robots.txt | robots.txtの読み方

### Basic Structure | 基本構造

```
User-agent: *
Disallow: /private/
Allow: /public/
Crawl-delay: 10
```

**Line by line:**
**行ごとに:**

| Directive | Meaning | 意味 |
|-----------|---------|------|
| `User-agent:` | Which bot these rules apply to | これらのルールが適用されるボット |
| `Disallow:` | Paths bots cannot access | ボットがアクセスできないパス |
| `Allow:` | Paths bots can access (even if parent is disallowed) | ボットがアクセスできるパス（親が禁止されていても） |
| `Crawl-delay:` | Seconds to wait between requests | リクエスト間の待機秒数 |
| `Sitemap:` | Location of XML sitemap | XMLサイトマップの場所 |

---

## Understanding User-agent | User-agentの理解

### What is User-agent? | User-agentとは？

**User-agent = Identifies which bot the rules apply to**
**User-agent = ルールが適用されるボットを識別**

**Common examples:**
**一般的な例:**

```
User-agent: *
  ↑
Asterisk (*) = ALL bots (including yours!)

User-agent: Googlebot
  ↑
Rules only for Google's search crawler

User-agent: Bingbot
  ↑
Rules only for Bing's search crawler
```

---

### Example with Multiple User-agents | 複数のUser-agentの例

```
# Rules for all bots
User-agent: *
Disallow: /admin/
Crawl-delay: 10

# Special rules for Google
User-agent: Googlebot
Disallow: /private/
Allow: /public/

# Block specific bot
User-agent: BadBot
Disallow: /
```

**How to read:**
**読み方:**

1. **Your scraper = User-agent: \***
   あなたのスクレイパー = User-agent: \*
   - Follow the rules under `User-agent: *`
     `User-agent: *`の下のルールに従う

2. **If no rules for `*`, look for specific bot names**
   `*`のルールがない場合、特定のボット名を探す
   - Usually you'll use `*` rules
     通常は`*`ルールを使用します

---

## Understanding Disallow | Disallowの理解

### What is Disallow? | Disallowとは？

**Disallow = Paths that bots should NOT access**
**Disallow = ボットがアクセスすべきでないパス**

---

### Examples | 例

**1. Disallow everything:**
**1. すべてを禁止:**

```
User-agent: *
Disallow: /
```

**Meaning:** Don't scrape ANY page on this website
**意味:** このウェブサイトのどのページもスクレイプしないでください

---

**2. Disallow specific directory:**
**2. 特定のディレクトリを禁止:**

```
User-agent: *
Disallow: /admin/
```

**Meaning:** Don't access anything in the `/admin/` folder
**意味:** `/admin/`フォルダ内のものにアクセスしないでください

**Examples of blocked URLs:**
**ブロックされたURLの例:**
- `https://example.com/admin/`
- `https://example.com/admin/users`
- `https://example.com/admin/settings`

---

**3. Disallow multiple directories:**
**3. 複数のディレクトリを禁止:**

```
User-agent: *
Disallow: /admin/
Disallow: /private/
Disallow: /temp/
```

**Meaning:** Don't access `/admin/`, `/private/`, or `/temp/`
**意味:** `/admin/`、`/private/`、または`/temp/`にアクセスしないでください

---

**4. Disallow specific file types:**
**4. 特定のファイルタイプを禁止:**

```
User-agent: *
Disallow: /*.pdf$
Disallow: /*.doc$
```

**Meaning:** Don't download PDF or DOC files
**意味:** PDFまたはDOCファイルをダウンロードしないでください

---

**5. Allow everything (no restrictions):**
**5. すべてを許可（制限なし）:**

```
User-agent: *
Disallow:
```

**Meaning:** Empty `Disallow` = No restrictions
**意味:** 空の`Disallow` = 制限なし

---

## Understanding Allow | Allowの理解

### What is Allow? | Allowとは？

**Allow = Exceptions to Disallow rules**
**Allow = Disallowルールの例外**

**Use case:** Disallow a directory but allow specific files within it
**使用例:** ディレクトリを禁止するが、その中の特定のファイルを許可

---

### Example | 例

```
User-agent: *
Disallow: /private/
Allow: /private/public-data.html
```

**Meaning:**
**意味:**
- Don't access `/private/` folder
  `/private/`フォルダにアクセスしないでください
- **EXCEPT** `/private/public-data.html` is OK
  **ただし** `/private/public-data.html`はOK

**Blocked:**
**ブロック:**
- `https://example.com/private/`
- `https://example.com/private/secrets.html`

**Allowed:**
**許可:**
- `https://example.com/private/public-data.html`

---

## Understanding Crawl-delay | Crawl-delayの理解

### What is Crawl-delay? | Crawl-delayとは？

**Crawl-delay = Seconds to wait between requests**
**Crawl-delay = リクエスト間の待機秒数**

**Purpose:** Prevent overwhelming the server with too many requests too fast
**目的:** 速すぎる多数のリクエストでサーバーを圧倒しないようにする

---

### Examples | 例

```
User-agent: *
Crawl-delay: 10
```

**Meaning:** Wait 10 seconds between each request
**意味:** 各リクエストの間に10秒待つ

**In practice:**
**実際には:**
```
Request page 1 → Wait 10 seconds → Request page 2 → Wait 10 seconds → Request page 3
```

---

**Common crawl-delay values:**
**一般的なcrawl-delay値:**

| Value | Meaning | When Used |
|-------|---------|-----------|
| `1` | 1 second delay | Light restriction |
| `5` | 5 second delay | Moderate restriction |
| `10` | 10 second delay | Heavy restriction |
| `30+` | 30+ second delay | Very heavy restriction |

| 値 | 意味 | いつ使用されるか |
|----|------|----------------|
| `1` | 1秒遅延 | 軽い制限 |
| `5` | 5秒遅延 | 中程度の制限 |
| `10` | 10秒遅延 | 重い制限 |
| `30+` | 30秒以上遅延 | 非常に重い制限 |

---

### Implementing Crawl-delay | Crawl-delayの実装

**In Python:**
```python
import time
import requests

crawl_delay = 10  # From robots.txt

# Request first page
response = requests.get('https://example.com/page1')

# Wait before next request
time.sleep(crawl_delay)

# Request second page
response = requests.get('https://example.com/page2')
```

**Always respect crawl-delay!**
**常にcrawl-delayを尊重してください！**

---

## Real-World Examples | 実世界の例

### Example 1: Wikipedia | 例1：Wikipedia

**File:** `https://en.wikipedia.org/robots.txt`

```
User-agent: *
Disallow: /wiki/Special:
Disallow: /wiki/User:
Disallow: /wiki/Wikipedia:
Allow: /wiki/
Crawl-delay: 1
```

**What this means:**
**これが意味すること:**
- ✅ Can scrape regular articles (`/wiki/Article_Name`)
  通常の記事をスクレイプできる（`/wiki/Article_Name`）
- ❌ Cannot scrape special pages (`/wiki/Special:`)
  特別ページをスクレイプできない（`/wiki/Special:`）
- ❌ Cannot scrape user pages (`/wiki/User:`)
  ユーザーページをスクレイプできない（`/wiki/User:`）
- ⏱ Wait 1 second between requests
  リクエスト間に1秒待つ

---

### Example 2: Restrictive Site | 例2：制限的なサイト

```
User-agent: *
Disallow: /
```

**What this means:**
**これが意味すること:**
- ❌ **NO scraping allowed at all**
  **スクレイピングは一切許可されていません**
- Website owner doesn't want ANY automated access
  ウェブサイト所有者は自動アクセスを一切望んでいません

**What to do:**
**何をすべきか:**
- **Respect this!** Don't scrape
  **これを尊重してください！** スクレイプしないでください
- Contact website owner for permission
  許可のためにウェブサイト所有者に連絡
- Look for official API instead
  代わりに公式APIを探す

---

### Example 3: Permissive Site | 例3：許可的なサイト

```
User-agent: *
Disallow: /admin/
Disallow: /private/
Crawl-delay: 5

Sitemap: https://example.com/sitemap.xml
```

**What this means:**
**これが意味すること:**
- ✅ Can scrape most pages
  ほとんどのページをスクレイプできる
- ❌ Except `/admin/` and `/private/`
  `/admin/`と`/private/`を除く
- ⏱ Wait 5 seconds between requests
  リクエスト間に5秒待つ
- 📄 Sitemap available for finding pages
  ページを見つけるためのサイトマップが利用可能

---

### Example 4: Different Rules for Different Bots | 例4：異なるボット用の異なるルール

```
# Rules for most bots
User-agent: *
Disallow: /admin/
Crawl-delay: 10

# More permissive for Google
User-agent: Googlebot
Disallow: /admin/
Crawl-delay: 1

# Block specific aggressive bot
User-agent: AggresiveBot
Disallow: /
```

**What this means:**
**これが意味すること:**
- Your scraper follows `User-agent: *` rules
  あなたのスクレイパーは`User-agent: *`ルールに従います
- Google's bot has faster crawl-delay
  Googleのボットはより速いcrawl-delayを持ちます
- "AggresiveBot" is completely blocked
  「AggresiveBot」は完全にブロックされています

---

## What to Do If Scraping is Disallowed | スクレイピングが禁止されている場合の対処法

### Scenario: robots.txt says `Disallow: /` | シナリオ：robots.txtが`Disallow: /`と言っている

**You have several options:**
**いくつかのオプションがあります:**

---

### Option 1: Respect It (Recommended) | オプション1：それを尊重する（推奨）

**Don't scrape the website**
**ウェブサイトをスクレイプしないでください**

**Why:**
**なぜ:**
- ✅ Ethical
  倫理的
- ✅ Legal (in many jurisdictions)
  法的（多くの管轄区域で）
- ✅ Respectful to website owner
  ウェブサイト所有者に対して敬意を払う

---

### Option 2: Contact Website Owner | オプション2：ウェブサイト所有者に連絡

**Ask for permission**
**許可を求める**

**Email template:**
**メールテンプレート:**

```
Subject: Request for Permission to Scrape Data for Educational Project
件名：教育プロジェクトのためのデータスクレイピング許可のリクエスト

Dear [Website Name] Team,
親愛なる[ウェブサイト名]チーム、

I am a student working on a machine learning project at [University Name].
I would like to collect [specific data] from your website for educational purposes only.

The data will:
- Be used only for learning and non-commercial purposes
- Not be shared publicly
- Be collected at a respectful rate (no server overload)

Could you please grant permission or suggest an alternative data source?

Thank you for your consideration.

Best regards,
[Your Name]
[Your Email]
```

**If they say yes:**
**彼らがイエスと言った場合:**
- ✅ Get written permission
  書面による許可を得る
- ✅ Follow any conditions they specify
  彼らが指定する条件に従う

**If they say no:**
**彼らがノーと言った場合:**
- ❌ Don't scrape
  スクレイプしないでください
- Move to Option 3 or 4
  オプション3または4に移動

---

### Option 3: Look for Official API | オプション3：公式APIを探す

**Many websites offer APIs (Application Programming Interfaces)**
**多くのウェブサイトがAPI（アプリケーションプログラミングインターフェース）を提供**

**Advantages:**
**利点:**
- ✅ Legal and approved
  法的で承認済み
- ✅ Structured data (easier to use)
  構造化されたデータ（使いやすい）
- ✅ More reliable
  より信頼性が高い

**How to find:**
**見つける方法:**
- Look for "API", "Developers", or "Data" in website footer
  ウェブサイトフッターで「API」、「開発者」、または「データ」を探す
- Search: "[website name] API"
  検索：「[ウェブサイト名] API」
- Check documentation
  ドキュメントを確認

**Examples:**
**例:**
- Twitter API
- GitHub API
- Weather API

---

### Option 4: Use Alternative Data Sources | オプション4：代替データソースを使用

**Find similar data elsewhere:**
**他の場所で類似のデータを見つける:**

✅ Open datasets (Kaggle, UCI ML Repository, data.gov)
   オープンデータセット（Kaggle、UCI MLリポジトリ、data.gov）

✅ Public databases
   公開データベース

✅ Government open data portals
   政府のオープンデータポータル

✅ Academic datasets
   学術データセット

✅ Data provided by your instructor
   インストラクターが提供するデータ

---

### Option 5: Manual Collection (Small Scale) | オプション5：手動収集（小規模）

**If you only need small amount of data:**
**少量のデータのみが必要な場合:**

- Manually copy-paste information
  情報を手動でコピー＆ペースト
- Take screenshots
  スクリーンショットを撮る
- Type data into spreadsheet
  スプレッドシートにデータを入力

**Appropriate for:**
**適切な場合:**
- ✅ Small datasets (<100 items)
  小規模データセット（<100項目）
- ✅ Learning exercises
  学習演習
- ✅ Proof of concept
  概念実証

**Not appropriate for:**
**適切でない場合:**
- ❌ Large datasets (1000s of items)
  大規模データセット（1000項目）
- ❌ Production systems
  本番システム

---

## Best Practices | ベストプラクティス

### ✅ Always Check robots.txt First | 常に最初にrobots.txtを確認

**Before scraping ANY website:**
**任意のウェブサイトをスクレイプする前に:**

1. Go to `website.com/robots.txt`
   `website.com/robots.txt`に移動
2. Read the rules
   ルールを読む
3. Follow the rules
   ルールに従う

---

### ✅ Respect Crawl-delay | Crawl-delayを尊重

**If robots.txt specifies crawl-delay:**
**robots.txtがcrawl-delayを指定している場合:**

```python
import time

crawl_delay = 10  # From robots.txt

for url in urls:
    response = requests.get(url)
    # Process response
    time.sleep(crawl_delay)  # IMPORTANT!
```

**Even if no crawl-delay specified:**
**crawl-delayが指定されていなくても:**
- Add small delay (1-2 seconds)
  小さな遅延を追加（1-2秒）
- Be polite to the server
  サーバーに礼儀正しく

---

### ✅ Use Descriptive User-agent | 説明的なUser-agentを使用

**Identify your scraper:**
**スクレイパーを識別:**

```python
headers = {
    'User-Agent': 'StudentBot/1.0 (ML-101 Educational Project; contact@email.com)'
}

response = requests.get(url, headers=headers)
```

**Why:**
**なぜ:**
- Transparent about who you are
  あなたが誰であるかについて透明
- Website owner can contact you if needed
  必要に応じてウェブサイト所有者が連絡できる
- Professional practice
  プロフェッショナルな実践

---

### ✅ Document Your Compliance | コンプライアンスを文書化

**Keep notes:**
**メモを保管:**

```
Project: Company Data Collection
Website: https://example.com
Robots.txt: https://example.com/robots.txt
Date checked: 2025-11-01

Relevant rules:
- User-agent: *
- Disallow: /admin/
- Crawl-delay: 5

Compliance:
- Not accessing /admin/
- Implementing 5-second delay
- Using custom User-Agent string
```

---

### ✅ When in Doubt, Ask | 疑問があれば尋ねる

**If robots.txt is unclear:**
**robots.txtが不明確な場合:**
- Contact website owner
  ウェブサイト所有者に連絡
- Ask instructor
  インストラクターに尋ねる
- Choose more restrictive interpretation
  より制限的な解釈を選択

**Better safe than sorry!**
**安全第一！**

---

## Common Misconceptions | 一般的な誤解

### ❌ Myth 1: "robots.txt is a security measure" | 誤解1：「robots.txtはセキュリティ対策」

**Reality:**
**現実:**
- robots.txt is a REQUEST, not enforcement
  robots.txtはリクエストであり、強制ではありません
- Anyone can ignore it (but shouldn't!)
  誰でも無視できる（でもすべきではありません！）
- Not a substitute for actual security
  実際のセキュリティの代替ではありません

---

### ❌ Myth 2: "If there's no robots.txt, I can scrape anything" | 誤解2：「robots.txtがなければ何でもスクレイプできる」

**Reality:**
**現実:**
- Absence of robots.txt doesn't mean unlimited access
  robots.txtの不在は無制限のアクセスを意味しません
- Still need to respect:
  まだ尊重する必要があります：
  - Terms of Service
    利用規約
  - Copyright laws
    著作権法
  - Data protection laws
    データ保護法
  - Server resources
    サーバーリソース

---

### ❌ Myth 3: "Crawl-delay is optional" | 誤解3：「Crawl-delayはオプション」

**Reality:**
**現実:**
- Crawl-delay is an explicit request
  Crawl-delayは明示的なリクエストです
- Ignoring it can:
  無視すると次のことができます：
  - Overload servers
    サーバーを過負荷にする
  - Get your IP blocked
    IPをブロックされる
  - Violate ethical practices
    倫理的慣行に違反する

---

### ❌ Myth 4: "I'm just a student, rules don't apply to me" | 誤解4：「私はただの学生、ルールは私に適用されない」

**Reality:**
**現実:**
- Rules apply to EVERYONE
  ルールはすべての人に適用されます
- Being a student is not an excuse
  学生であることは言い訳になりません
- Use this as opportunity to learn ethical practices!
  これを倫理的慣行を学ぶ機会として使用してください！

---

## Quick Reference Card | クイックリファレンスカード

### How to Check robots.txt | robots.txtの確認方法

```
1. Go to: website.com/robots.txt
2. Read the rules
3. Follow them!
```

---

### Key Directives | 主要なディレクティブ

| Directive | Meaning | Action |
|-----------|---------|--------|
| `User-agent: *` | Applies to all bots | That's you! |
| `Disallow: /path/` | Don't access this path | Avoid it |
| `Allow: /path/` | OK to access | You can scrape |
| `Crawl-delay: 10` | Wait 10 seconds | Add delay in code |

| ディレクティブ | 意味 | アクション |
|-------------|------|----------|
| `User-agent: *` | すべてのボットに適用 | それはあなたです！ |
| `Disallow: /path/` | このパスにアクセスしない | 避ける |
| `Allow: /path/` | アクセスOK | スクレイプできます |
| `Crawl-delay: 10` | 10秒待つ | コードに遅延を追加 |

---

### Decision Flowchart | 決定フローチャート

```
Can I scrape this website?
このウェブサイトをスクレイプできますか？

↓

Check robots.txt
robots.txtを確認

↓

Disallow: / ?
   YES → Don't scrape (or ask permission)
          スクレイプしない（または許可を求める）
   NO → Continue
         続ける

↓

Is the data I want disallowed?
欲しいデータは禁止されていますか？
   YES → Don't scrape that section
          そのセクションをスクレイプしない
   NO → Continue
         続ける

↓

Is there a crawl-delay?
crawl-delayはありますか？
   YES → Implement delay in code
          コードに遅延を実装
   NO → Still add small delay (1-2 sec)
         それでも小さな遅延を追加（1-2秒）

↓

✅ You can scrape (ethically)!
   （倫理的に）スクレイプできます！
```

---

## Practice Exercise | 練習問題

**Given this robots.txt:**
**このrobots.txtが与えられた場合:**

```
User-agent: *
Disallow: /admin/
Disallow: /user/private/
Allow: /user/public/
Crawl-delay: 5

User-agent: Googlebot
Disallow: /admin/
Crawl-delay: 1

Sitemap: https://example.com/sitemap.xml
```

**Questions:**
**質問:**

1. Can you scrape `https://example.com/products/` ?
   `https://example.com/products/`をスクレイプできますか？
   **Answer:** Yes (not disallowed)
   **答え:** はい（禁止されていません）

2. Can you scrape `https://example.com/admin/users` ?
   `https://example.com/admin/users`をスクレイプできますか？
   **Answer:** No (disallowed)
   **答え:** いいえ（禁止）

3. Can you scrape `https://example.com/user/public/profile` ?
   `https://example.com/user/public/profile`をスクレイプできますか？
   **Answer:** Yes (explicitly allowed)
   **答え:** はい（明示的に許可）

4. How long should you wait between requests?
   リクエスト間にどれくらい待つべきですか？
   **Answer:** 5 seconds (crawl-delay for User-agent: *)
   **答え:** 5秒（User-agent: *のcrawl-delay）

5. Where can you find a list of pages to scrape?
   スクレイプするページのリストはどこで見つけられますか？
   **Answer:** https://example.com/sitemap.xml
   **答え:** https://example.com/sitemap.xml

---

*Created for ML-101: Week 4*
*ML-101用に作成：第4週*
