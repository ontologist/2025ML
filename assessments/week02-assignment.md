# Week 2 Assignment: Understanding Data and Its Role
# 第2週課題：データとその役割の理解

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Week:** 2 | 第2週
**Due Date:** End of Week 2 class session | 第2週授業終了時
**Weight:** Part of 40% Weekly Activities grade | 週次アクティビティ評価40%の一部
**Submission:** Through ML-101 Bot Portal | ML-101ボットポータル経由

---

## Assignment Overview | 課題概要

This assignment develops your understanding of data types, data quality, and data sources critical for machine learning. You'll analyze sample datasets, identify quality issues, and evaluate potential data sources for the course project.

この課題は、機械学習に重要なデータタイプ、データ品質、データソースの理解を発展させます。サンプルデータセットを分析し、品質問題を特定し、コースプロジェクトの潜在的なデータソースを評価します。

---

## Learning Objectives | 学習目標

By completing this assignment, you will be able to:
この課題を完了することで、以下ができるようになります：

- ✅ Distinguish between structured, semi-structured, and unstructured data
  構造化データ、半構造化データ、非構造化データを区別する

- ✅ Identify common data quality issues in real-world datasets
  実世界のデータセットで一般的なデータ品質問題を特定する

- ✅ Understand the impact of data quality on ML models
  データ品質がMLモデルに与える影響を理解する

- ✅ Evaluate potential data sources for a machine learning project
  機械学習プロジェクトの潜在的なデータソースを評価する

- ✅ Apply data quality criteria to assess dataset suitability
  データセットの適合性を評価するためにデータ品質基準を適用する

---

## Prerequisites | 前提条件

- ✅ Attended Week 2 lecture (or reviewed lecture slides)
  第2週講義に出席（または講義スライドをレビュー）

- ✅ Completed Week 1 assignment
  第1週課題を完了

- ✅ Access to ML-101 Bot portal and Week 2 sample datasets
  ML-101ボットポータルと第2週サンプルデータセットへのアクセス

---

## Assignment Deliverables | 課題成果物

### Deliverable 1: Data Type Analysis Document
### 成果物1：データタイプ分析文書

**Required Content | 必要な内容:**

Analyze the **three sample datasets** provided in the Week 2 resources:
第2週リソースで提供される**3つのサンプルデータセット**を分析します：

1. `sample-structured-data.csv` - Company information in tabular format
2. `sample-semistructured-data.json` - Company data in JSON format
3. `sample-unstructured-data.txt` - Company descriptions in free-form text

For each dataset, document:
各データセットについて、文書化します：

**A. Data Type Classification | データタイプ分類**
- Is this structured, semi-structured, or unstructured data?
- これは構造化、半構造化、または非構造化データですか？
- Justify your classification (2-3 sentences)
- 分類を正当化（2-3文）

**B. Key Characteristics | 主な特性**
- How is the data organized?
- データはどのように整理されていますか？
- What format is used?
- どの形式が使用されていますか？
- What information does it contain?
- どのような情報が含まれていますか？

**C. Advantages for ML | MLの利点**
- What are the advantages of this data format for ML?
- MLにとってこのデータ形式の利点は何ですか？
- Example: "CSV is easy for computers to parse and analyze"
- 例：「CSVはコンピュータが解析し分析するのが簡単」

**D. Challenges for ML | MLの課題**
- What challenges does this format present?
- この形式が提示する課題は何ですか？
- Example: "Unstructured text requires natural language processing"
- 例：「非構造化テキストは自然言語処理を必要とする」

**Format | 形式:**
- Document format: PDF, Word, or Google Doc
- 文書形式：PDF、Word、またはGoogle Doc
- Clearly labeled sections for each dataset
- 各データセットに明確にラベル付けされたセクション
- Include screenshots or data samples
- スクリーンショットまたはデータサンプルを含める

**Scoring (25 points) | 採点（25点）:**
- Correct classification of all 3 datasets: 9 points (3 each)
  3つすべてのデータセットの正しい分類：9点（各3点）
- Key characteristics identified: 6 points (2 each)
  主な特性の識別：6点（各2点）
- Advantages explained: 5 points
  利点の説明：5点
- Challenges explained: 5 points
  課題の説明：5点

---

### Deliverable 2: Data Quality Assessment Report
### 成果物2：データ品質評価レポート

**Required Content | 必要な内容:**

Analyze the provided **messy-company-data.csv** dataset and identify **at least 5 different types** of data quality issues.

提供された**messy-company-data.csv**データセットを分析し、**少なくとも5つの異なるタイプ**のデータ品質問題を特定します。

For each quality issue identified:
特定された各品質問題について：

**A. Issue Type | 問題タイプ**
- Name the type of quality issue
- 品質問題のタイプに名前を付ける
- Examples: Missing values, duplicates, inconsistent formatting, invalid values, outdated information
- 例：欠損値、重複、一貫性のない書式、無効な値、古い情報

**B. Specific Examples | 具体的な例**
- Cite specific rows/columns where the issue occurs
- 問題が発生する特定の行/列を引用
- Example: "Row 6, employee_count = -50 (invalid value)"
- 例：「行6、employee_count = -50（無効な値）」

**C. Impact on ML | MLへの影響**
- Explain how this issue would affect an ML model (2-3 sentences)
- この問題がMLモデルにどのように影響するかを説明（2-3文）
- Example: "Negative employee counts would confuse the model and lead to nonsensical predictions"
- 例：「負の従業員数はモデルを混乱させ、無意味な予測につながります」

**D. Potential Solution | 潜在的な解決策**
- How could this issue be fixed?
- この問題をどのように修正できますか？
- Example: "Remove invalid rows or replace with median value"
- 例：「無効な行を削除するか、中央値で置き換える」

**Minimum Expected Issues | 最低期待される問題:**
You should identify at least these 5 types:
少なくともこれらの5つのタイプを特定する必要があります：
1. Missing values (欠損値)
2. Duplicate records (重複レコード)
3. Inconsistent formatting (一貫性のない書式)
4. Invalid/impossible values (無効/不可能な値)
5. Inconsistent data types (一貫性のないデータ型)

**Bonus:** Identifying additional issues (outdated information, naming inconsistencies)
**ボーナス:** 追加の問題の特定（古い情報、命名の不整合）

**Format | 形式:**
- Organized table or list format
- 整理されたテーブルまたはリスト形式
- Include data samples showing the issues
- 問題を示すデータサンプルを含める

**Scoring (30 points) | 採点（30点）:**
- At least 5 quality issues identified: 15 points (3 each)
  少なくとも5つの品質問題を特定：15点（各3点）
- Specific examples with row/column references: 5 points
  行/列参照付きの具体的な例：5点
- Impact on ML explained: 5 points
  MLへの影響の説明：5点
- Potential solutions provided: 5 points
  潜在的な解決策の提供：5点
- Bonus: Additional issues beyond 5 (up to +5 points)
  ボーナス：5つを超える追加の問題（最大+5点）

---

### Deliverable 3: Data Source Identification Report
### 成果物3：データソース識別レポート

**Required Content | 必要な内容:**

Identify and document **5-7 potential data sources** where you could collect company information for the course project (company recommendation system).

コースプロジェクト（企業推薦システム）のために企業情報を収集できる**5-7の潜在的なデータソース**を特定し文書化します。

For each data source:
各データソースについて：

**A. Source Name & URL | ソース名とURL**
- Name of the website/platform
- ウェブサイト/プラットフォームの名前
- URL (if applicable)
- URL（該当する場合）
- Example: "MyNavi Japan - https://www.mynavi.jp/"
- 例：「マイナビジャパン - https://www.mynavi.jp/」

**B. Type of Information Available | 利用可能な情報のタイプ**
- What company data does this source provide?
- このソースはどのような企業データを提供しますか？
- Examples: Company name, industry, size, location, job listings, reviews, salary information
- 例：企業名、業界、規模、場所、求人リスト、レビュー、給与情報

**C. Data Structure | データ構造**
- Is the data structured, semi-structured, or unstructured?
- データは構造化、半構造化、または非構造化ですか？
- How is it presented? (tables, lists, free text, etc.)
- どのように提示されますか？（テーブル、リスト、自由テキストなど）

**D. Data Quality Assessment | データ品質評価**
- Is the data likely to be accurate and up-to-date?
- データは正確で最新である可能性が高いですか？
- Are there potential quality concerns?
- 潜在的な品質の懸念はありますか？

**Suggested Source Categories | 推奨されるソースカテゴリ:**
- 🌐 Job boards (mynavi.jp, rikunabi.com, indeed.jp)
  求人掲示板
- 🏢 Company websites
  企業ウェブサイト
- ⭐ Review sites (OpenWork, Vorkers, Glassdoor)
  レビューサイト
- 📰 News and business information sites
  ニュースおよびビジネス情報サイト
- 💼 Professional networks (LinkedIn, Wantedly)
  プロフェッショナルネットワーク
- 📊 Company databases
  企業データベース

**Format | 形式:**
- Table or structured list
- テーブルまたは構造化リスト
- Include screenshots of example data (optional but recommended)
- 例データのスクリーンショットを含める（オプションですが推奨）

**Scoring (20 points) | 採点（20点）:**
- 5-7 data sources identified: 10 points (2 each for 5 minimum)
  5-7のデータソースを特定：10点（最低5つで各2点）
- Type of information documented: 4 points
  情報のタイプを文書化：4点
- Data structure identified: 3 points
  データ構造を識別：3点
- Quality assessment provided: 3 points
  品質評価を提供：3点

---

### Deliverable 4: Data Source Evaluation Matrix
### 成果物4：データソース評価マトリックス

**Required Content | 必要な内容:**

Create an **evaluation matrix** comparing your identified data sources using the criteria below.

以下の基準を使用して、特定したデータソースを比較する**評価マトリックス**を作成します。

**Evaluation Criteria | 評価基準:**

For each data source, rate on a scale of 1-5 (1 = Poor, 5 = Excellent):
各データソースについて、1-5のスケールで評価（1 = 不良、5 = 優秀）：

1. **Accessibility | アクセシビリティ (1-5)**
   - How easy is it to access this data?
   - このデータにアクセスするのはどれくらい簡単ですか？
   - Is it publicly available or requires registration/payment?
   - 公開されているか、登録/支払いが必要ですか？

2. **Data Richness | データの豊富さ (1-5)**
   - How much useful information does it provide?
   - どれだけ有用な情報を提供しますか？
   - Does it include company details, culture, benefits, etc.?
   - 企業の詳細、文化、福利厚生などが含まれますか？

3. **Data Quality | データ品質 (1-5)**
   - Is the data accurate, complete, and up-to-date?
   - データは正確で完全で最新ですか？
   - Are there quality concerns?
   - 品質の懸念はありますか？

4. **Relevance to Project | プロジェクトへの関連性 (1-5)**
   - How relevant is this data for building a company recommendation system?
   - 企業推薦システムを構築するためにこのデータはどれだけ関連していますか？
   - Does it help understand company culture and fit?
   - 企業文化と適合性を理解するのに役立ちますか？

5. **Feasibility | 実現可能性 (1-5)**
   - How feasible is it to collect this data? (considering time, skills, legal/ethical)
   - このデータを収集することはどれだけ実現可能ですか？（時間、スキル、法的/倫理的を考慮）

**Then, for each source:**
次に、各ソースについて：

- **Total Score** (sum of all ratings)
  合計スコア（すべての評価の合計）

- **Recommendation** (1-2 sentences)
  推奨（1-2文）
  - Would you use this source for the project? Why or why not?
  - プロジェクトにこのソースを使用しますか？理由は？

**Example Matrix Format:**
```
| Source | Accessibility | Richness | Quality | Relevance | Feasibility | Total | Recommendation |
|--------|--------------|----------|---------|-----------|-------------|-------|----------------|
| MyNavi | 5 | 5 | 4 | 5 | 3 | 22/25 | Highly recommended... |
```

**Format | 形式:**
- Table/matrix format (Excel, Google Sheets, or formatted document)
- テーブル/マトリックス形式（Excel、Google Sheets、またはフォーマットされた文書）
- Clear rating scale and totals
- 明確な評価スケールと合計
- Brief recommendation for each source
- 各ソースの簡単な推奨

**Scoring (20 points) | 採点（20点）:**
- All sources rated across 5 criteria: 10 points
  すべてのソースを5つの基準で評価：10点
- Clear rating scale used (1-5): 2 points
  明確な評価スケールを使用（1-5）：2点
- Total scores calculated: 2 points
  合計スコアを計算：2点
- Recommendations provided: 6 points
  推奨を提供：6点

---

### Deliverable 5: AI Transparency Statement (if applicable)
### 成果物5：AI透明性声明（該当する場合）

**Required Content | 必要な内容:**

If your institution requires AI transparency documentation, include a brief statement (3-5 sentences) describing:

あなたの機関がAI透明性文書を要求する場合、以下を説明する簡単な声明（3-5文）を含めます：

- Which AI tools you used (ML-101 Bot, ChatGPT, etc.)
  どのAIツールを使用したか
- How you used them (guidance, clarification, examples)
  どのように使用したか（ガイダンス、説明、例）
- What analysis and decisions you made independently
  どの分析と決定を独立して行ったか

**Format | 形式:**
- Include at the end of your main document
- メイン文書の最後に含める
- Clearly labeled: "AI Transparency Statement"
- 明確にラベル付け：「AI透明性声明」

**Scoring (5 points) | 採点（5点）:**
- Clear and honest documentation
  明確で正直な文書化

**Note:** Required only if your institution has an AI transparency policy.
**注意:** あなたの機関がAI透明性ポリシーを持つ場合のみ必要です。

---

## Submission Instructions | 提出指示

### How to Submit | 提出方法

1. **Combine all deliverables** into a single document
   すべての成果物を単一の文書に結合

2. **Include all required components:**
   すべての必要なコンポーネントを含める：
   - Data Type Analysis (Deliverable 1)
   - Data Quality Assessment (Deliverable 2)
   - Data Source Identification (Deliverable 3)
   - Source Evaluation Matrix (Deliverable 4)
   - AI Transparency (Deliverable 5, if applicable)

3. **Name your file:** `Week02_[YourName]_DataAnalysis`
   ファイル名を付ける：`Week02_[あなたの名前]_DataAnalysis`
   - Example: `Week02_YuriTijerino_DataAnalysis.pdf`

4. **Upload through ML-101 Bot Portal:**
   ML-101ボットポータルを通じてアップロード：
   - Log in to bot portal
   - Navigate to "Week 2 Assignment Submission"
   - Upload your document (and matrix file if separate)
   - Click "Submit"

5. **Confirm submission:**
   提出を確認：
   - Receive automated confirmation from bot
   - Check email for submission receipt

### Submission Deadline | 提出期限

**Due:** End of Week 2 class session
**期限:** 第2週授業終了時

**Late Policy:** Same as Week 1
- Up to 24 hours late: -10%
- 24-48 hours late: -20%
- More than 48 hours: Not accepted without prior arrangement

---

## Grading Rubric | 評価ルーブリック

### Total Points: 100 | 合計点：100

| Deliverable | Points | Criteria |
|-------------|--------|----------|
| **Data Type Analysis** | 25 | Correct classification, characteristics, advantages/challenges |
| **Data Quality Assessment** | 30 | 5+ issues identified, examples, ML impact, solutions |
| **Data Source Identification** | 20 | 5-7 sources, information type, structure, quality |
| **Source Evaluation Matrix** | 20 | Complete ratings, totals, recommendations |
| **AI Transparency** | 5 | Clear documentation (if required) |
| **TOTAL** | **100** | |

---

## Tips for Success | 成功のためのヒント

### Data Type Analysis Tips | データタイプ分析のヒント

✅ **Open the actual data files**
   実際のデータファイルを開く
   - Don't just guess - examine the structure
   - 推測しないで - 構造を調査する

✅ **Look for patterns**
   パターンを探す
   - Structured data: rows and columns
   - 構造化データ：行と列
   - Semi-structured: nested organization (JSON)
   - 半構造化：ネストされた構造（JSON）
   - Unstructured: free-form text
   - 非構造化：自由形式のテキスト

✅ **Think about ML processing**
   ML処理について考える
   - How easy is this for a computer to read?
   - コンピュータがこれを読むのはどれくらい簡単ですか？

---

### Data Quality Assessment Tips | データ品質評価のヒント

✅ **Systematic checking**
   体系的なチェック
   - Go column by column
   - 列ごとに進む
   - Look for patterns of issues
   - 問題のパターンを探す

✅ **Be specific**
   具体的であること
   - Cite actual rows and values
   - 実際の行と値を引用
   - Example: "Row 8, column 'industry' is missing"
   - 例：「行8、列'industry'が欠落している」

✅ **Think about consequences**
   結果について考える
   - "What would happen if an ML model saw this bad data?"
   - 「MLモデルがこの悪いデータを見たらどうなるか？」

---

### Data Source Identification Tips | データソース識別のヒント

✅ **Think broadly**
   広く考える
   - Job sites, review sites, news sites, company sites
   - 求人サイト、レビューサイト、ニュースサイト、企業サイト
   - Don't limit to one type of source
   - 1つのタイプのソースに限定しない

✅ **Consider Japanese vs International sources**
   日本 vs 国際的なソースを考慮
   - MyNavi vs Indeed
   - Vorkers vs Glassdoor

✅ **Evaluate realistically**
   現実的に評価
   - Can you actually access this data?
   - 実際にこのデータにアクセスできますか？
   - Is it legal and ethical to collect?
   - 収集することは合法で倫理的ですか？

---

## Example Excerpts | 提出例の抜粋

### Example: Data Type Analysis
### 例：データタイプ分析

**Dataset:** sample-structured-data.csv

**Classification:** Structured Data
**分類:** 構造化データ

**Justification:** This dataset is clearly structured with defined rows and columns. Each row represents one company, and each column represents a specific attribute (company_id, company_name, industry, etc.). The data is organized in a tabular format with consistent field types.
**正当化:** このデータセットは定義された行と列で明確に構造化されています。各行は1つの企業を表し、各列は特定の属性（company_id、company_name、industryなど）を表します。データは一貫したフィールドタイプを持つ表形式で整理されています。

**Key Characteristics:**
- CSV (Comma-Separated Values) format
- 17 rows (including header)
- 7 columns: company_id, company_name, industry, employee_count, location, founded_year, is_hiring
- Each field has a consistent data type (text, numbers, boolean)

**Advantages for ML:**
- Easy for computers to parse and read
- Consistent structure makes feature extraction straightforward
- Can be directly loaded into pandas DataFrame for analysis
- Numerical fields ready for ML algorithms

**Challenges for ML:**
- Missing context (e.g., company culture not captured)
- Limited richness compared to unstructured text
- May need additional feature engineering

---

### Example: Data Quality Issue
### 例：データ品質問題

**Issue Type:** Invalid/Impossible Values
**問題タイプ:** 無効/不可能な値

**Specific Example:** Row 8 (C006 - Manufacturing Excellence), column `employee_count` = -50
**具体的な例:** 行8（C006 - Manufacturing Excellence）、列`employee_count` = -50

**Impact on ML:** A negative employee count is logically impossible and would severely impact an ML model. The model might learn incorrect patterns, such as associating negative values with the manufacturing industry. This could lead to nonsensical predictions, like predicting that successful companies have negative employees. The model's accuracy and reliability would be compromised.
**MLへの影響:** 負の従業員数は論理的に不可能であり、MLモデルに深刻な影響を与えます。モデルは、製造業界と負の値を関連付けるなど、不正確なパターンを学習する可能性があります。これは、成功した企業が負の従業員を持つと予測するなど、無意味な予測につながる可能性があります。モデルの精度と信頼性が損なわれます。

**Potential Solution:** Remove this row entirely, or replace the invalid value with the median employee_count from other manufacturing companies in the dataset. Another option is to flag this as a data error and investigate the source to find the correct value.
**潜在的な解決策:** この行を完全に削除するか、データセット内の他の製造企業の従業員数の中央値で無効な値を置き換えます。別のオプションは、これをデータエラーとしてフラグを立て、正しい値を見つけるためにソースを調査することです。

---

## Frequently Asked Questions | よくある質問

**Q: Do I need to fix the messy data?**
**Q: 乱雑なデータを修正する必要がありますか？**

A: No! For this assignment, you only need to IDENTIFY and DESCRIBE the issues. We'll learn how to fix them in later weeks.
A: いいえ！この課題では、問題を識別し説明するだけで済みます。後の週でそれらを修正する方法を学びます。

**Q: Can I suggest data sources I can't actually access?**
**Q: 実際にアクセスできないデータソースを提案できますか？**

A: Yes, but note this in your feasibility rating. For example, a paid database might have great data but low feasibility for students.
A: はい、ただし実現可能性評価でこれに注意してください。たとえば、有料データベースは優れたデータを持っているかもしれませんが、学生にとっては低い実現可能性です。

**Q: How many quality issues should I find in the messy dataset?**
**Q: 乱雑なデータセットでいくつの品質問題を見つけるべきですか？**

A: Minimum 5 different TYPES of issues. Finding more is good and may earn bonus points!
A: 最低5つの異なるタイプの問題。もっと見つけることは良いことで、ボーナスポイントを獲得する可能性があります！

**Q: Should my evaluation matrix be subjective or objective?**
**Q: 評価マトリックスは主観的ですか、客観的ですか？**

A: Both! Use objective facts (is it free? how much data?) but also your judgment (is it relevant? feasible for me?). Justify your ratings.
A: 両方！客観的な事実を使用（無料ですか？どれだけのデータですか？）しますが、あなたの判断も（関連していますか？私にとって実現可能ですか？）。評価を正当化してください。

**Q: Can I use data sources in Japanese only?**
**Q: 日本語のみのデータソースを使用できますか？**

A: Absolutely! In fact, Japanese job sites like MyNavi are highly relevant for this project.
A: もちろん！実際、MyNaviのような日本の求人サイトはこのプロジェクトに非常に関連しています。

---

## Getting Help | ヘルプを得る

**During Activity:**
- Ask the ML-101 Bot for guidance
- Raise hand for instructor help
- Discuss with classmates (but submit your own work)

**Outside of Class:**
- Use bot portal (24/7 access)
- Email instructor
- Office hours

---

## Academic Integrity | 学術的誠実性

**Permitted:**
- Using ML-101 Bot for guidance
- Discussing data concepts with classmates
- Asking for help understanding the datasets

**Not Permitted:**
- Copying another student's analysis
- Having AI write your entire report
- Sharing your completed work before deadline

---

**Good luck with your data exploration!**
**データ探索を頑張ってください！**

**Remember: "Garbage in, garbage out" - understanding data quality is crucial for ML success!**
**覚えておいてください:「ゴミを入れればゴミが出る」- データ品質の理解はMLの成功に重要です！**

---

*Assignment created for ML-101: Machine Learning and Intelligence*
*ML-101用に作成された課題：機械学習と知能*
