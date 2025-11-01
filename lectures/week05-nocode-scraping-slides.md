# Week 5: No-Code Web Scraping Tools
# 第5週：ノーコードWebスクレイピングツール

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Week 5 - No-Code Scraping Tools
## スライド1：第5週 - ノーコードスクレイピングツール

**Topic:** No-Code Web Scraping Tools
**トピック:** ノーコードWebスクレイピングツール

**Today's Objectives | 今日の目標:**
- Understand what no-code scraping tools are | ノーコードスクレイピングツールとは何かを理解する
- Learn why they're useful for beginners | 初心者にとってなぜ有用かを学ぶ
- See how point-and-click scraping works | ポイント＆クリックスクレイピングの仕組みを見る
- Preview the tools we'll use today | 今日使用するツールをプレビューする

---

## Slide 2: What Are No-Code Scraping Tools?
## スライド2：ノーコードスクレイピングツールとは？

**No-Code Tools = Scraping Without Programming**
**ノーコードツール = プログラミングなしのスクレイピング**

### Traditional Scraping vs No-Code | 従来のスクレイピング vs ノーコード

**Traditional (With Code):**
```python
import requests
from bs4 import BeautifulSoup
# ... many lines of code ...
```
- Requires programming knowledge | プログラミング知識が必要
- More flexible but complex | より柔軟だが複雑

**No-Code (Point & Click):**
- Click on data you want | 必要なデータをクリック
- Tool learns the pattern | ツールがパターンを学習
- Export to CSV | CSVにエクスポート
- No programming required! | プログラミング不要！

---

## Slide 3: Why No-Code Tools?
## スライド3：なぜノーコードツール？

### Perfect for Getting Started | 始めるのに最適

✅ **Fast Setup** | 速いセットアップ
- Install and start in minutes | 数分でインストールして開始
- No environment configuration | 環境設定不要

✅ **Intuitive Interface** | 直感的なインターフェース
- Visual, point-and-click | ビジュアル、ポイント＆クリック
- See exactly what you're scraping | スクレイピングしているものを正確に確認

✅ **Good for Simple Tasks** | シンプルなタスクに適している
- Company listings | 企業リスト
- Product catalogs | 製品カタログ
- Job postings | 求人投稿

✅ **Great Learning Tool** | 優れた学習ツール
- Understand scraping concepts | スクレイピングコンセプトを理解
- See HTML structure visually | HTML構造を視覚的に見る

**Later:** We'll also learn Python scraping for more complex tasks!
**後で:** より複雑なタスクのためにPythonスクレイピングも学びます！

---

## Slide 4: Popular No-Code Scraping Tools
## スライド4：人気のノーコードスクレイピングツール

### Tools We Might Use | 使用する可能性のあるツール

**1. Octoparse**
- Desktop application | デスクトップアプリケーション
- User-friendly interface | ユーザーフレンドリーなインターフェース
- Free tier available | 無料ティア利用可能

**2. ParseHub**
- Handles complex websites | 複雑なウェブサイトを処理
- Good for pagination | ページネーションに適している
- Free for small projects | 小規模プロジェクトには無料

**3. Web Scraper (Chrome Extension)**
- Works in browser | ブラウザで動作
- Quick setup | クイックセットアップ
- Good for simple scraping | シンプルなスクレイピングに適している

**Today:** The bot will recommend the best tool for your system!
**今日:** ボットがあなたのシステムに最適なツールを推奨します！

---

## Slide 5: How No-Code Scraping Works
## スライド5：ノーコードスクレイピングの仕組み

### The Point-and-Click Process | ポイント＆クリックプロセス

```
1. LOAD WEBSITE    →    2. SELECT DATA    →    3. TOOL LEARNS    →    4. EXPORT
   ウェブサイトロード      データ選択            ツール学習            エクスポート

🌐 Enter URL       🖱️ Click elements    🤖 Pattern found    💾 Save CSV
```

**Step-by-Step:**

1. **Open the tool and enter website URL** | ツールを開いてウェブサイトURLを入力
   - Tool loads the website | ツールがウェブサイトをロード

2. **Click on data elements you want** | 必要なデータ要素をクリック
   - Company name, industry, description | 企業名、業界、説明

3. **Tool identifies the pattern** | ツールがパターンを特定
   - "Oh, you want all company names!" | 「ああ、すべての企業名が必要なのですね！」

4. **Run the scraper** | スクレイパーを実行
   - Collects all matching data | すべての一致するデータを収集

5. **Export to CSV or Excel** | CSVまたはExcelにエクスポート
   - Ready for analysis! | 分析の準備完了！

---

## Slide 6: Example - Scraping Company Data
## スライド6：例 - 企業データのスクレイピング

### Visual Walkthrough | ビジュアルウォークスルー

**What You See on Screen:**

```
[Company Listing Page]

ABC Corporation
Industry: Technology | Employees: 500
Description: Leading software company...

XYZ Inc
Industry: Finance | Employees: 1200
Description: Innovative financial services...
```

**What You Do:**
1. Click on "ABC Corporation" | 「ABC Corporation」をクリック
2. Tool asks: "Select another similar item" | ツールが尋ねる：「別の類似アイテムを選択」
3. Click on "XYZ Inc" | 「XYZ Inc」をクリック
4. Tool recognizes pattern: "All company names!" | ツールがパターンを認識：「すべての企業名！」
5. Repeat for industry, employees, description | 業界、従業員、説明に対して繰り返す

**Result:** CSV file with all company data organized!
**結果:** すべての企業データが整理されたCSVファイル！

---

## Slide 7: Handling Pagination
## スライド7：ページネーションの処理

**Pagination = Multiple Pages of Results**
**ページネーション = 複数ページの結果**

### Why This Matters | なぜ重要か

Most websites don't show all data on one page:
ほとんどのウェブサイトは1ページにすべてのデータを表示しません：

```
Page 1: Companies 1-20
Page 2: Companies 21-40
Page 3: Companies 41-60
...
```

### No-Code Tools Handle This! | ノーコードツールがこれを処理！

**Setup Pagination:**
1. Scrape data from first page | 最初のページからデータをスクレイプ
2. Tell tool to click "Next Page" button | ツールに「次のページ」ボタンをクリックするよう指示
3. Tool repeats on all pages | ツールがすべてのページで繰り返す
4. Combines all data automatically | すべてのデータを自動的に結合

**Today's Activity:** You'll practice this!
**今日のアクティビティ:** これを練習します！

---

## Slide 8: Best Practices for No-Code Scraping
## スライド8：ノーコードスクレイピングのベストプラクティス

### Do's and Don'ts | すべきこととすべきでないこと

**✅ DO:**
- **Start with simple websites** | シンプルなウェブサイトから始める
  - Practice sites first | まず練習サイト

- **Test on small samples** | 小さなサンプルでテスト
  - Scrape 5-10 items first | まず5-10アイテムをスクレイプ

- **Verify data quality** | データ品質を検証
  - Check if all fields have data | すべてのフィールドにデータがあるか確認

- **Save your workflows** | ワークフローを保存
  - Reuse for similar sites | 類似サイトに再利用

**❌ DON'T:**
- **Skip ethical checks** | 倫理チェックをスキップする
  - Always verify robots.txt and ToS! | 常にrobots.txtとToSを検証！

- **Scrape too aggressively** | 積極的にスクレイプしすぎる
  - Respect rate limits | レート制限を尊重

---

## Slide 9: Exporting and Using Scraped Data
## スライド9：スクレイプされたデータのエクスポートと使用

### Getting Data Ready for Analysis | 分析のためのデータ準備

**Export Formats | エクスポート形式**

**CSV (Recommended)**
- Opens in Excel, Google Sheets | Excel、Googleスプレッドシートで開く
- Easy to import into Python | Pythonに簡単にインポート
- Compatible with ML tools | MLツールと互換性

**JSON**
- Structured data format | 構造化データ形式
- Good for nested information | ネストされた情報に適している

**Excel**
- Familiar spreadsheet format | 馴染みのあるスプレッドシート形式
- Good for manual inspection | 手動検査に適している

**Next Steps After Scraping:**
1. Export to CSV | CSVにエクスポート
2. Open in spreadsheet to verify | スプレッドシートで開いて検証
3. Import into Python for cleaning (Week 7) | クリーニングのためにPythonにインポート（第7週）
4. Use for ML training (Weeks 10-12) | MLトレーニングに使用（第10-12週）

---

## Slide 10: Troubleshooting Common Issues
## スライド10：一般的な問題のトラブルシューティング

### What to Do When Things Go Wrong | うまくいかないときにすべきこと

**Problem 1: Tool Can't Find Data** | ツールがデータを見つけられない
- ✓ Make sure you clicked similar items to establish pattern
- ✓ パターンを確立するために類似アイテムをクリックしたことを確認

**Problem 2: Getting Wrong Data** | 間違ったデータを取得している
- ✓ Use selector editing to be more specific
- ✓ より具体的にするためにセレクター編集を使用

**Problem 3: Missing Data from Some Rows** | 一部の行からデータが欠落
- ✓ Website structure may be inconsistent - this is normal
- ✓ ウェブサイト構造が一貫していない可能性 - これは正常

**Problem 4: Tool Crashes or Freezes** | ツールがクラッシュまたはフリーズ
- ✓ Start with smaller sample size
- ✓ より小さいサンプルサイズから始める

**Remember:** The bot will help troubleshoot during the activity!
**覚えておいてください:** ボットがアクティビティ中のトラブルシューティングを支援します！

---

## Slide 11: Today's Activity Preview
## スライド11：今日のアクティビティプレビュー

### What You'll Do Today | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Tool Setup** (12 min)
   - Install and configure scraping tool
   - ツールセットアップ

2. **Simple Practice Scrape** (13 min)
   - Scrape book listings from practice site
   - シンプルな練習スクレイプ

3. **Intermediate Scraping** (15 min)
   - Handle pagination and multiple attributes
   - 中級スクレイピング

4. **Company Data Practice** (12 min)
   - Scrape real company data sample
   - 企業データ練習

5. **Documentation** (8 min)
   - Save and document your work
   - 文書化

**The ML-101 Bot will guide you through each tool feature!**
**ML-101ボットが各ツール機能を通じてガイドします！**

---

## Slide 12: Key Takeaways
## スライド12：重要なポイント

### Remember | 覚えておいてください

✅ **No-code tools = scraping without programming**
   ノーコードツール = プログラミングなしのスクレイピング

✅ **Point-and-click** to select data
   データを選択するためのポイント＆クリック

✅ **Tool learns patterns** from your selections
   ツールがあなたの選択からパターンを学習

✅ **Handle pagination** for multi-page data
   マルチページデータのためのページネーション処理

✅ **Export to CSV** for analysis
   分析のためにCSVにエクスポート

✅ **Ethics still apply** - check robots.txt and ToS!
   倫理は依然として適用される - robots.txtとToSを確認！

---

## Slide 13: Let's Get Started!
## スライド13：始めましょう！

**"Now let's set up the tool and practice scraping real data!"**
**「では、ツールをセットアップして実際のデータをスクレイピングする練習をしましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Begin Week 5 Activity
   第5週アクティビティを開始

3. Install the recommended scraping tool
   推奨されるスクレイピングツールをインストール

4. Start with practice websites
   練習ウェブサイトから始める

5. Collect your first dataset!
   最初のデータセットを収集！

**Remember:** Start simple, practice, then move to real company data!
**覚えておいてください:** シンプルに始め、練習し、それから実際の企業データに移る！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum
- **Demonstration:** If possible, show quick 2-3 minute live demo of tool (optional)
- **Reassurance:** Emphasize that no programming is needed today
- **Practical:** Focus on what students will actually DO in the activity
- **Enthusiasm:** Build excitement about collecting real data!
- **Ethics reminder:** Brief reminder about checking robots.txt (Week 4 concepts)

### Common Questions

Q: "Do I need to install software on my computer?"
A: "Some tools are desktop apps, others are browser extensions. The bot will recommend based on your system. All have free versions."

Q: "What if the tool doesn't work on my computer?"
A: "We have backup options. The bot will suggest alternatives if installation fails. Let me know if you have persistent issues."

Q: "Can these tools scrape any website?"
A: "They work on most sites with structured data, but remember - just because a tool CAN scrape doesn't mean you SHOULD. Always check ethics first (Week 4)."

Q: "Will we use Python scraping too?"
A: "Yes! Later in the semester we'll learn Python scraping for more complex tasks. No-code tools are perfect for getting started."

Q: "What if I scrape data but it's messy?"
A: "That's normal! Week 7 is all about data cleaning. For now, just focus on collecting the data."

### After Lecture

- Immediately transition to hands-on activity
- Students work with bot guidance
- **Be available for installation issues** - this is most common problem
- Help students who can't install by suggesting alternative tools
- Monitor that students are using ethical, approved practice sites
- Check that students successfully export CSV files

### Key Points to Emphasize

1. **No programming needed** - That's the whole point of no-code tools
2. **Point and click** - Visual and intuitive
3. **Perfect for learning** - Understand concepts before coding
4. **Ethics still matter** - No-code doesn't mean no ethics
5. **Practice sites first** - Build confidence before real data
6. **Bot provides guidance** - Step-by-step help available

### Technical Preparation

Before class:
- Test recommended tools on your system
- Have backup tool suggestions ready
- Verify practice websites are still accessible
- Prepare screenshots of tool interfaces
- Test CSV export process

### Common Technical Issues

**Installation fails:**
- Suggest browser extension alternative
- Check system requirements
- Try different browser
- Use online/cloud-based tool option

**Tool crashes:**
- Start with smaller sample size
- Update browser/tool version
- Clear cache and restart

**Can't find selectors:**
- Guide to be more specific with clicks
- Show how to use selector editor
- Demonstrate on simpler website first

### AI Transparency

- Students can use AI for tool troubleshooting
- AI can explain tool features and settings
- Must document all AI interactions
- Verify AI suggestions by actually testing in tool

### Activity Success Indicators

Students should leave with:
- ✓ Tool successfully installed
- ✓ At least one CSV file exported
- ✓ Understanding of point-and-click process
- ✓ Confidence to scrape company data
- ✓ Awareness of ethical considerations

---

**End of Week 5 Lecture Slides**
**第5週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
