# Text Preprocessing Guide for ML
# ML用テキスト前処理ガイド

## Quick Reference | クイックリファレンス

This guide provides practical code examples for preprocessing text data for machine learning.

---

## 1. Text Cleaning

### Remove HTML Tags
```python
import re
from html import unescape

def clean_html(text):
    """Remove HTML tags and decode entities"""
    # Remove HTML tags
    text = re.sub(r'<[^>]+>', '', text)
    # Decode HTML entities
    text = unescape(text)
    return text

# Example
text = "<p>Leading AI company &amp; ML solutions</p>"
clean = clean_html(text)
# Result: "Leading AI company & ML solutions"
```

### Remove URLs and Email
```python
def remove_urls_emails(text):
    """Remove URLs and email addresses"""
    # Remove URLs
    text = re.sub(r'http\S+|www\S+', '', text)
    # Remove emails
    text = re.sub(r'\S+@\S+', '', text)
    return text
```

### Remove Special Characters
```python
def remove_special_chars(text, keep_chars=''):
    """Remove special characters, optionally keep some"""
    pattern = f'[^a-zA-Z0-9\s{keep_chars}]'
    return re.sub(pattern, ' ', text)

# Example: keep Japanese characters
def remove_special_chars_jp(text):
    pattern = r'[^a-zA-Z0-9\sぁ-んァ-ン一-龥]'
    return re.sub(pattern, ' ', text)
```

---

## 2. Tokenization

### English Tokenization
```python
from sklearn.feature_extraction.text import CountVectorizer

# Simple approach
def tokenize_english(text):
    return text.lower().split()

# Better approach with sklearn
vectorizer = CountVectorizer(tokenizer=str.split)
```

### Japanese Tokenization with MeCab
```python
import MeCab

def tokenize_japanese_mecab(text):
    """Tokenize Japanese text using MeCab"""
    mecab = MeCab.Tagger()
    node = mecab.parseToNode(text)
    tokens = []

    while node:
        # Get part of speech
        pos = node.feature.split(',')[0]
        # Keep nouns, verbs, adjectives
        if pos in ['名詞', '動詞', '形容詞']:
            tokens.append(node.surface)
        node = node.next

    return tokens

# Example
text = "機械学習は素晴らしい技術です"
tokens = tokenize_japanese_mecab(text)
# Result: ['機械学習', '素晴らしい', '技術']
```

### Japanese Tokenization with Janome (easier installation)
```python
from janome.tokenizer import Tokenizer

def tokenize_japanese_janome(text):
    """Tokenize Japanese text using Janome"""
    tokenizer = Tokenizer()
    tokens = []

    for token in tokenizer.tokenize(text):
        # Get part of speech
        pos = token.part_of_speech.split(',')[0]
        # Keep nouns, verbs, adjectives
        if pos in ['名詞', '動詞', '形容詞']:
            tokens.append(token.surface)

    return tokens
```

---

## 3. Normalization

### Lowercase and Stopword Removal
```python
from sklearn.feature_extraction.text import ENGLISH_STOP_WORDS

def normalize_english(text):
    """Lowercase and remove stopwords"""
    # Lowercase
    text = text.lower()

    # Remove stopwords
    words = text.split()
    words = [w for w in words if w not in ENGLISH_STOP_WORDS]

    return ' '.join(words)
```

### Japanese Stopwords
```python
JAPANESE_STOPWORDS = [
    'の', 'に', 'は', 'を', 'た', 'が', 'で', 'て', 'と', 'し',
    'れ', 'さ', 'ある', 'いる', 'も', 'する', 'から', 'な',
    'こと', 'として', 'い', 'や', 'れる', 'など', 'なっ',
    'ない', 'この', 'ため', 'その', 'あっ', 'よう', 'また'
]

def remove_japanese_stopwords(tokens):
    """Remove Japanese stopwords from token list"""
    return [t for t in tokens if t not in JAPANESE_STOPWORDS]
```

---

## 4. Complete Preprocessing Pipeline

### For English Text
```python
class EnglishPreprocessor:
    def __init__(self):
        self.stopwords = ENGLISH_STOP_WORDS

    def preprocess(self, text):
        """Complete English preprocessing pipeline"""
        # Clean
        text = clean_html(text)
        text = remove_urls_emails(text)
        text = remove_special_chars(text)

        # Normalize whitespace
        text = re.sub(r'\s+', ' ', text).strip()

        # Lowercase
        text = text.lower()

        # Remove stopwords
        words = [w for w in text.split() if w not in self.stopwords]

        return ' '.join(words)

# Usage
preprocessor = EnglishPreprocessor()
text = "<p>We're a leading AI & ML company! Visit www.example.com</p>"
clean_text = preprocessor.preprocess(text)
# Result: "leading ai ml company"
```

### For Japanese Text
```python
class JapanesePreprocessor:
    def __init__(self, use_mecab=True):
        if use_mecab:
            import MeCab
            self.tokenizer = MeCab.Tagger()
            self.tokenize = self._tokenize_mecab
        else:
            from janome.tokenizer import Tokenizer
            self.tokenizer = Tokenizer()
            self.tokenize = self._tokenize_janome

        self.stopwords = JAPANESE_STOPWORDS

    def _tokenize_mecab(self, text):
        node = self.tokenizer.parseToNode(text)
        tokens = []
        while node:
            pos = node.feature.split(',')[0]
            if pos in ['名詞', '動詞', '形容詞']:
                tokens.append(node.surface)
            node = node.next
        return tokens

    def _tokenize_janome(self, text):
        tokens = []
        for token in self.tokenizer.tokenize(text):
            pos = token.part_of_speech.split(',')[0]
            if pos in ['名詞', '動詞', '形容詞']:
                tokens.append(token.surface)
        return tokens

    def preprocess(self, text):
        """Complete Japanese preprocessing pipeline"""
        # Clean
        text = clean_html(text)
        text = remove_urls_emails(text)
        text = remove_special_chars_jp(text)

        # Tokenize
        tokens = self.tokenize(text)

        # Remove stopwords
        tokens = [t for t in tokens if t not in self.stopwords]

        # Return as space-separated string for vectorizer
        return ' '.join(tokens)

# Usage
preprocessor = JapanesePreprocessor(use_mecab=True)
text = "株式会社テクノロジーは、<b>AI</b>とデータサイエンスのソリューションを提供しています。"
clean_text = preprocessor.preprocess(text)
# Result: "株式会社 テクノロジー ai データ サイエンス ソリューション 提供"
```

---

## 5. Feature Extraction

### Bag of Words
```python
from sklearn.feature_extraction.text import CountVectorizer

# Create vectorizer
bow_vectorizer = CountVectorizer(
    max_features=100,       # Limit to 100 features
    min_df=2,              # Word must appear in at least 2 docs
    max_df=0.8,            # Ignore words in >80% of docs
    ngram_range=(1, 1)     # Only unigrams
)

# Fit and transform
documents = [preprocessor.preprocess(text) for text in texts]
bow_features = bow_vectorizer.fit_transform(documents)

# View vocabulary
print(bow_vectorizer.get_feature_names_out())
```

### TF-IDF
```python
from sklearn.feature_extraction.text import TfidfVectorizer

# Create vectorizer
tfidf_vectorizer = TfidfVectorizer(
    max_features=100,       # Limit to 100 features
    min_df=2,              # Word must appear in at least 2 docs
    max_df=0.8,            # Ignore words in >80% of docs
    ngram_range=(1, 2),    # Unigrams and bigrams
    sublinear_tf=True      # Use log scaling for term frequency
)

# Fit and transform
documents = [preprocessor.preprocess(text) for text in texts]
tfidf_features = tfidf_vectorizer.fit_transform(documents)

# Save vectorizer for later use
import pickle
with open('tfidf_vectorizer.pkl', 'wb') as f:
    pickle.dump(tfidf_vectorizer, f)
```

---

## 6. Bilingual Text Processing

### For Mixed English-Japanese Text
```python
class BilingualPreprocessor:
    def __init__(self):
        self.en_preprocessor = EnglishPreprocessor()
        self.jp_preprocessor = JapanesePreprocessor()

    def detect_language(self, text):
        """Simple language detection"""
        # Count Japanese characters
        jp_chars = sum(1 for c in text if '\u3040' <= c <= '\u9fff')
        total_chars = len(text)

        # If >30% Japanese characters, treat as Japanese
        return 'ja' if jp_chars / max(total_chars, 1) > 0.3 else 'en'

    def preprocess(self, text):
        """Preprocess based on detected language"""
        lang = self.detect_language(text)

        if lang == 'ja':
            return self.jp_preprocessor.preprocess(text)
        else:
            return self.en_preprocessor.preprocess(text)

# Usage
preprocessor = BilingualPreprocessor()
texts = [
    "Leading AI company in Tokyo",
    "東京のAI企業です",
    "AI and ML solutions for 日本企業"
]

processed = [preprocessor.preprocess(t) for t in texts]
```

---

## 7. Complete Example Pipeline

```python
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
import pickle

# Load data
df = pd.read_csv('companies.csv')

# Initialize preprocessor
preprocessor = BilingualPreprocessor()

# Preprocess all descriptions
print("Preprocessing text...")
df['processed_text'] = df['description'].apply(preprocessor.preprocess)

# Remove empty results
df = df[df['processed_text'].str.len() > 0]

# Extract TF-IDF features
print("Extracting features...")
vectorizer = TfidfVectorizer(
    max_features=150,
    min_df=2,
    max_df=0.8,
    ngram_range=(1, 2)
)

features = vectorizer.fit_transform(df['processed_text'])

# Convert to DataFrame
feature_names = vectorizer.get_feature_names_out()
features_df = pd.DataFrame(
    features.toarray(),
    columns=feature_names,
    index=df['company_name']
)

# Save results
print("Saving results...")
features_df.to_csv('tfidf_features.csv')

with open('vectorizer.pkl', 'wb') as f:
    pickle.dump(vectorizer, f)

with open('preprocessor.pkl', 'wb') as f:
    pickle.dump(preprocessor, f)

print(f"Complete! Feature matrix shape: {features.shape}")
print(f"Vocabulary size: {len(feature_names)}")
print(f"\nTop 10 features:")
for word in feature_names[:10]:
    print(f"  - {word}")
```

---

## 8. Common Issues and Solutions

### Issue: "MeCab installation failed"
**Solution**: Use Janome instead
```bash
pip install janome
```

### Issue: "Too many features created"
**Solution**: Reduce max_features or increase min_df
```python
vectorizer = TfidfVectorizer(
    max_features=50,   # Reduce from 100
    min_df=3          # Increase from 2
)
```

### Issue: "Feature matrix is too sparse"
**Solution**: This is normal! Text data is inherently sparse
```python
# Check sparsity
sparsity = 1.0 - (features.nnz / (features.shape[0] * features.shape[1]))
print(f"Sparsity: {sparsity:.2%}")  # 80-95% is normal
```

### Issue: "Japanese tokenization returns empty"
**Solution**: Check that input is actually Japanese text
```python
def has_japanese(text):
    return any('\u3040' <= c <= '\u9fff' for c in text)

if not has_japanese(text):
    print("Warning: No Japanese characters found!")
```

---

## Best Practices

1. **Always save your vectorizer** - You'll need it to transform new data
2. **Test on small sample first** - Don't process all data until pipeline works
3. **Keep original text** - Save both raw and processed versions
4. **Document your choices** - Record why you chose specific parameters
5. **Check vocabulary** - Look at actual words to ensure sensible results
6. **Balance features** - Not too few (lose information), not too many (noise)

---

*For ML-101 Course - Week 6*
