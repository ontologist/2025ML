# Week 6: Text Mining & Feature Extraction
# 第6週：テキストマイニングと特徴抽出

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Welcome to Week 6!
## スライド1：第6週へようこそ！

**Topic:** Text Mining & Feature Extraction
**トピック:** テキストマイニングと特徴抽出

**Today's Objectives | 今日の目標:**
- Understand why computers can't read text directly | コンピュータがテキストを直接読めない理由を理解する
- Learn text preprocessing techniques | テキスト前処理技術を学ぶ
- Master Bag of Words and TF-IDF | Bag of WordsとTF-IDFを習得する
- Handle Japanese text processing | 日本語テキスト処理を扱う
- Prepare company descriptions for ML | ML用に企業説明を準備する

---

## Slide 2: The Text Problem
## スライド2:テキストの問題

### Computers Don't Understand Text
### コンピュータはテキストを理解しない

**The Challenge | 課題:**
- Machine learning algorithms need NUMBERS | 機械学習アルゴリズムは数値が必要
- Company descriptions are TEXT | 企業説明はテキスト
- We need to convert text → numbers | テキスト→数値への変換が必要

**Example | 例:**
```
❌ Computer sees: "Leading AI company"
   コンピュータが見るもの：「Leading AI company」

✅ Computer needs: [0.4, 0.6, 0.3, 0.5, ...]
   コンピュータが必要とするもの：[0.4, 0.6, 0.3, 0.5, ...]
```

**Solution | 解決策:**
**Text Mining** = Extracting numerical features from text
**テキストマイニング** = テキストから数値特徴を抽出すること

---

## Slide 3: Text Mining Pipeline
## スライド3：テキストマイニングパイプライン

### Five Essential Steps | 5つの必須ステップ

```
1. CLEAN TEXT        →    2. TOKENIZE       →    3. NORMALIZE
   テキストクリーニング          トークン化              正規化
   Remove noise              Split into words        Lowercase, stopwords

   ↓

4. STEM/LEMMATIZE   →    5. VECTORIZE
   語幹抽出/レンマ化            ベクトル化
   Reduce to roots           Convert to numbers
```

**Example Through Pipeline | パイプラインを通じた例:**

```
Original: "We're providing AI solutions for businesses!"
   ↓ Clean
"We are providing AI solutions for businesses"
   ↓ Tokenize
["We", "are", "providing", "AI", "solutions", "for", "businesses"]
   ↓ Normalize
["providing", "ai", "solutions", "businesses"]
   ↓ Vectorize
[0, 1, 0, 1, 0, 1, 1, 0, ...]
```

---

## Slide 4: Step 1 - Text Cleaning
## スライド4：ステップ1 - テキストクリーニング

### Removing Noise | ノイズの除去

**What to Remove | 削除するもの:**
- 🗑️ HTML tags: `<p>`, `<div>`, `<br>`
- 🗑️ Special characters: @, #, $, %, &
- 🗑️ Extra whitespace: multiple spaces, tabs
- 🗑️ URLs: http://example.com
- 🗑️ Numbers (sometimes): depends on context

**Example | 例:**
```
Before: "<p>Leading tech company! 🚀 Visit: www.example.com</p>"
前：「<p>Leading tech company! 🚀 Visit: www.example.com</p>」

After: "Leading tech company"
後：「Leading tech company」
```

**Why | なぜ:**
Noise doesn't help classification, just creates useless features
ノイズは分類に役立たず、無駄な特徴を作るだけ

---

## Slide 5: Step 2 - Tokenization
## スライド5：ステップ2 - トークン化

### Breaking Text into Words | テキストを単語に分割

**English Tokenization | 英語のトークン化:**
```
Text: "Machine learning is amazing"
テキスト：「Machine learning is amazing」

Tokens: ["Machine", "learning", "is", "amazing"]
トークン：["Machine", "learning", "is", "amazing"]
```
✅ Easy: Split by spaces | 簡単：スペースで分割

**Japanese Tokenization | 日本語のトークン化:**
```
Text: "機械学習は素晴らしい"
テキスト：「機械学習は素晴らしい」

Wrong ❌: ["機", "械", "学", "習", "は", "素", "晴", "ら", "し", "い"]
間違い：単一文字に分割

Correct ✅: ["機械学習", "は", "素晴らしい"]
正しい：意味のある単位に分割
```

**Japanese Tools | 日本語ツール:**
- **MeCab**: Fast, accurate, commonly used
- **Janome**: Pure Python, easier installation
- **SudachiPy**: Handles compound words well

---

## Slide 6: Step 3 - Normalization
## スライド6：ステップ3 - 正規化

### Making Text Consistent | テキストを一貫させる

**Normalization Techniques | 正規化技術:**

1. **Lowercase | 小文字化**
   ```
   "Technology" → "technology"
   "TECHNOLOGY" → "technology"
   ```

2. **Remove Stopwords | ストップワード除去**
   ```
   English: "the", "is", "are", "and", "of"
   Japanese: "は", "が", "を", "に", "の"

   "This is a great company" → "great company"
   ```

3. **Remove Punctuation | 句読点除去**
   ```
   "AI, ML, and data!" → "AI ML and data"
   ```

**Why | なぜ:**
- "Technology" and "technology" should be the SAME feature
- Common words like "the" don't help distinguish companies
- より意味のある特徴に焦点を当てる

---

## Slide 7: Step 4 - Stemming vs Lemmatization
## スライド7：ステップ4 - ステミング vs レンマ化

### Reducing Words to Root Forms | 単語を語根形式に還元

**Stemming (Fast, Rough) | ステミング（速い、大まか）:**
```
"running" → "run"
"runner" → "run"
"runs" → "run"
"running" → "run"  ✅
"university" → "univers"  ⚠️ Not a real word!
```

**Lemmatization (Slower, Accurate) | レンマ化（遅い、正確）:**
```
"running" → "run"
"runner" → "runner"  (different meaning)
"runs" → "run"
"better" → "good"  ✅ Understands meaning
"university" → "university"  ✅ Keeps real words
```

**For This Course | このコースでは:**
Usually stemming is fine for simple classification tasks
通常、単純な分類タスクにはステミングで十分

---

## Slide 8: Step 5 - Bag of Words
## スライド8：ステップ5 - Bag of Words

### Converting Text to Numbers (Method 1)
### テキストを数値に変換（方法1）

**Concept | コンセプト:**
Count how many times each word appears
各単語が何回出現するかをカウント

**Example | 例:**
```
Company A: "AI and data solutions"
Company B: "Data analytics and AI"
Company C: "Financial services"

Vocabulary: ["ai", "analytics", "and", "data", "financial", "services", "solutions"]
語彙：["ai", "analytics", "and", "data", "financial", "services", "solutions"]

        ai  analytics  and  data  financial  services  solutions
A       1      0       1    1       0          0         1
B       1      1       1    1       0          0         0
C       0      0       0    0       1          1         0
```

**Strengths | 強み:** Simple, interpretable | シンプル、解釈可能
**Weaknesses | 弱み:** Ignores importance, creates sparse matrices | 重要性を無視、疎行列を作成

---

## Slide 9: TF-IDF - Smarter Features
## スライド9：TF-IDF - よりスマートな特徴

### Weighting Words by Importance
### 重要度による単語の重み付け

**Problem with Bag of Words | Bag of Wordsの問題:**
"company" appears in EVERY description → not useful for distinguishing
「company」がすべての説明に出現 → 区別に役立たない

**TF-IDF Solution | TF-IDF解決策:**

**TF (Term Frequency) | 用語頻度:**
How often does this word appear in THIS document?
この単語はこの文書で何回出現するか？

**IDF (Inverse Document Frequency) | 逆文書頻度:**
How RARE is this word across ALL documents?
この単語はすべての文書でどれほど稀か？

**TF-IDF Score = TF × IDF**

**Example | 例:**
```
Word "company":
  - TF: High (appears often in one document)
  - IDF: Low (appears in all documents)
  - TF-IDF: Low ❌ Not distinctive

Word "biotechnology":
  - TF: High (appears often in one document)
  - IDF: High (rare across documents)
  - TF-IDF: High ✅ Very distinctive!
```

---

## Slide 10: TF-IDF Intuition
## スライド10：TF-IDF直感

### Visual Understanding | 視覚的理解

**Imagine 100 company descriptions:**
100の企業説明を想像してください：

```
Word: "company"
  Appears in: 95 companies
  TF-IDF: LOW (too common, not distinctive)

Word: "software"
  Appears in: 40 companies
  TF-IDF: MEDIUM (somewhat distinctive)

Word: "biotechnology"
  Appears in: 3 companies
  TF-IDF: HIGH (very distinctive!)
```

**Key Insight | 重要な洞察:**
Words that are common in ONE document but rare ACROSS documents are most important
1つの文書では一般的だが、文書全体では稀な単語が最も重要

---

## Slide 11: N-grams - Capturing Context
## スライド11：N-grams - コンテキストのキャプチャ

### Beyond Single Words | 単一単語を超えて

**Unigrams (1 word) | ユニグラム（1単語）:**
```
"machine learning solutions" → ["machine", "learning", "solutions"]
```

**Bigrams (2 words) | バイグラム（2単語）:**
```
"machine learning solutions" → ["machine learning", "learning solutions"]
```

**Trigrams (3 words) | トライグラム（3単語）:**
```
"machine learning solutions" → ["machine learning solutions"]
```

**Why Use N-grams? | なぜN-gramsを使用するか？**
- Captures phrases: "machine learning" vs "machine" + "learning"
- Better context: "not good" has different meaning than "good"
- More features (but also more dimensionality)

**Trade-off | トレードオフ:**
More context ✅ vs More features (curse of dimensionality) ❌

---

## Slide 12: Japanese Text Processing
## スライド12：日本語テキスト処理

### Special Considerations | 特別な考慮事項

**Challenges | 課題:**

1. **No Spaces Between Words | 単語間にスペースがない**
   ```
   "機械学習は素晴らしい"
   Need: MeCab/Janome to tokenize
   必要：MeCab/Janomeでトークン化
   ```

2. **Multiple Character Types | 複数の文字タイプ**
   ```
   Hiragana: ひらがな
   Katakana: カタカナ
   Kanji: 漢字
   Romaji: ABC
   ```

3. **Character Normalization | 文字正規化**
   ```
   Full-width: "ＡＢＣ１２３" → Half-width: "ABC123"
   Katakana variations: "コンピュータ" vs "コンピューター"
   ```

**Solution | 解決策:**
```python
import MeCab
mecab = MeCab.Tagger()
text = "機械学習は素晴らしい"
tokens = mecab.parse(text).split()
# Result: ['機械学習', 'は', '素晴らしい']
```

---

## Slide 13: Feature Matrix Dimensions
## スライド13：特徴行列の次元

### Understanding the Numbers | 数値の理解

**Your Company Dataset:**
あなたの企業データセット：

```
Number of companies: 30
Number of unique words (vocabulary): 500

Feature Matrix Shape: (30, 500)
特徴行列形状：(30, 500)

30 rows (companies) × 500 columns (features)
30行（企業） × 500列（特徴）
```

**Sparse Matrix Problem | 疎行列問題:**
```
Most cells are ZERO (word doesn't appear in that document)
ほとんどのセルはゼロ（その文書に単語が出現しない）

Example row: [0, 0, 0.5, 0, 0, 0, 0, 0.3, 0, 0, 0, ...]
             95% zeros!
```

**Solutions | 解決策:**
- Limit vocabulary size: `max_features=100`
- Remove rare words: `min_df=2` (appear in at least 2 documents)
- Remove common words: `max_df=0.8` (appear in max 80% of documents)

---

## Slide 14: Practical Code Example
## スライド14：実用的なコード例

### From Text to Features in Python
### Pythonでテキストから特徴へ

```python
from sklearn.feature_extraction.text import TfidfVectorizer

# Sample company descriptions
companies = [
    "Leading AI and machine learning company",
    "Traditional manufacturing and industrial solutions",
    "AI-powered data analytics platform"
]

# Create TF-IDF vectorizer
vectorizer = TfidfVectorizer(
    max_features=50,      # Limit to 50 most important words
    ngram_range=(1, 2),   # Use unigrams and bigrams
    min_df=1              # Word must appear in at least 1 doc
)

# Transform text to features
features = vectorizer.fit_transform(companies)

# Result: (3, 50) matrix - 3 companies, 50 features
print(features.shape)  # (3, 50)

# See vocabulary
print(vectorizer.get_feature_names_out())
# ['ai', 'analytics', 'company', 'data', 'learning',
#  'machine', 'ai powered', 'machine learning', ...]
```

---

## Slide 15: Today's Activity Preview
## スライド15：今日のアクティビティプレビュー

### What You'll Do | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Load Company Data** (10 min)
   - Import your collected company descriptions
   - 企業説明データをインポート

2. **Text Preprocessing** (15 min)
   - Clean, tokenize, normalize text
   - テキストをクリーニング、トークン化、正規化

3. **Feature Extraction** (15 min)
   - Apply Bag of Words and TF-IDF
   - Bag of WordsとTF-IDFを適用

4. **Feature Analysis** (10 min)
   - Examine important words for each company type
   - 各企業タイプの重要な単語を調査

5. **Save for ML** (10 min)
   - Export features for next week's classification
   - 来週の分類のために特徴をエクスポート

**The ML-101 Bot will guide you every step!**
**ML-101ボットが各ステップでガイドします！**

---

## Slide 16: Connection to Course Project
## スライド16：コースプロジェクトへの接続

### Why This Matters | なぜこれが重要か

**The Big Picture | 全体像:**

```
Week 1-5: Collected company descriptions (TEXT)
第1-5週：企業説明を収集（テキスト）

    ↓

Week 6 TODAY: Convert text to features (NUMBERS)
第6週今日：テキストを特徴に変換（数値）

    ↓

Week 7+: Train ML classifier (PREDICTIONS)
第7週以降：ML分類器を訓練（予測）
```

**Your Goal | あなたの目標:**
Convert company descriptions into numerical features that capture:
企業説明を次の内容を捉えた数値特徴に変換：
- Industry type (tech vs finance vs manufacturing)
- Company focus (AI, data, traditional business)
- Language patterns that indicate your interests

---

## Slide 17: Common Mistakes to Avoid
## スライド17：避けるべき一般的な間違い

### Text Processing Pitfalls | テキスト処理の落とし穴

❌ **Mistake 1: Not tokenizing Japanese text**
```python
# Wrong: Using default tokenizer for Japanese
text = "機械学習は素晴らしい"
tokens = text.split()  # Doesn't work - no spaces!
```

❌ **Mistake 2: Creating too many features**
```python
# Wrong: No feature limit
vectorizer = TfidfVectorizer()  # Might create 10,000+ features!
```

❌ **Mistake 3: Not saving the vectorizer**
```python
# Wrong: Can't process new data later
features = TfidfVectorizer().fit_transform(text)
# The vectorizer is lost! Can't transform new companies!
```

✅ **Correct Approach:**
```python
# Right: Save vectorizer for reuse
vectorizer = TfidfVectorizer(max_features=100)
features = vectorizer.fit_transform(text)
# Save: pickle.dump(vectorizer, file)
```

---

## Slide 18: Key Takeaways
## スライド18：重要なポイント

### Remember | 覚えておいてください

✅ **ML needs numbers, not text**
   機械学習は数値が必要、テキストではない

✅ **Text preprocessing pipeline: Clean → Tokenize → Normalize → Vectorize**
   テキスト前処理パイプライン：クリーニング → トークン化 → 正規化 → ベクトル化

✅ **TF-IDF highlights distinctive words**
   TF-IDFは特徴的な単語を強調する

✅ **Japanese text needs special tokenizers (MeCab, Janome)**
   日本語テキストには特別なトークナイザが必要（MeCab、Janome）

✅ **Save your vectorizer for reuse!**
   再利用のためにベクトライザを保存してください！

✅ **Balance: Enough features to capture meaning, not so many that you have noise**
   バランス：意味を捉えるのに十分な特徴、ノイズになるほど多くない

---

## Slide 19: Let's Get Started!
## スライド19：始めましょう！

**"Now let's transform your company descriptions into ML-ready features!"**
**「では、あなたの企業説明をML対応の特徴に変換しましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Load your company dataset
   企業データセットをロード

3. Begin text preprocessing pipeline
   テキスト前処理パイプラインを開始

4. Extract TF-IDF features
   TF-IDF特徴を抽出

5. Save features for next week!
   来週のために特徴を保存！

**Remember:** Good preprocessing = Better classification!
**覚えておいてください:** 良い前処理 = より良い分類！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum - focus on core concepts
- **Live Demo:** Show TF-IDF calculation with 2-3 real company descriptions
- **Engagement:** Ask "What words would distinguish a tech company from a bank?"
- **Visualization:** Draw the feature matrix on board to show dimensions
- **Japanese Context:** Emphasize tokenization challenge for Japanese students

### Common Questions

Q: "Should I remove all numbers from text?"
A: "Depends! '2020' might not help, but '24/7' or 'Fortune 500' might be meaningful."

Q: "How many features should I create?"
A: "Start with 50-100. Too few = lose information. Too many = noise and overfitting."

Q: "Do I need to understand the TF-IDF math?"
A: "Not the formula details! Understand the intuition: important = common in document, rare overall."

Q: "Can I use English tokenization for Japanese text?"
A: "No! You must use MeCab or Janome. English tokenizers split by spaces - Japanese has no spaces."

### After Lecture

- Students work with bot on text preprocessing
- Circulate to help with Japanese tokenizer installation
- Check that students are saving vectorizer for reuse
- Validate feature matrix dimensions are reasonable

### Technical Setup Note

**Before Class**: Verify MeCab/Janome installation instructions work on student systems
**Alternative**: Have Janome ready as backup (easier installation than MeCab)

---

**End of Week 6 Lecture Slides**
**第6週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
