# robots.txt Examples and Analysis Guide
# robots.txt の実例と分析ガイド

**Week 4 Web Scraping Training Material**
**Week 4 Webスクレイピング学習教材**

---

## Introduction | はじめに

The `robots.txt` file is a text file placed in the root directory of a website that tells web crawlers and scraping bots which pages they are allowed or not allowed to access. Before scraping any website, you should **always check the robots.txt file** to ensure you're complying with the site's policies.

`robots.txt`ファイルは、Webサイトのルートディレクトリに配置されるテキストファイルで、Webクローラーやスクレイピングボットに対して、アクセスが許可されているページと禁止されているページを指示します。どのWebサイトをスクレイピングする前にも、**必ずrobots.txtファイルを確認**し、サイトのポリシーに従うようにしてください。

### How to Access robots.txt | robots.txtへのアクセス方法

Simply append `/robots.txt` to the domain:
- `https://www.example.com/robots.txt`
- `https://www.mynavi.jp/robots.txt`
- `https://www.linkedin.com/robots.txt`

ドメインに`/robots.txt`を追加するだけです。

---

## Example 1: Mynavi.jp (Japanese Job Portal)
## 例1: マイナビ（日本の求人ポータル）

**URL:** `https://www.mynavi.jp/robots.txt`

### robots.txt Content:
```
User-agent: *
Disallow: /admin/
Disallow: /api/
Disallow: /private/
Disallow: /cgi-bin/
Disallow: /search?
Allow: /company/
Allow: /job/
Crawl-delay: 10

User-agent: Googlebot
Disallow: /admin/
Allow: /

User-agent: CCBot
Disallow: /
```

### Explanation | 解説:

**User-agent: \*** - Applies to all bots
**User-agent: \*** - すべてのボットに適用

- ❌ **Disallow: /admin/** - Admin pages are forbidden | 管理ページは禁止
- ❌ **Disallow: /api/** - API endpoints are forbidden | APIエンドポイントは禁止
- ❌ **Disallow: /private/** - Private directories forbidden | プライベートディレクトリ禁止
- ❌ **Disallow: /search?** - Search pages with parameters forbidden | パラメータ付き検索ページは禁止
- ✅ **Allow: /company/** - Company pages are allowed | 企業ページは許可
- ✅ **Allow: /job/** - Job listing pages are allowed | 求人ページは許可
- ⏱️ **Crawl-delay: 10** - Wait 10 seconds between requests | リクエスト間に10秒待機

**User-agent: Googlebot** - Special rules for Google's crawler
- ❌ **Disallow: /admin/** - Still can't access admin | 管理ページはアクセス不可
- ✅ **Allow: /** - Everything else is allowed | その他はすべて許可

**User-agent: CCBot** - Common Crawl bot
- ❌ **Disallow: /** - Completely blocked | 完全にブロック

### Interpretation for Scraping | スクレイピングにおける解釈:

- ✅ **You CAN scrape:** Job listings (/job/) and company pages (/company/)
- ❌ **You CANNOT scrape:** Admin pages, API endpoints, search results
- ⚠️ **Rate limiting:** Must wait 10 seconds between requests
- 💡 **Best practice:** Follow the crawl-delay to avoid being blocked

---

## Example 2: Indeed.com (Global Job Portal)
## 例2: Indeed（グローバル求人ポータル）

**URL:** `https://www.indeed.com/robots.txt`

### robots.txt Content:
```
User-agent: *
Disallow: /rc/
Disallow: /rpc/
Disallow: /preferences/
Crawl-delay: 5
Request-rate: 1/5

User-agent: Googlebot
Allow: /

User-agent: bingbot
Allow: /

User-agent: GPTBot
Disallow: /

User-agent: ChatGPT-User
Disallow: /
```

### Explanation | 解説:

**User-agent: \*** - General rules for all bots
- ❌ **Disallow: /rc/** - Remote call endpoints forbidden | リモートコールエンドポイント禁止
- ❌ **Disallow: /rpc/** - RPC endpoints forbidden | RPCエンドポイント禁止
- ❌ **Disallow: /preferences/** - User preference pages forbidden | ユーザー設定ページ禁止
- ⏱️ **Crawl-delay: 5** - 5 second delay between requests | リクエスト間5秒の遅延
- ⏱️ **Request-rate: 1/5** - Maximum 1 request every 5 seconds | 5秒ごとに最大1リクエスト

**Special Bots:**
- ✅ **Googlebot & Bingbot:** Full access allowed | 完全アクセス許可
- ❌ **GPTBot & ChatGPT-User:** Completely blocked (AI training bots) | 完全ブロック（AI学習ボット）

### Interpretation for Scraping | スクレイピングにおける解釈:

- ✅ **You CAN scrape:** Most job listings and public pages
- ❌ **You CANNOT scrape:** Backend API endpoints, user settings
- ⚠️ **Rate limiting:** Strict 5-second delay required
- 💡 **Note:** AI training bots are explicitly blocked

---

## Example 3: LinkedIn.com (Professional Network)
## 例3: LinkedIn（プロフェッショナルネットワーク）

**URL:** `https://www.linkedin.com/robots.txt`

### robots.txt Content:
```
User-agent: *
Disallow: /

User-agent: LinkedInBot
Allow: /

User-agent: Googlebot
Allow: /$
Allow: /company/*
Allow: /jobs/*
Disallow: /in/*/connections
Disallow: /in/*/followers
Disallow: /messaging/
```

### Explanation | 解説:

**User-agent: \*** - Default rule
- ❌ **Disallow: /** - Everything is blocked by default | すべてがデフォルトでブロック

**User-agent: LinkedInBot** - LinkedIn's own crawler
- ✅ **Allow: /** - Full access for LinkedIn's bot | LinkedIn自身のボットは完全アクセス

**User-agent: Googlebot** - Selective access for Google
- ✅ **Allow: /$** - Homepage allowed | ホームページ許可
- ✅ **Allow: /company/\*** - Company pages allowed | 企業ページ許可
- ✅ **Allow: /jobs/\*** - Job listings allowed | 求人ページ許可
- ❌ **Disallow: /in/\*/connections** - User connections forbidden | ユーザー接続禁止
- ❌ **Disallow: /in/\*/followers** - Follower lists forbidden | フォロワーリスト禁止
- ❌ **Disallow: /messaging/** - Messages forbidden | メッセージ禁止

### Interpretation for Scraping | スクレイピングにおける解釈:

- ❌ **General scraping:** Effectively prohibited for most bots | ほとんどのボットには事実上禁止
- ⚠️ **Legal risk:** LinkedIn actively pursues legal action against scrapers
- 💡 **Alternative:** Use LinkedIn's official API instead
- 🚫 **Recommendation:** Do NOT scrape LinkedIn without permission

---

## Example 4: Very Permissive robots.txt
## 例4: 非常に寛容なrobots.txt

### robots.txt Content:
```
User-agent: *
Allow: /
Crawl-delay: 1
```

### Explanation | 解説:

- ✅ **Allow: /** - Everything is allowed | すべて許可
- ⏱️ **Crawl-delay: 1** - Minimal 1-second delay | 最小限の1秒遅延

### Interpretation | 解釈:

This is an **open website** that welcomes crawlers and scrapers, but still requests a polite 1-second delay to avoid overloading the server.

これは、クローラーやスクレイパーを歓迎する**オープンなWebサイト**ですが、サーバーの過負荷を避けるため、1秒の遅延を要求しています。

**Examples of such sites:**
- Open data portals (e.g., data.gov)
- Public archives
- Open source documentation

**このようなサイトの例:**
- オープンデータポータル（例：data.gov）
- 公開アーカイブ
- オープンソースドキュメント

---

## Example 5: Very Restrictive robots.txt
## 例5: 非常に制限的なrobots.txt

### robots.txt Content:
```
User-agent: *
Disallow: /

User-agent: Googlebot
Disallow: /

User-agent: bingbot
Disallow: /

Sitemap: https://www.example.com/sitemap.xml
```

### Explanation | 解説:

- ❌ **Disallow: /** for all bots - Complete blocking | すべてのボットで完全ブロック
- 🗺️ **Sitemap provided** - But access is denied | サイトマップは提供されているがアクセスは拒否

### Interpretation | 解釈:

This website **completely prohibits all crawling and scraping**. Even major search engines like Google and Bing are blocked.

このWebサイトは、**すべてのクローリングとスクレイピングを完全に禁止**しています。GoogleやBingなどの主要な検索エンジンもブロックされています。

**Reasons for such restrictions:**
- Private internal applications
- Membership-only content
- Legal or compliance requirements
- High security environments

**このような制限の理由:**
- プライベートな内部アプリケーション
- メンバー専用コンテンツ
- 法的またはコンプライアンス要件
- 高セキュリティ環境

---

## Example 6: robots.txt with Crawl-delay Directive
## 例6: Crawl-delay指令付きrobots.txt

### robots.txt Content:
```
User-agent: *
Crawl-delay: 30
Disallow: /admin/
Disallow: /user/
Allow: /products/
Allow: /blog/

User-agent: Googlebot
Crawl-delay: 10

User-agent: BadBot
Disallow: /

Sitemap: https://www.example.com/sitemap.xml
Sitemap: https://www.example.com/blog-sitemap.xml
```

### Explanation | 解説:

**User-agent: \*** - General bots
- ⏱️ **Crawl-delay: 30** - Wait 30 seconds between requests | 30秒間隔でリクエスト
- ❌ **Disallow: /admin/** - Admin area blocked | 管理エリアブロック
- ❌ **Disallow: /user/** - User profiles blocked | ユーザープロフィールブロック
- ✅ **Allow: /products/** - Product pages allowed | 製品ページ許可
- ✅ **Allow: /blog/** - Blog posts allowed | ブログ投稿許可

**User-agent: Googlebot**
- ⏱️ **Crawl-delay: 10** - Faster crawling allowed for Google (10 sec) | Googleには高速クローリング許可（10秒）

**User-agent: BadBot**
- ❌ **Disallow: /** - Specific bot completely blocked | 特定のボットを完全ブロック

### Interpretation | 解釈:

This demonstrates **differential treatment** of bots:
- Most bots: 30-second delay, limited access
- Google: 10-second delay, same access rules
- Known bad bots: Completely blocked

これは、ボットの**差別的扱い**を示しています:
- ほとんどのボット: 30秒遅延、限定的アクセス
- Google: 10秒遅延、同じアクセスルール
- 既知の悪質ボット: 完全ブロック

---

## Key Directives Summary | 主要な指令のまとめ

| Directive | Meaning | Example |
|-----------|---------|---------|
| **User-agent** | Specifies which bot the rules apply to | `User-agent: Googlebot` |
| **Disallow** | Path that bots must NOT access | `Disallow: /admin/` |
| **Allow** | Path that bots CAN access (overrides Disallow) | `Allow: /public/` |
| **Crawl-delay** | Seconds to wait between requests | `Crawl-delay: 10` |
| **Sitemap** | Location of the XML sitemap | `Sitemap: https://site.com/sitemap.xml` |
| **Request-rate** | Max requests per time period | `Request-rate: 1/10` (1 req per 10 sec) |

| 指令 | 意味 | 例 |
|------|------|-----|
| **User-agent** | ルールが適用されるボットを指定 | `User-agent: Googlebot` |
| **Disallow** | ボットがアクセスしてはいけないパス | `Disallow: /admin/` |
| **Allow** | ボットがアクセスできるパス（Disallowを上書き） | `Allow: /public/` |
| **Crawl-delay** | リクエスト間の待機秒数 | `Crawl-delay: 10` |
| **Sitemap** | XMLサイトマップの場所 | `Sitemap: https://site.com/sitemap.xml` |
| **Request-rate** | 時間あたりの最大リクエスト数 | `Request-rate: 1/10`（10秒ごとに1リクエスト） |

---

## Best Practices for Web Scraping | Webスクレイピングのベストプラクティス

### ✅ DO (すべきこと):

1. **Always check robots.txt first** | **必ず最初にrobots.txtを確認**
2. **Respect crawl-delay directives** | **crawl-delay指令を尊重**
3. **Identify your bot** with a proper User-Agent | **適切なUser-Agentでボットを識別**
4. **Cache data** to minimize requests | **リクエストを最小化するためにデータをキャッシュ**
5. **Scrape during off-peak hours** | **オフピーク時にスクレイピング**
6. **Use official APIs** when available | **利用可能な場合は公式APIを使用**

### ❌ DON'T (してはいけないこと):

1. **Don't ignore robots.txt** | **robots.txtを無視しない**
2. **Don't overwhelm servers** with rapid requests | **急速なリクエストでサーバーを圧倒しない**
3. **Don't scrape personal/private data** | **個人/プライベートデータをスクレイピングしない**
4. **Don't use fake User-Agents** to bypass restrictions | **制限を回避するために偽のUser-Agentを使用しない**
5. **Don't scrape if explicitly prohibited** | **明示的に禁止されている場合はスクレイピングしない**
6. **Don't violate Terms of Service** | **利用規約に違反しない**

---

## Python Code: Checking robots.txt | Pythonコード: robots.txtの確認

```python
from urllib.robotparser import RobotFileParser
from urllib.parse import urljoin

def can_fetch(url, user_agent='*'):
    """
    Check if a URL can be scraped according to robots.txt
    robots.txtに従ってURLをスクレイピングできるかチェック
    """
    # Parse the base URL
    from urllib.parse import urlparse
    parsed = urlparse(url)
    base_url = f"{parsed.scheme}://{parsed.netloc}"
    robots_url = urljoin(base_url, '/robots.txt')

    # Create parser
    rp = RobotFileParser()
    rp.set_url(robots_url)
    rp.read()

    # Check if allowed
    return rp.can_fetch(user_agent, url)

# Example usage
url = "https://www.mynavi.jp/company/12345"
if can_fetch(url):
    print(f"✅ Scraping allowed for: {url}")
else:
    print(f"❌ Scraping NOT allowed for: {url}")
```

---

## Legal and Ethical Considerations | 法的・倫理的考慮事項

### Important Reminders:

1. **robots.txt is NOT legally binding**, but violating it may:
   - Lead to IP blocking
   - Violate Terms of Service (which IS legally binding)
   - Result in legal action in some jurisdictions

2. **In Japan**, web scraping exists in a legal gray area. Be cautious with:
   - Personal information (個人情報保護法 - Personal Information Protection Law)
   - Copyright-protected content (著作権法 - Copyright Law)
   - Computer fraud (不正アクセス禁止法 - Unauthorized Access Prevention Law)

3. **Always prefer official APIs** over scraping

4. **When in doubt, seek permission** from the website owner

### 重要な注意事項:

1. **robots.txtは法的拘束力はありません**が、違反すると:
   - IPブロックにつながる
   - 利用規約違反（これは法的拘束力あり）
   - 一部の管轄区域で法的措置につながる

2. **日本では**、Webスクレイピングは法的グレーゾーンです。以下に注意:
   - 個人情報（個人情報保護法）
   - 著作権保護コンテンツ（著作権法）
   - コンピュータ詐欺（不正アクセス禁止法）

3. **常に公式APIを優先**

4. **疑問がある場合は、Webサイト所有者の許可を求める**

---

## Exercise Questions | 演習問題

1. What does `Disallow: /` mean? | `Disallow: /`は何を意味しますか？

2. If `Crawl-delay: 20` is specified, how long should you wait between requests? | `Crawl-delay: 20`が指定されている場合、リクエスト間でどのくらい待つべきですか？

3. Can you scrape a website if robots.txt blocks all bots? Why or why not? | robots.txtがすべてのボットをブロックしている場合、Webサイトをスクレイピングできますか？その理由は？

4. What is the purpose of the `User-agent` directive? | `User-agent`指令の目的は何ですか？

5. Write Python code to check if `https://example.com/jobs/` can be scraped. | `https://example.com/jobs/`がスクレイピング可能かチェックするPythonコードを書いてください。

---

**End of Document | 資料終わり**
**Week 4 Training Material - ML-101 Course**
**Created for educational purposes | 教育目的で作成**
