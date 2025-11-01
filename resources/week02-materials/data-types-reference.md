# Data Types Quick Reference
# データ型クイックリファレンス

**ML-101: Week 2 Supporting Material**

---

## Introduction | イントロダクション

Understanding data types is fundamental to machine learning project success. Different types of data require different processing approaches, tools, and techniques. This guide provides a quick reference to help you identify and work with the three main categories of data in ML contexts.

機械学習プロジェクトの成功には、データ型の理解が不可欠です。データの種類によって、必要な処理アプローチ、ツール、技術が異なります。このガイドは、MLコンテキストにおける3つの主要なデータカテゴリを識別し、扱うためのクイックリファレンスを提供します。

---

## 1. Structured Data | 構造化データ

### Definition | 定義

Structured data is highly organized information that fits neatly into tables with rows and columns. Each field has a defined data type and follows a strict schema.

構造化データは、行と列を持つテーブルにきちんと収まる、高度に組織化された情報です。各フィールドには定義されたデータ型があり、厳密なスキーマに従います。

### Characteristics | 特徴

- **Fixed Schema** - Predefined columns with specific data types
  - 固定スキーマ - 特定のデータ型を持つ事前定義された列
- **Tabular Format** - Organized in rows and columns
  - 表形式 - 行と列で整理
- **Searchable** - Easy to search, query, and filter using SQL or similar
  - 検索可能 - SQLなどを使用して簡単に検索、クエリ、フィルタリング
- **Relationships** - Clear relationships between entities
  - 関係性 - エンティティ間の明確な関係

### Examples | 例

- **CSV/Excel files** - Spreadsheet data
  - CSVファイル/Excelファイル - スプレッドシートデータ
- **Relational databases** - MySQL, PostgreSQL, SQLite
  - リレーショナルデータベース - MySQL、PostgreSQL、SQLite
- **Data warehouses** - Organized business intelligence data
  - データウェアハウス - 整理されたビジネスインテリジェンスデータ

```python
# Example: Structured data in CSV format
import pandas as pd

# Reading structured data
df = pd.read_csv('customer_data.csv')
print(df.head())

# Output example:
#    customer_id    name         age  purchase_amount
# 0         1001    田中太郎      28        15000
# 1         1002    Yamada       35        22000
# 2         1003    佐藤花子      42        8500
```

### Advantages for ML | MLにおける利点

- **Easy preprocessing** - Straightforward data cleaning and transformation
  - 簡単な前処理 - データクリーニングと変換が簡単
- **Statistical analysis** - Direct application of statistical methods
  - 統計分析 - 統計手法の直接的な適用
- **Feature engineering** - Simple to create new features from existing columns
  - 特徴量エンジニアリング - 既存の列から新しい特徴量を簡単に作成
- **Model compatibility** - Works with most ML algorithms out-of-the-box
  - モデルの互換性 - ほとんどのMLアルゴリズムとそのまま動作

### Challenges | 課題

- **Rigidity** - Difficult to adapt to changing requirements
  - 硬直性 - 変化する要件への適応が困難
- **Limited expressiveness** - Cannot easily represent complex hierarchies
  - 表現力の制限 - 複雑な階層構造を表現しにくい
- **Schema evolution** - Requires careful migration when structure changes
  - スキーマの進化 - 構造変更時に慎重な移行が必要

---

## 2. Semi-Structured Data | 半構造化データ

### Definition | 定義

Semi-structured data contains organizational properties (tags, hierarchies, metadata) but doesn't conform to rigid table structures. It's flexible yet still organized.

半構造化データは組織的特性（タグ、階層、メタデータ）を含みますが、厳密なテーブル構造には従いません。柔軟でありながら整理されています。

### Characteristics | 特徴

- **Flexible Schema** - Can accommodate varying fields
  - 柔軟なスキーマ - 変動するフィールドに対応可能
- **Hierarchical/Nested** - Supports nested structures and relationships
  - 階層的/ネスト構造 - ネストされた構造と関係をサポート
- **Self-describing** - Contains metadata about the data itself
  - 自己記述的 - データ自体に関するメタデータを含む
- **Mixed types** - Can store different data types in the same structure
  - 混合型 - 同じ構造内に異なるデータ型を格納可能

### Examples | 例

- **JSON files** - Web APIs, configuration files
  - JSONファイル - Web API、設定ファイル
- **XML documents** - Enterprise data exchange
  - XMLドキュメント - エンタープライズデータ交換
- **NoSQL databases** - MongoDB, Elasticsearch
  - NoSQLデータベース - MongoDB、Elasticsearch
- **Log files** - Application and server logs
  - ログファイル - アプリケーションとサーバーのログ

```python
# Example: Semi-structured data in JSON format
import json

# Sample JSON data
data = {
    "customer_id": 1001,
    "name": "田中太郎",
    "age": 28,
    "purchases": [
        {"date": "2025-01-15", "amount": 5000, "items": ["book", "pen"]},
        {"date": "2025-02-20", "amount": 10000, "items": ["laptop_stand"]}
    ],
    "preferences": {
        "categories": ["technology", "books"],
        "notifications": True
    }
}

# Processing semi-structured data
print(f"Customer: {data['name']}")
print(f"Total purchases: {len(data['purchases'])}")
```

### Advantages for ML | MLにおける利点

- **Flexibility** - Easy to add new fields without schema changes
  - 柔軟性 - スキーマ変更なしで新しいフィールドを追加可能
- **Rich context** - Preserves hierarchical relationships and metadata
  - 豊富なコンテキスト - 階層的関係とメタデータを保持
- **API-friendly** - Common format for web services and APIs
  - API対応 - WebサービスとAPIの一般的なフォーマット
- **Version tolerance** - Can handle different versions of data structure
  - バージョン許容 - データ構造の異なるバージョンを処理可能

### Challenges | 課題

- **Parsing complexity** - Requires specialized parsing and flattening
  - 解析の複雑さ - 専用の解析と平坦化が必要
- **Inconsistent structure** - Fields may vary between records
  - 不一致な構造 - レコード間でフィールドが異なる可能性
- **Storage overhead** - Metadata increases storage requirements
  - ストレージオーバーヘッド - メタデータがストレージ要件を増加
- **Feature extraction** - More complex to extract ML features
  - 特徴量抽出 - ML特徴量の抽出がより複雑

---

## 3. Unstructured Data | 非構造化データ

### Definition | 定義

Unstructured data has no predefined structure or organization. It includes free-form text, images, audio, video, and other media that don't fit into traditional databases.

非構造化データには事前定義された構造や組織がありません。自由形式のテキスト、画像、音声、動画、その他従来のデータベースに収まらないメディアが含まれます。

### Characteristics | 特徴

- **No fixed format** - No standardized structure
  - 固定フォーマットなし - 標準化された構造がない
- **Human-readable** - Often designed for human consumption
  - 人間が読める - しばしば人間の消費向けに設計
- **Context-dependent** - Meaning depends on interpretation
  - 文脈依存 - 意味が解釈に依存
- **High dimensionality** - Can have millions of features
  - 高次元性 - 数百万の特徴量を持つ可能性

### Examples | 例

- **Text documents** - Emails, social media posts, articles
  - テキスト文書 - メール、ソーシャルメディア投稿、記事
- **Images** - Photographs, diagrams, screenshots
  - 画像 - 写真、図表、スクリーンショット
- **Audio/Video** - Recordings, podcasts, videos
  - 音声/動画 - 録音、ポッドキャスト、動画
- **Web pages** - HTML content with mixed media
  - Webページ - 混合メディアを含むHTMLコンテンツ

```python
# Example: Processing unstructured text data
from sklearn.feature_extraction.text import TfidfVectorizer

# Sample unstructured text data
texts = [
    "機械学習は人工知能の重要な分野です。",
    "Machine learning is a subset of artificial intelligence.",
    "データサイエンスにはプログラミングスキルが必要です。"
]

# Converting unstructured text to structured features
vectorizer = TfidfVectorizer()
features = vectorizer.fit_transform(texts)

print(f"Feature matrix shape: {features.shape}")
print(f"Vocabulary size: {len(vectorizer.vocabulary_)}")
```

### Advantages for ML | MLにおける利点

- **Rich information** - Contains nuanced, complex information
  - 豊富な情報 - 微妙で複雑な情報を含む
- **Real-world data** - Reflects actual user behavior and content
  - 実世界データ - 実際のユーザー行動とコンテンツを反映
- **Growing field** - Advanced techniques (NLP, computer vision) are rapidly improving
  - 成長分野 - 高度な技術（NLP、コンピュータビジョン）が急速に向上
- **Diverse applications** - Enables innovative ML applications
  - 多様なアプリケーション - 革新的なMLアプリケーションを可能に

### Challenges | 課題

- **Preprocessing intensive** - Requires significant transformation
  - 集中的な前処理 - 大規模な変換が必要
- **Specialized techniques** - Needs NLP, computer vision, or audio processing
  - 専門技術 - NLP、コンピュータビジョン、または音声処理が必要
- **Computational cost** - High processing and storage requirements
  - 計算コスト - 高い処理とストレージ要件
- **Quality variability** - Difficult to ensure consistent quality
  - 品質のばらつき - 一貫した品質の確保が困難
- **Labeling effort** - Manual annotation is time-consuming
  - ラベリング作業 - 手動のアノテーションに時間がかかる

---

## Comparison Table | 比較表

| Aspect<br>側面 | Structured<br>構造化 | Semi-Structured<br>半構造化 | Unstructured<br>非構造化 |
|---|---|---|---|
| **Organization<br>組織化** | Highly organized<br>高度に組織化 | Partially organized<br>部分的に組織化 | Not organized<br>組織化されていない |
| **Schema<br>スキーマ** | Fixed, strict<br>固定、厳格 | Flexible, self-describing<br>柔軟、自己記述的 | No schema<br>スキーマなし |
| **Examples<br>例** | CSV, SQL databases<br>CSV、SQLデータベース | JSON, XML, logs<br>JSON、XML、ログ | Text, images, video<br>テキスト、画像、動画 |
| **ML Readiness<br>ML準備度** | High - ready to use<br>高 - すぐに使用可能 | Medium - needs parsing<br>中 - 解析が必要 | Low - needs transformation<br>低 - 変換が必要 |
| **Storage<br>ストレージ** | Efficient<br>効率的 | Moderate<br>中程度 | Large<br>大容量 |
| **Processing<br>処理** | SQL, pandas<br>SQL、pandas | JSON parsers, NoSQL<br>JSONパーサー、NoSQL | NLP, CV, specialized tools<br>NLP、CV、専門ツール |
| **Typical Size<br>一般的なサイズ** | MB to GB<br>MBからGB | GB to TB<br>GBからTB | TB to PB<br>TBからPB |
| **Learning Curve<br>学習曲線** | Easy<br>簡単 | Moderate<br>中程度 | Steep<br>急勾配 |

---

## When to Use Which | どれを使用すべきか

### Choose Structured Data When | 構造化データを選択する場合:

- You need quick analysis and clear insights
  - 迅速な分析と明確な洞察が必要な場合
- Working with tabular business data (sales, finance, customer records)
  - 表形式のビジネスデータ（売上、財務、顧客記録）を扱う場合
- Building traditional ML models (regression, classification on numerical/categorical data)
  - 従来のMLモデルを構築する場合（数値/カテゴリカルデータでの回帰、分類）
- Data quality and consistency are priorities
  - データ品質と一貫性が優先事項の場合

### Choose Semi-Structured Data When | 半構造化データを選択する場合:

- Working with web APIs and services
  - Web APIとサービスを扱う場合
- Data schema evolves frequently
  - データスキーマが頻繁に進化する場合
- Need to preserve hierarchical relationships
  - 階層的関係を保持する必要がある場合
- Integrating multiple data sources with different formats
  - 異なるフォーマットの複数のデータソースを統合する場合

### Choose Unstructured Data When | 非構造化データを選択する場合:

- Building NLP applications (sentiment analysis, chatbots)
  - NLPアプリケーションを構築する場合（感情分析、チャットボット）
- Working with images or video (object detection, face recognition)
  - 画像や動画を扱う場合（物体検出、顔認識）
- Analyzing user-generated content (reviews, social media)
  - ユーザー生成コンテンツを分析する場合（レビュー、ソーシャルメディア）
- The valuable information is in free-form content
  - 価値ある情報が自由形式のコンテンツにある場合

---

## ML Processing Requirements | ML処理要件

### Structured Data Processing | 構造化データ処理

1. **Load data** using pandas, SQL, or similar tools
   - pandasやSQLなどのツールを使用してデータを読み込む
2. **Handle missing values** - imputation or removal
   - 欠損値の処理 - 補完または削除
3. **Encode categorical variables** - one-hot encoding, label encoding
   - カテゴリカル変数のエンコード - ワンホットエンコーディング、ラベルエンコーディング
4. **Scale numerical features** - normalization, standardization
   - 数値特徴量のスケーリング - 正規化、標準化
5. **Split data** - train/test/validation sets
   - データ分割 - 訓練/テスト/検証セット

### Semi-Structured Data Processing | 半構造化データ処理

1. **Parse data** using JSON/XML libraries
   - JSON/XMLライブラリを使用してデータを解析
2. **Flatten hierarchies** - convert nested structures to tables
   - 階層の平坦化 - ネスト構造をテーブルに変換
3. **Extract relevant fields** - select features for ML
   - 関連フィールドの抽出 - MLの特徴量を選択
4. **Handle inconsistencies** - missing fields, type variations
   - 不整合の処理 - 欠損フィールド、型のバリエーション
5. **Convert to structured format** for most ML algorithms
   - ほとんどのMLアルゴリズム用に構造化フォーマットに変換

### Unstructured Data Processing | 非構造化データ処理

1. **Collect and organize** raw data files
   - 生データファイルを収集して整理
2. **Preprocess content**:
   - コンテンツの前処理:
   - Text: tokenization, stopword removal, stemming
     - テキスト: トークン化、ストップワード除去、ステミング
   - Images: resizing, normalization, augmentation
     - 画像: リサイズ、正規化、拡張
3. **Feature extraction**:
   - 特徴量抽出:
   - Text: TF-IDF, word embeddings, BERT
     - テキスト: TF-IDF、単語埋め込み、BERT
   - Images: CNN features, edge detection
     - 画像: CNN特徴量、エッジ検出
4. **Build/train specialized models** - deep learning often required
   - 専門モデルの構築/訓練 - しばしば深層学習が必要
5. **Evaluate and iterate** with domain-specific metrics
   - ドメイン固有のメトリクスで評価と反復

---

## Decision Guide | 決定ガイド

**Start by asking:**

1. **Can the data fit into a table with fixed columns?**
   - Yes → Structured Data
   - Partially → Semi-Structured Data
   - No → Unstructured Data

2. **What tools do you have available?**
   - Excel/SQL → Structured works best
   - Python with JSON libraries → Semi-structured is manageable
   - Deep learning frameworks → Unstructured is possible

3. **What is your project timeline?**
   - Short (weeks) → Prefer structured
   - Medium (months) → Semi-structured is feasible
   - Long (months+) → Unstructured is acceptable

4. **What is your team's expertise?**
   - Beginners → Start with structured
   - Intermediate → Semi-structured is appropriate
   - Advanced → Unstructured is viable

---

## Key Takeaways | 重要なポイント

- **Structured data** is easiest to work with but least flexible
  - 構造化データは最も扱いやすいが、柔軟性が最も低い
- **Semi-structured data** balances flexibility and usability
  - 半構造化データは柔軟性と使いやすさのバランスが取れている
- **Unstructured data** contains the richest information but requires the most effort
  - 非構造化データは最も豊富な情報を含むが、最も多くの労力を要する
- **Many projects use a combination** of multiple data types
  - 多くのプロジェクトは複数のデータ型の組み合わせを使用
- **Choose based on your project goals, resources, and timeline**
  - プロジェクトの目標、リソース、タイムラインに基づいて選択

---

**Created for ML-101: Week 2**
*This reference guide supports your learning in Week 2's data collection and preparation topics.*
