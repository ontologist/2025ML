# Week 6 Assignment: Text Feature Extraction for Company Classification
# 第6週課題：企業分類のためのテキスト特徴抽出

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Week:** 6 | 第6週
**Due Date:** End of Week 6 class session | 第6週授業終了時
**Weight:** Part of 40% Weekly Activities grade | 週次アクティビティ評価40%の一部
**Submission:** Through ML-101 Bot Portal | ML-101ボットポータル経由

---

## Assignment Overview | 課題概要

This assignment transforms your company dataset from raw text to numerical features ready for machine learning. You'll implement text preprocessing, apply feature extraction techniques, and prepare data for classification models.

この課題は、生のテキストからML準備済みの数値特徴へ企業データセットを変換します。テキスト前処理を実装し、特徴抽出技術を適用し、分類モデルのためにデータを準備します。

---

## Learning Objectives | 学習目標

By completing this assignment, you will be able to:
この課題を完了することで、以下ができるようになります：

- ✅ Implement a complete text preprocessing pipeline
  完全なテキスト前処理パイプラインを実装する

- ✅ Extract numerical features from text using Bag of Words and TF-IDF
  Bag of WordsとTF-IDFを使用してテキストから数値特徴を抽出する

- ✅ Handle both English and Japanese text appropriately
  英語と日本語のテキストを適切に処理する

- ✅ Analyze and interpret text features for ML
  MLのためのテキスト特徴を分析して解釈する

- ✅ Prepare feature matrices for classification tasks
  分類タスクのための特徴行列を準備する

---

## Prerequisites | 前提条件

- ✅ Completed Week 1-5 assignments
  第1-5週の課題を完了

- ✅ Company dataset with text descriptions (from previous weeks)
  テキスト説明を含む企業データセット（前週から）

- ✅ Python environment with sklearn, pandas, numpy
  sklearn、pandas、numpyを含むPython環境

- ✅ Japanese text processing library (MeCab or Janome) - if processing Japanese
  日本語テキスト処理ライブラリ（MeCabまたはJanome） - 日本語処理の場合

---

## Assignment Deliverables | 課題成果物

### Deliverable 1: Preprocessed Company Dataset
### 成果物1：前処理済み企業データセット

**Required Content | 必要な内容:**

Transform your company dataset through complete text preprocessing pipeline and extract features.

完全なテキスト前処理パイプラインを通じて企業データセットを変換し、特徴を抽出します。

**Required Processing Steps | 必要な処理ステップ:**

1. **Text Cleaning**
   - Remove HTML tags, URLs, special characters
   - Handle encoding issues
   - Normalize whitespace

2. **Tokenization**
   - Split text into words/tokens
   - Use appropriate tokenizer for language (MeCab/Janome for Japanese)
   - Document tokenization approach

3. **Normalization**
   - Convert to lowercase (for applicable languages)
   - Remove stopwords
   - Handle punctuation

4. **Feature Extraction**
   - Implement Bag of Words representation
   - Calculate TF-IDF features
   - Experiment with n-grams (unigrams + bigrams recommended)

**Output Format | 出力形式:**
- Processed feature matrix saved as CSV or pickle file
- Include company names/IDs for tracking
- Document feature dimensions (rows × columns)

**Scoring (30 points) | 採点（30点）:**
- Complete preprocessing pipeline: 10 points
- Correct feature extraction implementation: 10 points
- Appropriate handling of language-specific issues: 5 points
- Saved in usable format with documentation: 5 points

---

### Deliverable 2: Text Processing Code
### 成果物2：テキスト処理コード

**Required Content | 必要な内容:**

Well-documented Python code implementing your text preprocessing and feature extraction pipeline.

テキスト前処理と特徴抽出パイプラインを実装する、適切に文書化されたPythonコード。

**Code Requirements | コード要件:**

```python
# Must include:
# 含める必要があるもの：

1. Text cleaning functions
   テキストクリーニング関数

2. Tokenization implementation
   トークン化実装

3. Feature extraction using sklearn
   sklearnを使用した特徴抽出

4. Code to save/load vectorizer for reuse
   再利用のためにベクトライザを保存/ロードするコード

5. Comments explaining each step
   各ステップを説明するコメント
```

**Format Options | 形式オプション:**
- Python script (.py file)
- Jupyter notebook (.ipynb) - preferred for visualization
- Include requirements.txt for dependencies

**Scoring (25 points) | 採点（25点）:**
- Code runs without errors: 10 points
- Proper implementation of preprocessing steps: 8 points
- Code documentation and comments: 4 points
- Reusable/modular design: 3 points

---

### Deliverable 3: Feature Analysis Report
### 成果物3：特徴分析レポート

**Required Content | 必要な内容:**

Analyze and visualize the extracted features to understand what your data looks like numerically.

抽出された特徴を分析して視覚化し、データが数値的にどのように見えるかを理解します。

**Analysis Requirements | 分析要件:**

1. **Feature Matrix Dimensions**
   - Report: Number of companies × Number of features
   - Example: "30 companies × 150 features"

2. **Top Features Analysis**
   - List top 15-20 words by TF-IDF score
   - Explain what these words reveal about your dataset
   - Compare features across different company types (if labeled)

3. **Vocabulary Statistics**
   - Total unique words in vocabulary
   - Average document length (in tokens)
   - Sparsity of feature matrix

4. **Visualizations** (include at least 2)
   - Word cloud of most important terms
   - Bar chart of top 20 features by average TF-IDF
   - Feature distribution histogram

5. **Interpretation**
   - What patterns do you see in the features?
   - Are there distinctive words for different company types?
   - Any surprising or unexpected features?

**Format | 形式:**
- PDF or Word document with embedded visualizations
- 2-3 pages including charts
- Bilingual acceptable (English or Japanese)

**Scoring (25 points) | 採点（25点）:**
- Feature matrix documentation: 5 points
- Top features analysis: 7 points
- Visualizations quality: 8 points
- Thoughtful interpretation: 5 points

---

### Deliverable 4: Preprocessing Pipeline Documentation
### 成果物4：前処理パイプライン文書

**Required Content | 必要な内容:**

Document all decisions made during preprocessing and their justifications.

前処理中に行われたすべての決定とその正当化を文書化します。

**Documentation Requirements | 文書要件:**

1. **Cleaning Decisions**
   - What did you remove and why?
   - Example: "Removed numbers because company founding years don't indicate industry"

2. **Tokenization Approach**
   - Which tokenizer did you use?
   - Why did you choose it?
   - Any tokenization challenges faced?

3. **Normalization Choices**
   - Which stopwords did you remove?
   - Did you use stemming or lemmatization? Why or why not?
   - Language-specific considerations

4. **Feature Extraction Parameters**
   ```python
   # Document choices like:
   max_features = 150  # Why 150?
   ngram_range = (1, 2)  # Why unigrams + bigrams?
   min_df = 2  # Why this threshold?
   max_df = 0.8  # Why this threshold?
   ```

5. **Challenges and Solutions**
   - What problems did you encounter?
   - How did you solve them?
   - What would you do differently?

**Format | 形式:**
- 1-2 page document (PDF or Word)
- Clear section headers
- Examples to illustrate decisions

**Scoring (10 points) | 採点（10点）:**
- Complete documentation of decisions: 5 points
- Clear justifications: 3 points
- Reflection on challenges: 2 points

---

### Deliverable 5: AI Transparency Statement (if applicable)
### 成果物5：AI透明性声明（該当する場合）

**Required Content | 必要な内容:**

If you used external AI tools (ChatGPT, Claude, etc.) beyond the ML-101 Bot, document:

ML-101ボット以外の外部AIツール（ChatGPT、Claudeなど）を使用した場合、文書化：

- Which AI tools you used
- All prompts sent to AI
- All AI responses received
- How you verified AI suggestions
- What you implemented from AI vs your own work

**Scoring (10 points if required) | 採点（必要な場合10点）:**
- Complete transparency: 10 points
- OR: Clear statement that no external AI was used

---

## Submission Instructions | 提出指示

### How to Submit | 提出方法

1. **Organize all deliverables** into folder structure:
   ```
   Week06_[YourName]_TextMining/
   ├── data/
   │   ├── features_bow.csv (or .pkl)
   │   ├── features_tfidf.csv (or .pkl)
   │   └── vectorizer.pkl
   ├── code/
   │   ├── text_preprocessing.py (or .ipynb)
   │   └── requirements.txt
   ├── analysis/
   │   ├── feature_analysis_report.pdf
   │   └── visualizations/ (if separate)
   ├── documentation/
   │   └── preprocessing_pipeline_doc.pdf
   └── transparency/
       └── ai_transparency.txt (if applicable)
   ```

2. **Create ZIP file**: `Week06_[YourName]_TextMining.zip`

3. **Upload through ML-101 Bot Portal**

4. **Confirm submission** (you should receive automated confirmation)

### Submission Deadline | 提出期限

**Due:** End of Week 6 class session
**期限:** 第6週授業終了時

**Late Policy | 遅延ポリシー:**
- Up to 24 hours late: -10%
- 24-48 hours late: -20%
- More than 48 hours late: Not accepted without prior arrangement

---

## Grading Rubric | 評価ルーブリック

### Total Points: 100 | 合計点：100

| Deliverable | Points | Criteria |
|-------------|--------|----------|
| **Preprocessed Dataset** | 30 | Complete pipeline, correct features, proper format |
| **Processing Code** | 25 | Runs correctly, well-documented, reusable |
| **Feature Analysis** | 25 | Dimensions, top features, visualizations, interpretation |
| **Pipeline Documentation** | 10 | Decisions documented, justifications clear |
| **AI Transparency** | 10 | Complete if used, or clear statement if not |
| **TOTAL** | **100** | |

---

## Tips for Success | 成功のためのヒント

### Getting Started | 始め方

✅ **Start with one company**
   1社から始める
   - Test your preprocessing on ONE description first
   - Make sure it works before processing all

✅ **Use the bot for guidance**
   ガイダンスのためにボットを使用する
   - Ask: "How do I install MeCab for Japanese?"
   - Ask: "What's a good max_features value for 30 companies?"

✅ **Save everything**
   すべてを保存する
   - Save vectorizer: `pickle.dump(vectorizer, file)`
   - You'll need it next week for classification!

✅ **Check your dimensions**
   次元を確認する
   - If you have 30 companies and 1000+ features, reduce features
   - Good rule: features < number of companies

### Common Mistakes to Avoid | 避けるべきよくある間違い

❌ **Not handling Japanese text properly**
   日本語テキストを適切に処理しない
   - MUST use MeCab or Janome for Japanese tokenization
   - Cannot use default English tokenizer

❌ **Creating too many features**
   特徴を作りすぎる
   - Use `max_features` parameter to limit
   - Start with 50-150 features

❌ **Not saving the vectorizer**
   ベクトライザを保存しない
   ```python
   # Wrong:
   features = TfidfVectorizer().fit_transform(text)

   # Right:
   vectorizer = TfidfVectorizer()
   features = vectorizer.fit_transform(text)
   pickle.dump(vectorizer, open('vectorizer.pkl', 'wb'))
   ```

❌ **No interpretation of results**
   結果の解釈がない
   - Don't just print numbers - explain what they mean!
   - Look at top features and make sense of them

---

## Example Code Snippets | コード例スニペット

### Basic TF-IDF Implementation

```python
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
import pickle

# Load company data
df = pd.read_csv('companies.csv')

# Initialize vectorizer
vectorizer = TfidfVectorizer(
    max_features=100,      # Limit to 100 most important features
    ngram_range=(1, 2),    # Use unigrams and bigrams
    min_df=2,              # Word must appear in at least 2 docs
    max_df=0.8,            # Ignore words in more than 80% of docs
    stop_words='english'   # Remove English stopwords
)

# Extract features
features = vectorizer.fit_transform(df['description'])

# Save vectorizer for later use
with open('vectorizer.pkl', 'wb') as f:
    pickle.dump(vectorizer, f)

# Convert to DataFrame
feature_names = vectorizer.get_feature_names_out()
features_df = pd.DataFrame(
    features.toarray(),
    columns=feature_names,
    index=df['company_name']
)

# Save features
features_df.to_csv('tfidf_features.csv')
print(f"Feature matrix shape: {features.shape}")
```

### Japanese Text Processing Example

```python
import MeCab
# OR: from janome.tokenizer import Tokenizer

def tokenize_japanese(text):
    """Tokenize Japanese text using MeCab"""
    mecab = MeCab.Tagger()
    # Parse text and extract words
    node = mecab.parseToNode(text)
    tokens = []
    while node:
        # Get only nouns, verbs, adjectives
        if node.feature.split(',')[0] in ['名詞', '動詞', '形容詞']:
            tokens.append(node.surface)
        node = node.next
    return ' '.join(tokens)

# Apply to all descriptions
df['tokens'] = df['description_jp'].apply(tokenize_japanese)

# Then use TfidfVectorizer on tokenized text
vectorizer = TfidfVectorizer(max_features=100)
features = vectorizer.fit_transform(df['tokens'])
```

### Feature Analysis Example

```python
# Get top features by average TF-IDF score
feature_scores = features.mean(axis=0).A1
top_features = sorted(
    zip(feature_names, feature_scores),
    key=lambda x: x[1],
    reverse=True
)[:20]

# Print top features
print("Top 20 features:")
for word, score in top_features:
    print(f"{word}: {score:.3f}")

# Create visualization
import matplotlib.pyplot as plt

words = [w for w, s in top_features]
scores = [s for w, s in top_features]

plt.figure(figsize=(10, 6))
plt.barh(words, scores)
plt.xlabel('Average TF-IDF Score')
plt.title('Top 20 Most Important Features')
plt.tight_layout()
plt.savefig('top_features.png')
```

---

## Frequently Asked Questions | よくある質問

**Q: How many features should I create?**
**Q: いくつの特徴を作成すべきですか？**

A: For 20-30 companies, aim for 50-150 features. Use `max_features` parameter to limit.
A: 20-30社の場合、50-150特徴を目指してください。`max_features`パラメータを使用して制限します。

**Q: Should I use Bag of Words or TF-IDF?**
**Q: Bag of WordsまたはTF-IDFを使用すべきですか？**

A: Implement both, but TF-IDF is usually better for text classification. Submit TF-IDF features.
A: 両方を実装しますが、TF-IDFは通常テキスト分類により適しています。TF-IDF特徴を提出してください。

**Q: My feature matrix is 90% zeros - is this normal?**
**Q: 特徴行列が90%ゼロです - これは正常ですか？**

A: Yes! This is called sparsity and is normal for text data. Most documents don't contain most words.
A: はい！これは疎性と呼ばれ、テキストデータでは正常です。ほとんどの文書にはほとんどの単語が含まれていません。

**Q: Can I remove ALL stopwords?**
**Q: すべてのストップワードを削除できますか？**

A: Be careful! Some stopwords might be meaningful. Test with and without to see impact on features.
A: 注意してください！一部のストップワードは意味がある可能性があります。特徴への影響を確認するために、ある場合とない場合でテストしてください。

**Q: MeCab installation failed - what should I do?**
**Q: MeCabのインストールが失敗しました - どうすればよいですか？**

A: Try Janome instead: `pip install janome`. It's pure Python and easier to install.
A: 代わりにJanomeを試してください：`pip install janome`。純粋なPythonで、インストールが簡単です。

**Q: Should I include company names in features?**
**Q: 特徴に企業名を含めるべきですか？**

A: No! Company names don't help predict industry/type. Focus on description text only.
A: いいえ！企業名は業界/タイプの予測に役立ちません。説明テキストのみに焦点を当ててください。

---

## Getting Help | ヘルプを得る

**During Class Activity | 授業アクティビティ中:**
- Ask the ML-101 Bot for code examples
- Request debugging help from instructor
- Compare approaches with classmates

**Outside of Class | 授業外:**
- Bot portal for 24/7 technical guidance
- Email instructor for conceptual questions
- Office hours for in-depth help

---

## Academic Integrity | 学術的誠実性

**Permitted | 許可されている:**
- Using sklearn documentation and examples
- Asking bot for code debugging
- Discussing approaches with classmates
- Using AI tools with transparency documentation

**Not Permitted | 許可されていない:**
- Copying another student's code
- Using AI to write entire pipeline without understanding
- Submitting code you don't understand

---

**Good luck and enjoy discovering patterns in text!**
**頑張って、テキストのパターンを発見することを楽しんでください！**

*Assignment created for ML-101: Machine Learning and Intelligence*
*ML-101用に作成された課題：機械学習と知能*
