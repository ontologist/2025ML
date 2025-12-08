# ML Concepts Quick Reference Guide
# ML概念クイックリファレンスガイド

**Week 1 Reference Material | 第1週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## What is Machine Learning? | 機械学習とは？

### Simple Definition | シンプルな定義

**Machine Learning = Teaching computers to learn from data**
**機械学習 = コンピュータにデータから学習させること**

Instead of writing explicit rules, we show the computer examples and it learns patterns.
明示的なルールを書く代わりに、コンピュータに例を示し、パターンを学習させます。

---

## Traditional Programming vs Machine Learning

### Traditional Programming | 従来のプログラミング

```
INPUT: Rules + Data
      ルール + データ

PROCESS: Follow explicit instructions
        明示的な指示に従う

OUTPUT: Answer
       答え
```

**Example | 例:**
```
IF temperature > 30°C THEN
    message = "It's hot!"
ELSE
    message = "It's comfortable"
```

Programmer writes ALL the rules.
プログラマーがすべてのルールを書きます。

---

### Machine Learning | 機械学習

```
INPUT: Data + Answers (examples)
      データ + 答え（例）

PROCESS: Learn patterns automatically
        パターンを自動的に学習

OUTPUT: Rules (learned model)
       ルール（学習されたモデル）
```

**Example | 例:**
```
Show 1000 emails labeled "spam" or "not spam"
1000件のメールに「スパム」または「スパムではない」のラベルを付けて示す

Computer learns: certain words, senders, patterns = spam
コンピュータが学習：特定の単語、送信者、パターン = スパム
```

Computer learns the rules from examples.
コンピュータが例からルールを学習します。

---

## The ML Workflow | MLワークフロー

### 4 Main Steps | 4つの主なステップ

```
1. COLLECT DATA
   データ収集
   📊 Gather information
   情報を収集

   ↓

2. PREPARE DATA
   データ準備
   🧹 Clean and organize
   クリーンアップと整理

   ↓

3. TRAIN MODEL
   モデル訓練
   🤖 Teach computer patterns
   コンピュータにパターンを教える

   ↓

4. MAKE PREDICTIONS
   予測実行
   ✨ Get results on new data
   新しいデータで結果を得る
```

**Key Principle | 重要な原則:**
"Garbage in, garbage out" - Quality data is critical!
「ゴミを入れればゴミが出る」 - 品質データが重要！

---

## Three Types of Machine Learning | 3つのタイプの機械学習

### 1. Supervised Learning | 教師あり学習

**Definition:** Learning from labeled examples
**定義:** ラベル付き例から学習

**How it works | どのように機能するか:**
- You provide input + correct output
- 入力 + 正しい出力を提供
- Computer learns the relationship
- コンピュータが関係を学習
- Can predict output for new inputs
- 新しい入力の出力を予測できる

**Common Tasks | 一般的なタスク:**
- **Classification** - Categorize into groups
  分類 - グループに分類
  - Email: spam or not spam
  - メール：スパムかスパムでないか
  - Image: cat or dog
  - 画像：猫か犬か

- **Regression** - Predict a number
  回帰 - 数値を予測
  - House price based on features
  - 特徴に基づく住宅価格
  - Temperature tomorrow
  - 明日の気温

**Real-World Examples | 実世界の例:**
- ✉️ Spam detection
  スパム検出
- 🏠 House price prediction
  住宅価格予測
- 🎯 Ad click prediction
  広告クリック予測
- 😊 Sentiment analysis (positive/negative review)
  感情分析（肯定的/否定的レビュー）

---

### 2. Unsupervised Learning | 教師なし学習

**Definition:** Finding patterns in unlabeled data
**定義:** ラベルなしデータのパターンを見つける

**How it works | どのように機能するか:**
- You provide input ONLY (no labels)
- 入力のみ提供（ラベルなし）
- Computer finds hidden patterns
- コンピュータが隠されたパターンを見つける
- Groups similar data together
- 類似したデータをグループ化

**Common Tasks | 一般的なタスク:**
- **Clustering** - Group similar items
  クラスタリング - 類似したアイテムをグループ化
  - Customer segments
  - 顧客セグメント
  - Document topics
  - 文書トピック

- **Dimensionality Reduction** - Simplify complex data
  次元削減 - 複雑なデータを簡素化
  - Visualizing high-dimensional data
  - 高次元データの可視化

**Real-World Examples | 実世界の例:**
- 👥 Customer segmentation for marketing
  マーケティングのための顧客セグメンテーション
- 📰 News article grouping by topic
  トピック別のニュース記事グループ化
- 🔍 Anomaly detection (fraud, defects)
  異常検出（詐欺、欠陥）
- 🎵 Music genre discovery
  音楽ジャンル発見

---

### 3. Reinforcement Learning | 強化学習

**Definition:** Learning through trial and error with rewards
**定義:** 報酬を伴う試行錯誤による学習

**How it works | どのように機能するか:**
- Agent takes actions in environment
- エージェントが環境でアクションを実行
- Receives rewards or penalties
- 報酬または罰を受け取る
- Learns which actions maximize rewards
- どのアクションが報酬を最大化するかを学習

**Common Tasks | 一般的なタスク:**
- Game playing
  ゲームプレイ
- Robot control
  ロボット制御
- Resource optimization
  リソース最適化

**Real-World Examples | 実世界の例:**
- 🎮 AlphaGo (game playing)
  AlphaGo（ゲームプレイ）
- 🚗 Self-driving cars
  自動運転車
- 🤖 Robot navigation
  ロボットナビゲーション
- 💰 Trading strategies
  取引戦略

---

## Quick Comparison Table | クイック比較表

| Type | Input | Output | Example |
|------|-------|--------|---------|
| **Supervised** | Data + Labels | Predictions on new data | Spam detection |
| **Unsupervised** | Data only | Patterns/Groups | Customer segments |
| **Reinforcement** | Actions + Rewards | Optimal strategy | Game playing |

| タイプ | 入力 | 出力 | 例 |
|--------|------|------|-----|
| **教師あり** | データ + ラベル | 新しいデータの予測 | スパム検出 |
| **教師なし** | データのみ | パターン/グループ | 顧客セグメント |
| **強化学習** | アクション + 報酬 | 最適戦略 | ゲームプレイ |

---

## Common ML Tasks | 一般的なMLタスク

### Classification | 分類
**What it does:** Assigns items to categories
**何をするか:** アイテムをカテゴリーに割り当てる

**Examples:**
- Email → Spam or Not Spam
- Image → Cat, Dog, Bird
- Company → Interested or Not Interested ← **Our course project!**

### Regression | 回帰
**What it does:** Predicts a continuous number
**何をするか:** 連続した数値を予測

**Examples:**
- Predict house price: $500,000
- Predict temperature: 25°C
- Predict sales: 1,000 units

### Clustering | クラスタリング
**What it does:** Groups similar items together
**何をするか:** 類似したアイテムをグループ化

**Examples:**
- Customer segments: "Budget shoppers," "Premium buyers"
- News articles: "Politics," "Sports," "Technology"

### Recommendation | 推薦
**What it does:** Suggests items you might like
**何をするか:** 好きかもしれないアイテムを提案

**Examples:**
- Netflix: "Movies you might enjoy"
- Spotify: "Songs for you"
- Amazon: "Customers also bought"

---

## Key ML Concepts | 重要なMLコンセプト

### Data | データ

**Definition:** Information used to train the ML model
**定義:** MLモデルを訓練するために使用される情報

**Types:**
- Numbers (age, price, temperature)
  数字（年齢、価格、温度）
- Text (reviews, descriptions)
  テキスト（レビュー、説明）
- Categories (industry, color, location)
  カテゴリー（業界、色、場所）
- Images, audio, video
  画像、音声、ビデオ

---

### Features | 特徴

**Definition:** Individual measurable properties of data
**定義:** データの個別の測定可能な性質

**Example for a company:**
- Features: Industry, Size, Location, Salary, Benefits
- 特徴：業界、規模、場所、給与、福利厚生

**Think of features as "inputs" the model uses to make decisions.**
**特徴をモデルが決定を下すために使用する「入力」と考えてください。**

---

### Labels | ラベル

**Definition:** The "answer" or category we want to predict
**定義:** 予測したい「答え」またはカテゴリー

**Example:**
- Spam filter: Label = "Spam" or "Not Spam"
- スパムフィルター：ラベル = 「スパム」または「スパムでない」
- Our project: Label = "Interested" or "Not Interested" in company
- 私たちのプロジェクト：ラベル = 企業に「興味あり」または「興味なし」

**Used only in supervised learning!**
**教師あり学習でのみ使用！**

---

### Model | モデル

**Definition:** The "brain" that learns patterns from data
**定義:** データからパターンを学習する「頭脳」

**Think of it as:**
- A set of learned rules
- 学習されたルールのセット
- A mathematical function
- 数学的関数
- A pattern recognizer
- パターン認識器

**Once trained, the model can make predictions on new data.**
**訓練されると、モデルは新しいデータで予測を行うことができます。**

---

### Training | 訓練

**Definition:** The process of teaching the model using data
**定義:** データを使用してモデルを教えるプロセス

**What happens:**
1. Show model many examples
   モデルに多くの例を示す
2. Model makes predictions
   モデルが予測を行う
3. Compare predictions to correct answers
   予測を正しい答えと比較する
4. Adjust model to improve accuracy
   精度を向上させるためにモデルを調整する
5. Repeat until model is good enough
   モデルが十分に良くなるまで繰り返す

---

### Prediction | 予測

**Definition:** Using the trained model on new, unseen data
**定義:** 新しい未見のデータで訓練されたモデルを使用

**Example:**
- Trained spam filter sees NEW email
- 訓練されたスパムフィルターが新しいメールを見る
- Predicts: "This is spam" (90% confidence)
- 予測：「これはスパム」（90%信頼度）

---

## Why ML is Powerful | MLが強力な理由

### 1. Handles Complexity | 複雑性を処理
Traditional programming can't handle:
従来のプログラミングでは処理できないもの：
- Millions of possible patterns
- 何百万もの可能なパターン
- Subtle relationships in data
- データの微妙な関係
- Constantly changing rules
- 常に変化するルール

ML learns these automatically!
MLはこれらを自動的に学習します！

---

### 2. Improves Over Time | 時間とともに改善
- More data → Better performance
- より多くのデータ → より良いパフォーマンス
- Can adapt to changes
- 変化に適応できる
- Learns from mistakes
- 間違いから学ぶ

---

### 3. Scales Efficiently | 効率的にスケール
- One model can handle millions of cases
- 1つのモデルが何百万ものケースを処理できる
- Automates repetitive tasks
- 反復的なタスクを自動化
- Works 24/7 without breaks
- 休憩なしで24時間365日動作

---

## ML Limitations | MLの制限

### 1. Needs Lots of Data | 多くのデータが必要
- Minimum: hundreds to thousands of examples
- 最小：数百から数千の例
- More data = better results
- より多くのデータ = より良い結果

### 2. Garbage In, Garbage Out | ゴミを入れればゴミが出る
- Poor quality data → Poor predictions
- 低品質データ → 低品質予測
- Biased data → Biased model
- 偏ったデータ → 偏ったモデル

### 3. Black Box Problem | ブラックボックス問題
- Sometimes hard to understand WHY model made a decision
- なぜモデルが決定を下したかを理解するのが難しいことがある
- Important for accountability
- 説明責任に重要

### 4. Not Magic | 魔法ではない
- Can't predict the unpredictable
- 予測不可能なことは予測できない
- Limited by data quality and quantity
- データの品質と量によって制限される
- Requires human oversight
- 人間の監視が必要

---

## Course Project Connection | コースプロジェクト接続

### Company Recommendation System
### 企業推薦システム

**Type of ML:** Supervised Learning - Classification
**MLのタイプ:** 教師あり学習 - 分類

**How it works:**
1. **Collect Data:** Scrape company info from mynavi.jp
   データ収集：mynavi.jpから企業情報をスクレイプ

2. **Label Data:** You classify companies as "Interested" or "Not"
   データラベル付け：企業を「興味あり」または「興味なし」に分類

3. **Extract Features:** Industry, size, location, culture, benefits
   特徴抽出：業界、規模、場所、文化、福利厚生

4. **Train Model:** ML learns YOUR career preferences
   モデル訓練：MLがあなたのキャリア好みを学習

5. **Predict:** System recommends new companies you might like
   予測：システムがあなたが好きかもしれない新しい企業を推薦

**Similar to:** Netflix recommendations, Spotify playlists
**類似するもの:** Netflix推薦、Spotifyプレイリスト

**Different because:** YOU define what "good" means for your career!
**異なる理由:** あなたがキャリアにとって「良い」とは何かを定義します！

---

## Study Tips | 学習のヒント

✅ **Focus on concepts, not math** (for now)
   概念に焦点を当てる、数学ではない（今のところ）

✅ **Connect to real examples** from your daily life
   日常生活の実際の例に関連付ける

✅ **Ask "How does this learn?" not just "What does this do?"**
   「これはどのように学習するか？」と尋ねる、「これは何をするか？」だけでなく

✅ **Use the ML-101 Bot** for questions and clarification
   質問と説明のためにML-101ボットを使用する

✅ **Think about the course project** as you learn each concept
   各概念を学ぶときにコースプロジェクトについて考える

---

## Quick Quiz | クイッククイズ

Test your understanding! | 理解度をテスト！

1. **Is a calculator ML?**
   計算機はMLですか？
   - Answer: NO - it follows fixed rules, doesn't learn from data
   - 答え：いいえ - 固定ルールに従い、データから学習しない

2. **What type of ML is spam detection?**
   スパム検出はどのタイプのMLですか？
   - Answer: Supervised Learning - Classification
   - 答え：教師あり学習 - 分類

3. **What does "garbage in, garbage out" mean?**
   「ゴミを入れればゴミが出る」とはどういう意味ですか？
   - Answer: Poor quality data leads to poor quality predictions
   - 答え：低品質データは低品質予測につながる

4. **What's the difference between features and labels?**
   特徴とラベルの違いは何ですか？
   - Answer: Features are inputs (e.g., industry, size). Labels are outputs/answers (e.g., "interested")
   - 答え：特徴は入力（例：業界、規模）。ラベルは出力/答え（例：「興味あり」）

---

**Keep this reference handy throughout the course!**
**コースを通じてこのリファレンスを手元に保管してください！**

*Created for ML-101: Week 1*
*ML-101用に作成：第1週*
