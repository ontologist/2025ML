# Ethical Scraping Checklist
# 倫理的スクレイピングチェックリスト

**Week 4 Reference Material | 第4週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## Introduction | はじめに

**Ethical scraping = Collecting data responsibly, legally, and respectfully**
**倫理的スクレイピング = 責任を持って、合法的に、敬意を持ってデータを収集すること**

**Why ethics matter:**
**なぜ倫理が重要か:**

✅ **Legal compliance** - Avoid legal trouble
   法的遵守 - 法的問題を避ける

✅ **Professional reputation** - Build good practices early
   専門的評判 - 早期に良い実践を構築

✅ **Server health** - Don't harm websites
   サーバーの健全性 - ウェブサイトに害を与えない

✅ **Data quality** - Ethical practices lead to better data
   データ品質 - 倫理的実践はより良いデータにつながる

**This checklist ensures you scrape responsibly!**
**このチェックリストは責任を持ってスクレイプすることを保証します！**

---

## Before You Scrape | スクレイプする前に

### ✅ Legal Checks | 法的チェック

#### 1. Check robots.txt | robots.txtを確認

```
□ Visited website.com/robots.txt
  website.com/robots.txtを訪問

□ Read all relevant User-agent rules
  すべての関連するUser-agentルールを読んだ

□ Identified disallowed paths
  禁止されたパスを特定

□ Noted crawl-delay requirements
  crawl-delay要件に注意

□ Documented findings
  調査結果を文書化
```

**Action items:**
**アクション項目:**
- If `Disallow: /` → Don't scrape OR ask permission
  `Disallow: /`の場合 → スクレイプしないか許可を求める
- If crawl-delay specified → Implement it in code
  crawl-delayが指定されている場合 → コードに実装
- If uncertain → Choose more restrictive interpretation
  不確実な場合 → より制限的な解釈を選択

---

#### 2. Review Terms of Service (ToS) | 利用規約（ToS）を確認

```
□ Located Terms of Service / Terms of Use
  利用規約/使用条件を見つけた

□ Read sections about:
  次のセクションを読んだ：
  □ Automated access / Bots
    自動アクセス/ボット
  □ Data collection
    データ収集
  □ Scraping / Crawling
    スクレイピング/クロール
  □ Commercial use
    商業利用
  □ Intellectual property
    知的財産

□ Documented relevant restrictions
  関連する制限を文書化
```

**Red flags in ToS:**
**ToSの危険信号:**
- ❌ "Automated access is prohibited"
  「自動アクセスは禁止」
- ❌ "No scraping or data mining"
  「スクレイピングやデータマイニングは禁止」
- ❌ "Content may not be reproduced"
  「コンテンツは複製できません」

**If ToS prohibits scraping:**
**ToSがスクレイピングを禁止している場合:**
- Don't scrape
  スクレイプしない
- Contact for permission
  許可を求めて連絡
- Look for alternative data sources
  代替データソースを探す

---

#### 3. Check Copyright and Licensing | 著作権とライセンスを確認

```
□ Identified data ownership
  データ所有権を特定

□ Checked for copyright notices
  著作権通知を確認

□ Reviewed licensing terms (if any)
  ライセンス条項を確認（ある場合）

□ Determined if data is public domain
  データがパブリックドメインかどうかを判断

□ Documented usage rights
  使用権を文書化
```

**Questions to ask:**
**尋ねるべき質問:**
- Who owns this data?
  このデータの所有者は誰ですか？
- Can I use it for my purpose?
  私の目的でそれを使用できますか？
- Do I need attribution?
  帰属は必要ですか？
- Are there restrictions on redistribution?
  再配布に制限はありますか？

---

#### 4. Verify Legal Jurisdiction | 法的管轄を確認

```
□ Identified website's country/region
  ウェブサイトの国/地域を特定

□ Checked relevant laws:
  関連法を確認：
  □ GDPR (Europe) - Personal data protection
    GDPR（ヨーロッパ） - 個人データ保護
  □ CCPA (California) - Consumer privacy
    CCPA（カリフォルニア） - 消費者プライバシー
  □ COPPA (US) - Children's privacy
    COPPA（米国） - 子供のプライバシー
  □ Computer Fraud and Abuse Act (US)
    コンピュータ詐欺および乱用防止法（米国）
  □ Local laws in your jurisdiction
    あなたの管轄の地方法

□ Consulted with legal advisor if needed
  必要に応じて法律顧問に相談
```

**Important:** This is educational guidance, not legal advice. Consult a lawyer for specific situations.
**重要:** これは教育的ガイダンスであり、法的助言ではありません。特定の状況については弁護士に相談してください。

---

### ✅ Ethical Considerations | 倫理的考慮事項

#### 5. Define Your Purpose | 目的を定義

```
□ Clearly stated why I need this data
  このデータが必要な理由を明確に述べた

□ Purpose is:
  目的は：
  □ Educational
    教育的
  □ Research
    研究
  □ Non-commercial
    非商業的
  □ Other: _______________
    その他：_______________

□ Data usage is justified and legitimate
  データ使用は正当化され合法的

□ No malicious intent
  悪意のある意図はない
```

**Good purposes:**
**良い目的:**
✅ Academic research
   学術研究
✅ Learning / Education
   学習/教育
✅ Non-profit projects
   非営利プロジェクト
✅ Personal analysis (not redistributed)
   個人分析（再配布されない）

**Questionable purposes:**
**疑わしい目的:**
❌ Competitive intelligence (copying competitor data)
   競争情報（競合他社のデータをコピー）
❌ Reselling scraped data
   スクレイプしたデータの転売
❌ Spamming / Marketing
   スパム/マーケティング
❌ Price manipulation
   価格操作

---

#### 6. Assess Data Sensitivity | データの機密性を評価

```
□ Data I'm collecting is:
  収集しているデータは：
  □ Public information (accessible to everyone)
    公開情報（誰でもアクセス可能）
  □ Requires login? → Don't scrape
    ログインが必要？→ スクレイプしない
  □ Contains personal information (PII)?
    個人情報（PII）を含む？

□ If collecting PII:
  PIIを収集する場合：
  □ Have legal basis
    法的根拠がある
  □ Have consent (if required)
    同意がある（必要な場合）
  □ Will anonymize data
    データを匿名化する
  □ Have security measures
    セキュリティ対策がある
```

**Personal Identifiable Information (PII) includes:**
**個人を特定できる情報（PII）には次が含まれます:**
- Names
  名前
- Email addresses
  メールアドレス
- Phone numbers
  電話番号
- Addresses
  住所
- Social security numbers
  社会保障番号
- Financial information
  財務情報

**⚠️ Special care required for PII!**
**⚠️ PIIには特別な注意が必要！**

---

#### 7. Check for API Alternative | API代替を確認

```
□ Searched for official API
  公式APIを検索した

□ Checked website documentation
  ウェブサイトのドキュメントを確認した

□ Looked for "Developers" or "API" section
  「開発者」または「API」セクションを探した

□ Contacted website about data access
  データアクセスについてウェブサイトに連絡した

□ Evaluated API vs scraping:
  APIとスクレイピングを評価：
  □ API available? → Use API instead!
    APIが利用可能？→ 代わりにAPIを使用！
  □ API too limited? → Document why scraping needed
    APIが限定的すぎる？→ スクレイピングが必要な理由を文書化
```

**Advantages of using API:**
**API使用の利点:**
✅ Legal and approved
   法的で承認済み
✅ Structured data
   構造化されたデータ
✅ Reliable and maintained
   信頼性があり保守されている
✅ No risk of breaking
   破損のリスクなし

**When scraping is acceptable over API:**
**スクレイピングがAPIよりも許容される場合:**
- API doesn't exist
  APIが存在しない
- API doesn't provide needed data
  APIが必要なデータを提供しない
- API has prohibitive costs
  APIに法外なコストがある
- API has restrictive rate limits
  APIに制限的なレート制限がある

---

### ✅ Technical Preparation | 技術的準備

#### 8. Plan Rate Limiting | レート制限を計画

```
□ Determined appropriate request rate
  適切なリクエスト率を決定

□ Will implement delay between requests
  リクエスト間に遅延を実装する

□ Delay time: _____ seconds
  遅延時間：_____秒

□ Estimated total scraping time
  合計スクレイピング時間を見積もった

□ Schedule: Off-peak hours if possible
  スケジュール：可能であればオフピーク時間

□ Ready to stop if problems detected
  問題が検出された場合に停止する準備ができている
```

**Recommended delays:**
**推奨遅延:**

| Data Size | Requests | Delay |
|-----------|----------|-------|
| Small (<100 pages) | 100 | 2-3 seconds |
| Medium (100-1000) | 1000 | 5 seconds |
| Large (1000+) | 1000+ | 10+ seconds |

| データサイズ | リクエスト | 遅延 |
|------------|----------|------|
| 小（<100ページ） | 100 | 2-3秒 |
| 中（100-1000） | 1000 | 5秒 |
| 大（1000+） | 1000+ | 10秒以上 |

---

#### 9. Prepare User-Agent String | User-Agent文字列を準備

```
□ Created descriptive User-Agent
  説明的なUser-Agentを作成した

□ User-Agent includes:
  User-Agentに含まれるもの：
  □ Bot name
    ボット名
  □ Version number
    バージョン番号
  □ Purpose/Project name
    目的/プロジェクト名
  □ Contact information
    連絡先情報

□ Example format:
  例のフォーマット：
  "BotName/1.0 (ProjectName; ContactEmail)"
```

**Good User-Agent examples:**
**良いUser-Agentの例:**
```
StudentBot/1.0 (ML-101 Course Project; student@university.edu)
ResearchCrawler/0.1 (Academic Study; researcher@institution.org)
DataCollector/2.0 (Non-commercial; contact@email.com)
```

**Bad User-Agent examples:**
**悪いUser-Agentの例:**
```
Mozilla/5.0...  (Pretending to be a browser - deceptive!)
Python-requests  (Generic - not identifiable)
MyBot  (No contact info)
```

---

#### 10. Error Handling Plan | エラー処理計画

```
□ Will handle HTTP errors gracefully
  HTTPエラーを適切に処理する

□ Will respect HTTP status codes:
  HTTPステータスコードを尊重する：
  □ 429 (Too Many Requests) → Stop and wait
    429（リクエストが多すぎる）→ 停止して待つ
  □ 403 (Forbidden) → Stop scraping
    403（禁止）→ スクレイピングを停止
  □ 503 (Service Unavailable) → Wait and retry
    503（サービス利用不可）→ 待って再試行

□ Will implement retry logic with backoff
  バックオフを使用した再試行ロジックを実装する

□ Will log errors for review
  レビュー用にエラーをログに記録する

□ Will stop if blocking detected
  ブロックが検出された場合に停止する
```

---

## During Scraping | スクレイピング中

### ✅ Best Practices | ベストプラクティス

#### 11. Monitor Server Response | サーバー応答を監視

```
□ Checking response times
  応答時間を確認

□ Watching for error messages
  エラーメッセージを監視

□ Monitoring for:
  次を監視：
  □ Slow responses (server struggling)
    遅い応答（サーバーが苦戦）
  □ Timeout errors
    タイムアウトエラー
  □ Blocking / CAPTCHA pages
    ブロック/CAPTCHAページ
  □ 429 status codes
    429ステータスコード

□ Will slow down if issues detected
  問題が検出された場合に減速する

□ Will stop if server shows distress
  サーバーが苦痛を示す場合に停止する
```

**Signs of server distress:**
**サーバー苦痛の兆候:**
- Response times increasing
  応答時間が増加
- Frequent errors
  頻繁なエラー
- CAPTCHA challenges appearing
  CAPTCHAチャレンジが表示
- Connection timeouts
  接続タイムアウト

**Action:** Increase delay or stop temporarily
**アクション:** 遅延を増やすか一時的に停止

---

#### 12. Respect Rate Limits | レート制限を尊重

```
□ Implementing agreed-upon delays
  合意された遅延を実装

□ Using time.sleep() or equivalent
  time.sleep()または同等を使用

□ Tracking request count
  リクエスト数を追跡

□ Not using multiple IPs to bypass limits
  制限を回避するために複数のIPを使用しない

□ Not using multiple threads excessively
  過度に複数のスレッドを使用しない
```

**Code example:**
**コードの例:**
```python
import time

for url in urls:
    response = requests.get(url)
    process_data(response)
    time.sleep(5)  # 5 second delay
```

---

#### 13. Cache Responses | 応答をキャッシュ

```
□ Saving scraped data locally
  スクレイプされたデータをローカルに保存

□ Not re-requesting same pages
  同じページを再リクエストしない

□ Implementing cache mechanism
  キャッシュメカニズムを実装

□ Reusing cached data when possible
  可能な場合はキャッシュされたデータを再利用
```

**Benefits:**
**利点:**
✅ Reduces server load
   サーバー負荷を削減
✅ Faster development/debugging
   より速い開発/デバッグ
✅ Avoids redundant requests
   冗長なリクエストを回避

---

#### 14. Handle Errors Gracefully | エラーを適切に処理

```
□ Using try-except blocks
  try-exceptブロックを使用

□ Logging errors with details
  詳細とともにエラーをログに記録

□ Not crashing on single failure
  単一の失敗でクラッシュしない

□ Implementing exponential backoff
  指数バックオフを実装

□ Respecting 429 responses
  429応答を尊重
```

**Code example:**
**コードの例:**
```python
import time
import requests

def scrape_with_retry(url, max_retries=3):
    for attempt in range(max_retries):
        try:
            response = requests.get(url)
            if response.status_code == 429:
                wait_time = 2 ** attempt  # Exponential backoff
                print(f"Rate limited. Waiting {wait_time}s...")
                time.sleep(wait_time)
                continue
            response.raise_for_status()
            return response
        except requests.RequestException as e:
            print(f"Error: {e}")
            if attempt == max_retries - 1:
                return None
            time.sleep(2 ** attempt)
    return None
```

---

## After Scraping | スクレイピング後

### ✅ Data Handling | データ処理

#### 15. Secure Data Storage | 安全なデータ保存

```
□ Data stored securely
  データを安全に保存

□ If contains PII:
  PIIを含む場合：
  □ Encrypted storage
    暗号化されたストレージ
  □ Access controls
    アクセス制御
  □ No public sharing
    公開共有なし

□ Documented data retention period
  データ保持期間を文書化

□ Plan for data deletion when done
  完了時のデータ削除計画
```

---

#### 16. Attribution and Citation | 帰属と引用

```
□ Documented data source
  データソースを文書化

□ Will provide attribution in:
  次で帰属を提供する：
  □ Project documentation
    プロジェクトドキュメント
  □ Research paper
    研究論文
  □ Presentation slides
    プレゼンテーションスライド
  □ Code comments
    コードコメント

□ Citation format prepared
  引用フォーマットを準備

□ Followed any required attribution format
  必要な帰属フォーマットに従った
```

**Citation example:**
**引用の例:**
```
Data source: Company listings from [Website Name]
Retrieved: [Date]
URL: [website.com]
Access method: Web scraping (compliant with robots.txt)
```

---

#### 17. Anonymization (if needed) | 匿名化（必要な場合）

```
□ Identified personal data in dataset
  データセット内の個人データを特定

□ Anonymization techniques applied:
  適用された匿名化技術：
  □ Removed names
    名前を削除
  □ Removed email addresses
    メールアドレスを削除
  □ Removed phone numbers
    電話番号を削除
  □ Generalized locations (city instead of address)
    場所を一般化（住所の代わりに都市）
  □ Aggregated sensitive data
    機密データを集約

□ Verified no individuals identifiable
  個人が特定できないことを確認

□ Documented anonymization process
  匿名化プロセスを文書化
```

---

#### 18. Data Quality Verification | データ品質検証

```
□ Checked for scraping errors
  スクレイピングエラーを確認

□ Verified data completeness
  データの完全性を確認

□ Removed duplicate entries
  重複エントリを削除

□ Validated data accuracy
  データの正確性を検証

□ Documented any data quality issues
  データ品質の問題を文書化
```

---

### ✅ Documentation | 文書化

#### 19. Document Your Process | プロセスを文書化

```
□ Created documentation including:
  次を含むドキュメントを作成：
  □ Purpose of scraping
    スクレイピングの目的
  □ Data source URL
    データソースURL
  □ Date(s) of collection
    収集日
  □ robots.txt compliance
    robots.txtコンプライアンス
  □ ToS compliance
    ToSコンプライアンス
  □ Rate limiting used
    使用されたレート制限
  □ Any permissions obtained
    取得した許可
  □ Data fields collected
    収集されたデータフィールド
  □ Data storage location
    データ保存場所
  □ Anonymization applied
    適用された匿名化

□ Documentation is accessible
  ドキュメントがアクセス可能

□ Supervisor/instructor aware
  スーパーバイザー/インストラクターが認識
```

---

#### 20. Final Ethical Review | 最終倫理レビュー

```
□ All legal requirements met
  すべての法的要件を満たした

□ No harm caused to website
  ウェブサイトに害を与えていない

□ Data collection justified
  データ収集が正当化された

□ Privacy respected
  プライバシーを尊重

□ Attribution planned
  帰属を計画

□ Comfortable defending approach
  アプローチを擁護できる

□ Would I be OK if website owner found out?
  ウェブサイト所有者が知ったら大丈夫？
  □ YES → Proceed
    はい → 進む
  □ NO → Reconsider approach
    いいえ → アプローチを再検討
```

---

## Red Flags - Stop Immediately | 危険信号 - すぐに停止

**If ANY of these occur, STOP scraping:**
**これらのいずれかが発生した場合、スクレイピングを停止してください:**

### 🚫 Legal Red Flags | 法的危険信号

```
□ robots.txt says Disallow: /
  robots.txtがDisallow: /と言っている

□ ToS explicitly prohibits scraping
  ToSが明示的にスクレイピングを禁止

□ Login required to access data
  データにアクセスするためにログインが必要

□ CAPTCHA appears
  CAPTCHAが表示される

□ Received cease and desist notice
  停止通知を受け取った

□ IP address blocked
  IPアドレスがブロックされた
```

---

### 🚫 Technical Red Flags | 技術的危険信号

```
□ Server responses slowing significantly
  サーバー応答が大幅に遅くなっている

□ Receiving 429 (Too Many Requests) errors
  429（リクエストが多すぎる）エラーを受信

□ Frequent timeouts
  頻繁なタイムアウト

□ Connection refused errors
  接続拒否エラー

□ Unusual error patterns
  異常なエラーパターン
```

---

### 🚫 Ethical Red Flags | 倫理的危険信号

```
□ Collecting data I don't actually need
  実際には必要ないデータを収集している

□ Scraping personal information unnecessarily
  不必要に個人情報をスクレイピング

□ Feeling uncomfortable about the process
  プロセスについて不快に感じている

□ Can't justify scraping to others
  他の人にスクレイピングを正当化できない

□ Would hide this if website owner asked
  ウェブサイト所有者が尋ねたらこれを隠す
```

**If you see red flags: STOP and reassess!**
**危険信号が見られる場合：停止して再評価！**

---

## Educational Use Guidelines | 教育用使用ガイドライン

### ✅ For This Course | このコース用

**Acceptable:**
**許容可能:**

✅ Scraping for learning purposes
   学習目的のスクレイピング

✅ Small-scale data collection (<1000 records)
   小規模データ収集（<1000レコード）

✅ Following all robots.txt rules
   すべてのrobots.txtルールに従う

✅ Implementing rate limiting
   レート制限の実装

✅ Using data only for course project
   コースプロジェクトのみにデータを使用

✅ Proper attribution in assignments
   課題での適切な帰属

✅ Deleting data after course completion
   コース完了後のデータ削除

---

**Not Acceptable:**
**許容できない:**

❌ Ignoring robots.txt
   robots.txtを無視

❌ Scraping websites that explicitly forbid it
   明示的に禁止しているウェブサイトをスクレイピング

❌ Overwhelming servers with requests
   リクエストでサーバーを圧倒

❌ Collecting personal data unnecessarily
   不必要に個人データを収集

❌ Sharing scraped data publicly
   スクレイプされたデータを公開で共有

❌ Using data for commercial purposes
   商業目的でデータを使用

❌ Pretending to be a regular browser
   通常のブラウザのふりをする

---

## Quick Decision Framework | クイック決定フレームワーク

**Before scraping, ask yourself:**
**スクレイピングする前に、自問してください:**

### The Three Questions | 3つの質問

**1. Is it LEGAL?**
**1. それは合法ですか？**
```
□ robots.txt allows it?
  robots.txtが許可している？
□ ToS allows it?
  ToSが許可している？
□ No laws prohibit it?
  法律が禁止していない？
□ No login required?
  ログインが不要？

All YES → Continue to Question 2
すべてYES → 質問2に続く
Any NO → Don't scrape
1つでもNO → スクレイプしない
```

---

**2. Is it ETHICAL?**
**2. それは倫理的ですか？**
```
□ Have legitimate purpose?
  正当な目的がある？
□ Will respect server resources?
  サーバーリソースを尊重する？
□ Will protect privacy?
  プライバシーを保護する？
□ Will provide attribution?
  帰属を提供する？
□ Comfortable being transparent about it?
  それについて透明であることに快適？

All YES → Continue to Question 3
すべてYES → 質問3に続く
Any NO → Reconsider
1つでもNO → 再検討
```

---

**3. Is it NECESSARY?**
**3. それは必要ですか？**
```
□ No API available?
  APIが利用できない？
□ No alternative data source?
  代替データソースがない？
□ No pre-existing dataset?
  既存のデータセットがない？
□ Data actually needed for project?
  プロジェクトに実際に必要なデータ？

All YES → Proceed with scraping (ethically)
すべてYES → スクレイピングを進める（倫理的に）
Any NO → Use alternative instead
1つでもNO → 代わりに代替を使用
```

---

## Master Checklist | マスターチェックリスト

**Complete this before scraping any website:**
**任意のウェブサイトをスクレイプする前にこれを完了してください:**

### Pre-Scraping | スクレイピング前

```
□ 1. Checked robots.txt
     robots.txtを確認
□ 2. Reviewed Terms of Service
     利用規約を確認
□ 3. Checked copyright/licensing
     著作権/ライセンスを確認
□ 4. Verified legal jurisdiction
     法的管轄を確認
□ 5. Defined clear purpose
     明確な目的を定義
□ 6. Assessed data sensitivity
     データの機密性を評価
□ 7. Checked for API alternative
     API代替を確認
□ 8. Planned rate limiting
     レート制限を計画
□ 9. Prepared User-Agent string
     User-Agent文字列を準備
□ 10. Created error handling plan
      エラー処理計画を作成
```

---

### During Scraping | スクレイピング中

```
□ 11. Monitoring server responses
      サーバー応答を監視
□ 12. Respecting rate limits
      レート制限を尊重
□ 13. Caching responses
      応答をキャッシュ
□ 14. Handling errors gracefully
      エラーを適切に処理
```

---

### Post-Scraping | スクレイピング後

```
□ 15. Secured data storage
      安全なデータ保存
□ 16. Provided attribution
      帰属を提供
□ 17. Anonymized data (if needed)
      データを匿名化（必要な場合）
□ 18. Verified data quality
      データ品質を確認
□ 19. Documented process
      プロセスを文書化
□ 20. Completed ethical review
      倫理レビューを完了
```

**All boxes checked? You're ready to scrape ethically!**
**すべてのボックスにチェックが入っていますか？倫理的にスクレイプする準備ができています！**

---

## When in Doubt | 疑問がある場合

**If you're unsure about anything:**
**何かについて不確実な場合:**

1. **Don't proceed** - Better safe than sorry
   **進めない** - 安全第一

2. **Ask your instructor** - Get guidance
   **インストラクターに尋ねる** - ガイダンスを得る

3. **Contact website owner** - Request permission
   **ウェブサイト所有者に連絡** - 許可をリクエスト

4. **Look for alternatives** - Find another data source
   **代替を探す** - 別のデータソースを見つける

5. **Document your decision** - Explain your reasoning
   **決定を文書化** - 理由を説明

**Remember: Ethical data collection is a fundamental skill in data science!**
**覚えておいてください：倫理的なデータ収集はデータサイエンスの基本的なスキルです！**

---

*Created for ML-101: Week 4*
*ML-101用に作成：第4週*
