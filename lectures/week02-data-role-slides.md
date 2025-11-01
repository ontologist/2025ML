# Week 2: Understanding Data and Its Role
# 第2週：データとその役割の理解

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Week 2 - Understanding Data
## スライド1：第2週 - データの理解

**Topic:** Data and Its Role in Machine Learning
**トピック:** 機械学習におけるデータとその役割

**Today's Objectives | 今日の目標:**
- Understand what data is | データとは何かを理解する
- Learn about different types of data | 異なるタイプのデータについて学ぶ
- Discover why data quality matters | データ品質が重要な理由を発見する
- Identify data sources for our project | プロジェクトのデータソースを特定する

---

## Slide 2: What is Data?
## スライド2：データとは？

**Data = Information We Collect**
**データ = 収集する情報**

### Three Main Types | 3つの主なタイプ:

1. **Numbers | 数字**
   - Age: 25 years old | 年齢：25歳
   - Salary: ¥4,000,000 | 給与：400万円
   - Company size: 500 employees | 企業規模：500人の従業員

2. **Text | テキスト**
   - Company descriptions | 企業説明
   - Job requirements | 求人要件
   - Employee reviews | 従業員レビュー

3. **Categories | カテゴリー**
   - Industry: Technology, Finance, Healthcare | 業界：技術、金融、医療
   - Location: Tokyo, Osaka, Kyoto | 場所：東京、大阪、京都
   - Company type: Startup, Corporation | 企業タイプ：スタートアップ、大企業

---

## Slide 3: Structured vs Unstructured Data
## スライド3：構造化データ vs 非構造化データ

### Structured Data | 構造化データ
**Organized in rows and columns**
**行と列で整理されている**

```
Company Name | Industry    | Size  | Location
ABC Corp     | Technology  | 1000  | Tokyo
XYZ Inc      | Finance     | 500   | Osaka
```

### Semi-Structured Data | 半構造化データ
**Has some organization but flexible**
**いくつかの組織があるが柔軟**

```json
{
  "company": "ABC Corp",
  "industry": "Technology",
  "employees": {"full-time": 800, "part-time": 200}
}
```

### Unstructured Data | 非構造化データ
**Free-form text, no fixed structure**
**自由形式のテキスト、固定された構造なし**

```
"ABC Corp is a leading technology company
founded in 2010. We value innovation..."
```

---

## Slide 4: Data in ML Workflows
## スライド4：MLワークフローにおけるデータ

### The ML Pipeline | MLパイプライン

```
1. COLLECT DATA    →    2. PREPARE DATA    →    3. TRAIN MODEL    →    4. MAKE PREDICTIONS
   データ収集              データ準備              モデル訓練              予測実行

📊 Gather info      🧹 Clean & organize    🤖 Teach computer    ✨ Get results
```

### Critical Principle | 重要な原則

**"Garbage In, Garbage Out"**
**「ゴミを入れれば、ゴミが出る」**

- **Poor data quality** = Poor ML results | 低品質データ = 低品質なML結果
- **Good data quality** = Accurate predictions | 高品質データ = 正確な予測
- **Data is the foundation** of all ML! | データはすべてのMLの基盤！

---

## Slide 5: Data Quality Matters
## スライド5：データ品質が重要

### Common Data Quality Issues | 一般的なデータ品質問題

❌ **Missing Values | 欠損値**
- Some companies don't list their size
- いくつかの企業は規模を記載していない

❌ **Inconsistencies | 不整合**
- "Tokyo" vs "東京" vs "tokyo"
- 同じものの異なる表記

❌ **Duplicates | 重複**
- Same company listed multiple times
- 同じ企業が複数回リストされている

❌ **Errors | エラー**
- Company with -50 employees (impossible!)
- 従業員-50人の企業（不可能！）

❌ **Outdated Information | 古い情報**
- Company data from 5 years ago
- 5年前の企業データ

---

## Slide 6: Data for Company Recommendations
## スライド6：企業推薦のためのデータ

### What Data Do We Need? | 必要なデータは？

**For our company classifier project:**
**企業分類プロジェクトのために:**

🏢 **Company Information | 企業情報**
- Name, industry, size | 名前、業界、規模
- Location, founding year | 場所、創業年

💼 **Job Details | 求人詳細**
- Position types, requirements | ポジションタイプ、要件
- Salary ranges, benefits | 給与範囲、福利厚生

📝 **Descriptions | 説明**
- Company culture | 企業文化
- Mission and values | ミッションと価値観
- Work environment | 労働環境

---

## Slide 7: Where Can We Find This Data?
## スライド7：このデータをどこで見つけられるか？

### Potential Data Sources | 潜在的なデータソース

**Think about your own job search...**
**自分の就職活動について考えてみてください...**

- 🌐 Job boards (mynavi.jp, rikunabi.com)
- 🏢 Company websites
- ⭐ Review sites (OpenWork, Vorkers)
- 📰 News articles
- 💬 Social media

**Coming soon:** Web scraping! (Week 4)
**近日公開:** Webスクレイピング！（第4週）

---

## Slide 8: Today's Activity Preview
## スライド8：今日のアクティビティプレビュー

### What You'll Do Today | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Explore Sample Datasets** (12 min)
   - Examine structured, semi-structured, and unstructured data
   - サンプルデータセットを探索

2. **Assess Data Quality** (13 min)
   - Find problems in a "messy" company dataset
   - 「乱雑な」企業データセットで問題を見つける

3. **Brainstorm Data Sources** (15 min)
   - Identify where to find company information
   - 企業情報をどこで見つけるかを特定

4. **Evaluate Sources** (12 min)
   - Decide which sources are best for our project
   - プロジェクトに最適なソースを決定

**The ML-101 Bot will guide you step-by-step!**
**ML-101ボットがステップバイステップでガイドします！**

---

## Slide 9: Key Takeaways
## スライド9：重要なポイント

### Remember | 覚えておいてください

✅ **Data is information** we collect
   データは収集する情報です

✅ **Three types**: structured, semi-structured, unstructured
   3つのタイプ：構造化、半構造化、非構造化

✅ **Data quality is critical** for ML success
   データ品質はMLの成功に重要です

✅ **Many sources** exist for company data
   企業データには多くのソースが存在します

✅ **We must evaluate** which sources to use
   どのソースを使用するかを評価する必要があります

---

## Slide 10: Let's Get Started!
## スライド10：始めましょう！

**"Now let's discover how data works through hands-on exploration!"**
**「では、ハンズオン探索を通じてデータがどのように機能するかを発見しましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Begin Week 2 Activity
   第2週アクティビティを開始

3. Follow bot guidance
   ボットのガイダンスに従う

4. Ask questions anytime!
   いつでも質問してください！

**Remember:** Learning happens during the activity, not just the lecture!
**覚えておいてください:** 学習は講義だけでなくアクティビティ中に起こります！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum
- **Engagement:** Ask "Who has used job search websites?" to connect to experience
- **Examples:** Use familiar Japanese companies (Toyota, Sony, Rakuten) in examples
- **Transition:** Emphasize that the activity is where real learning happens

### Common Questions

Q: "What if we can't find good data sources?"
A: "Great question! The activity will help you evaluate options, and we'll learn web scraping soon."

Q: "Do we need to be good at programming?"
A: "Not at all! We'll learn what we need as we go. Focus on understanding concepts today."

### After Lecture

- Immediately transition to hands-on activity
- Students work with bot guidance
- Circulate to answer complex questions
- Bot handles most step-by-step guidance

---

**End of Week 2 Lecture Slides**
**第2週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
