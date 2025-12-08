---
layout: default
title: Week 6 - Text Mining & Feature Extraction
description: Transform text into ML-ready features for company classification
---

# Week 6: Text Mining & Feature Extraction
# 第6週：テキストマイニングと特徴抽出

[← Back to Course Overview](weeks-1-5.md)

---

## Learning Objectives

By the end of this week, you will be able to:

- **Understand** the fundamentals of text preprocessing and why it matters for ML
- **Apply** tokenization, stemming, and lemmatization techniques to text data
- **Extract** numerical features from text using Bag of Words and TF-IDF
- **Handle** Japanese text processing challenges with appropriate tools
- **Prepare** company description data for machine learning classification

学習目標：
- テキスト前処理の基礎とMLにとって重要な理由を理解する
- トークン化、ステミング、レンマ化技術をテキストデータに適用する
- Bag of WordsとTF-IDFを使用してテキストから数値特徴を抽出する
- 適切なツールを使用して日本語テキスト処理の課題を処理する
- 機械学習分類のために企業説明データを準備する

---

## Topics Covered

### Why Text Mining Matters for ML
- **The Challenge**: Computers can't understand text directly - they need numbers
- **The Solution**: Transform text into numerical features while preserving meaning
- **Real-world Applications**: Email spam detection, sentiment analysis, document classification
- **Course Project**: Converting company descriptions into features for classification

### Text Preprocessing Pipeline
1. **Cleaning**: Remove noise (HTML tags, special characters, extra whitespace)
2. **Tokenization**: Split text into individual words or tokens
3. **Normalization**: Lowercase, remove stopwords, handle punctuation
4. **Stemming/Lemmatization**: Reduce words to root forms
5. **Vectorization**: Convert to numerical representations

### Feature Extraction Methods

#### Bag of Words (BoW)
- **Concept**: Count how many times each word appears
- **Strengths**: Simple, interpretable, works well for many tasks
- **Weaknesses**: Ignores word order, creates sparse matrices, no semantic understanding

#### TF-IDF (Term Frequency-Inverse Document Frequency)
- **Concept**: Weight words by importance (frequent in document but rare overall)
- **Strengths**: Highlights distinctive words, reduces impact of common words
- **Weaknesses**: Still ignores word order, requires vocabulary from training data

#### N-grams
- **Concept**: Consider sequences of words (bigrams, trigrams)
- **Strengths**: Captures some context, finds phrases
- **Weaknesses**: Increases dimensionality significantly

### Japanese Text Processing
- **Special Considerations**: No spaces between words, multiple character types (hiragana, katakana, kanji)
- **Tokenization Tools**: MeCab, Janome, SudachiPy
- **Character Normalization**: Convert katakana, handle full-width characters
- **Stopwords**: Common Japanese particles and function words

---

## Materials & Links

### Lecture Slides
- [Week 6 Lecture: Text Mining & Feature Extraction](../lectures/week06-text-mining-slides.md)
- **Duration**: 15-20 minutes
- **Format**: Bilingual (English/Japanese)

### Activity Plan
- [Week 6 Hands-On Activity: Building Company Dataset with Text Features](../activities/week-plans/week06-company-dataset-activity.md)
- **Duration**: 40-60 minutes
- **Guided by**: ML-101 Bot

### Assignment
- [Week 6 Assignment: Text Feature Extraction for Company Classification](../assessments/week06-assignment.md)
- **Weight**: Part of 40% Weekly Activities grade
- **Due**: End of Week 6 class session

### Handouts & Resources
- [Text Preprocessing Guide](../resources/week06-materials/text-preprocessing-guide.md)
- [TF-IDF Explained with Examples](../resources/week06-materials/tfidf-explained.md)
- [Japanese Text Processing Quick Reference](../resources/week06-materials/japanese-text-processing.md)
- [Feature Extraction Code Examples](../resources/week06-materials/feature-extraction-examples.py)

---

## Activity Details

### What You'll Do (40-60 minutes)

**With ML-101 Bot Guidance:**

1. **Load and Explore Company Data** (10 min)
   - Import the company dataset collected in previous weeks
   - Examine company descriptions and text fields
   - Identify text cleaning needs

2. **Text Preprocessing Pipeline** (15 min)
   - Clean HTML tags and special characters
   - Tokenize company descriptions
   - Remove stopwords and normalize text
   - Handle both English and Japanese text

3. **Feature Extraction** (15 min)
   - Implement Bag of Words representation
   - Calculate TF-IDF features
   - Experiment with n-grams
   - Compare different feature representations

4. **Feature Analysis** (10 min)
   - Examine most important words/features
   - Visualize feature distributions
   - Identify distinctive keywords for different company types
   - Understand feature matrix dimensions

5. **Prepare Data for ML** (10 min)
   - Save processed features
   - Document preprocessing choices
   - Create reusable preprocessing pipeline
   - Prepare data for next week's classification

---

## Due Dates

**Assignment Submission**: End of Week 6 class session

**What to Submit**:
1. Preprocessed company dataset with extracted features (CSV/pickle format)
2. Text preprocessing and feature extraction code (Python script or Jupyter notebook)
3. Feature analysis report (1-2 pages with visualizations)
4. Preprocessing pipeline documentation
5. AI Transparency Statement (if external AI used)

**Format**: ZIP file containing all deliverables
**File naming**: `Week06_[YourName]_TextMining`
**Submit via**: ML-101 Bot Portal

**Late Policy**:
- Up to 24 hours late: -10%
- 24-48 hours late: -20%
- More than 48 hours: Not accepted (contact instructor first)

---

## ML-101 Bot Portal

**Access the ML-101 Bot**: [Bot Portal Link - To Be Provided]

**What the Bot Does**:
- Guides you through text preprocessing steps
- Provides code examples and debugging help
- Explains TF-IDF calculations with your actual data
- Validates your feature extraction implementation
- Answers Japanese text processing questions

**Remember**: The bot helps you understand concepts - make sure you comprehend each preprocessing step!

---

## Tips for Success

### Getting Started
- **Review your data first**: Look at actual company descriptions before processing
- **Start simple**: Begin with basic Bag of Words before trying advanced techniques
- **Test incrementally**: Process one company description first, then apply to all
- **Keep original data**: Always preserve raw text alongside processed features

### Common Mistakes to Avoid
- Not handling Japanese text properly (no tokenization)
- Removing too many stopwords and losing important information
- Creating too many features (curse of dimensionality)
- Not documenting preprocessing choices
- Forgetting to save the vectorizer for later use

### Example Text Preprocessing Steps

**Raw Company Description**:
```
"株式会社テクノロジーは、AIとデータサイエンスのソリューションを提供する leading technology company です。"
```

**After Preprocessing**:
```
Tokens: ['株式会社', 'テクノロジー', 'ai', 'データ', 'サイエンス', 'ソリューション', '提供', 'leading', 'technology', 'company']
Cleaned: ['テクノロジー', 'ai', 'データ', 'サイエンス', 'ソリューション', '提供', 'technology', 'company']
```

**TF-IDF Features**:
```
technology: 0.45
data: 0.38 (from データ)
ai: 0.52
solution: 0.31 (from ソリューション)
...
```

---

## Technical Setup

### Required Python Libraries

```python
# Text processing
import pandas as pd
import numpy as np
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer

# Japanese text processing
import MeCab  # or Janome
import re

# Visualization
import matplotlib.pyplot as plt
import seaborn as sns
from wordcloud import WordCloud
```

### Installation Commands

```bash
# Install Japanese text processing
pip install mecab-python3
pip install unidic-lite  # Dictionary for MeCab
# OR
pip install janome

# Install other text mining tools
pip install wordcloud
pip install nltk
```

---

## Key Concepts to Master

### 1. Tokenization
**What**: Splitting text into individual units (words, characters, n-grams)
**Why**: Computers process individual tokens, not entire paragraphs
**Challenge**: Japanese has no spaces - need special tokenizers

### 2. TF-IDF Intuition
- **TF (Term Frequency)**: How often does this word appear in THIS document?
- **IDF (Inverse Document Frequency)**: How rare is this word ACROSS ALL documents?
- **TF-IDF**: TF × IDF = Words that are common in this document but rare overall are most important

### 3. Vocabulary and Sparse Matrices
- **Vocabulary**: Set of all unique words across all documents
- **Sparse Matrix**: Most documents don't contain most words (mostly zeros)
- **Dimensionality**: Number of features = size of vocabulary

### 4. Preprocessing Trade-offs
- **More aggressive cleaning**: Fewer features, less noise, but might lose information
- **Less aggressive cleaning**: More features, more noise, but preserve context
- **Balance**: Remove obvious noise, keep meaningful variation

---

## Connection to Course Project

**This Week's Role**: Text features are the INPUT to your ML classifier

**Next Week**: You'll use these features to train classification models

**Pipeline Flow**:
```
Company Description (text)
    ↓ [Week 6: Text Preprocessing]
TF-IDF Features (numbers)
    ↓ [Week 7+: Model Training]
Classification (interested/not interested)
```

**Real Impact**: Good text preprocessing = Better classification accuracy

---

## Quick Navigation

| Previous Week | Next Week | All Weeks |
|--------------|-----------|-----------|
| [Week 5: No-Code Scraping →](week05.md) | [Week 7: Data Cleaning & Preparation →](week07.md) | [Course Overview](weeks-1-5.md) |

---

## Need Help?

**During Class**:
- Ask the ML-101 Bot for step-by-step guidance
- Raise your hand for instructor help
- Compare approaches with classmates (but write your own code)

**Outside Class**:
- ML-101 Bot Portal (available 24/7)
- Email instructor: [To Be Provided]
- Office hours: [To Be Provided]

**Technical Issues**:
- MeCab installation problems? Try Janome instead
- TF-IDF not working? Check for empty strings in your data
- Too many features? Limit max_features parameter in vectorizer

---

**Ready to Start?**

1. Review the [lecture slides](../lectures/week06-text-mining-slides.md)
2. Install required Python libraries
3. Open the [ML-101 Bot portal](#)
4. Begin the [hands-on activity](../activities/week-plans/week06-company-dataset-activity.md)
5. Complete and submit the [assignment](../assessments/week06-assignment.md)

**Remember**: Text mining is the bridge between human language and machine learning!

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#week-6-text-mining--feature-extraction)
