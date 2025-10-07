# ML-101 Final Project: Company Recommendation System
# ML-101最終プロジェクト：企業推薦システム

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Weight:** 35% of final grade | 最終成績の35％
**Type:** Individual Project | 個人プロジェクト

---

## Project Overview | プロジェクト概要

**Project Title:**
ML-Powered Company Recommendation System for Career Planning
キャリアプランニングのためのML搭載企業推薦システム

**Project Purpose | プロジェクトの目的:**

Build a complete machine learning system that helps you make data-driven career decisions by automatically classifying companies based on your personal interests and preferences. This project demonstrates the entire ML workflow from data collection to prediction, applying everything learned throughout the course to solve a real-world problem relevant to your job search.

あなたの個人的な興味と好みに基づいて企業を自動的に分類することで、データ駆動型のキャリア決定を支援する完全な機械学習システムを構築します。このプロジェクトは、データ収集から予測までの完全なMLワークフローを示し、コース全体で学んだすべてを就職活動に関連する実世界の問題解決に適用します。

**Connection to Course Learning Outcomes | コース学習成果とのつながり:**

This project synthesizes all 8 course learning outcomes:
このプロジェクトはすべての8つのコース学習成果を統合します：

1. Complete ML workflow from data to prediction | データから予測までの完全なMLワークフロー
2. Python in Google Colab for ML tasks | MLタスクのためのGoogle ColabでのPython
3. Web scraping and data preparation | Webスクレイピングとデータ準備
4. ML classification system using no-code tools | ノーコードツールを使用したML分類システム
5. Real-world career decision making | 実世界のキャリア意思決定
6. Model evaluation and interpretation | モデル評価と解釈
7. Critical thinking about AI capabilities and limitations | AIの能力と限界に関する批判的思考
8. AI chatbot usage with transparency | 透明性を伴うAIチャットボット使用

**Real-World Application | 実世界での応用:**

Unlike a traditional exam that tests memorization, this project creates something immediately useful for your career planning. Your company recommendation system can actually help you identify which companies align with your interests when you begin job hunting.

暗記をテストする従来の試験とは異なり、このプロジェクトはあなたのキャリアプランニングにすぐに役立つものを作成します。あなたの企業推薦システムは、就職活動を始めるときにどの企業があなたの興味に合致するかを実際に特定するのに役立ちます。

**Why This Project Instead of Final Exam | 最終試験ではなくこのプロジェクトである理由:**

- **Authentic Assessment:** Demonstrates real ML skills, not just theoretical knowledge | 理論的知識だけでなく実際のMLスキルを示す
- **Personally Relevant:** Directly applicable to your job search | あなたの就職活動に直接適用可能
- **Portfolio Piece:** Showcases your abilities to potential employers | 潜在的な雇用主にあなたの能力を示す
- **Practical Value:** Creates a tool you can actually use | 実際に使用できるツールを作成

---

## Project Learning Objectives | プロジェクト学習目標

Upon project completion, students will demonstrate:
プロジェクト完了時、学生は以下を示します：

1. **End-to-End ML Workflow | エンドツーエンドMLワークフロー:**
   - Ability to execute complete ML pipeline independently | 完全なMLパイプラインを独立して実行する能力
   - Understanding of how all ML components connect | すべてのMLコンポーネントがどのように接続するかの理解

2. **Data Engineering Skills | データエンジニアリングスキル:**
   - Web scraping for data collection | データ収集のためのWebスクレイピング
   - Data cleaning and quality assurance | データクリーニングと品質保証
   - Feature engineering from raw data | 生データからの特徴量エンジニアリング

3. **ML Model Development | MLモデル開発:**
   - Training classification models | 分類モデルの訓練
   - Model evaluation and selection | モデル評価と選択
   - Prediction generation and interpretation | 予測生成と解釈

4. **Critical AI Thinking | 批判的AI思考:**
   - Analysis of model limitations | モデルの限界の分析
   - Understanding of bias and fairness issues | バイアスと公平性の問題の理解
   - Ethical considerations in ML deployment | ML展開における倫理的考慮事項

5. **Professional Documentation | プロフェッショナル文書化:**
   - Clear technical writing | 明確な技術的執筆
   - AI transparency and verification | AI透明性と検証
   - Presentation of technical results | 技術的結果のプレゼンテーション

6. **Python and Tool Proficiency | Pythonとツールの熟達:**
   - Google Colab for data analysis | データ分析のためのGoogle Colab
   - No-code ML platforms | ノーコードMLプラットフォーム
   - Integration of multiple tools | 複数ツールの統合

---

## Project Options: Individual Only | プロジェクトオプション：個人のみ

**Work Arrangement | 作業体制:**

This project MUST be completed individually. Each student will build their own company recommendation system.
このプロジェクトは個人で完成させる必要があります。各学生は自分自身の企業推薦システムを構築します。

**Rationale for Individual Work | 個人作業の根拠:**

- Ensures every student masters the complete ML workflow | すべての学生が完全なMLワークフローを習得することを保証
- Personalizes the project to each student's career interests | 各学生のキャリア興味に合わせてプロジェクトを個別化
- Allows for fair, individual assessment | 公平な個別評価を可能にする
- Builds portfolio piece for each student | 各学生のポートフォリオ作品を構築

**Collaboration Policy | コラボレーションポリシー:**

While the project must be completed individually:
プロジェクトは個人で完成させる必要がありますが：

- ✅ **Allowed:** Discussing concepts and approaches with peers | ピアとコンセプトとアプローチを議論すること
- ✅ **Allowed:** Sharing resources and troubleshooting tips | リソースとトラブルシューティングのヒントを共有すること
- ✅ **Allowed:** Helping each other understand errors | エラーを理解するのを助け合うこと
- ❌ **Not Allowed:** Sharing code or data files | コードまたはデータファイルを共有すること
- ❌ **Not Allowed:** Working on the same dataset together | 同じデータセットで一緒に作業すること
- ❌ **Not Allowed:** Submitting similar or identical work | 類似または同一の作業を提出すること

---

## Project Requirements | プロジェクト要件

### Technical/Functional Requirements | 技術的・機能的要件

Your company recommendation system MUST include all of the following components:
あなたの企業推薦システムには以下のすべてのコンポーネントが含まれている必要があります：

#### 1. Data Collection Component | データ収集コンポーネント

**Requirements:**
- Collect data on at least 30 companies | 少なくとも30社のデータを収集
- Use web scraping (no-code tool or Python) | Webスクレイピングを使用（ノーコードツールまたはPython）
- Gather minimum 5 data fields per company | 企業ごとに最低5つのデータフィールドを収集
- Document data sources and collection methods | データソースと収集方法を文書化

**Suggested Data Fields:**
- Company name | 企業名
- Industry/sector | 業界・セクター
- Company size | 企業規模
- Job descriptions | 職務記述
- Company culture information | 企業文化情報
- Work environment details | 仕事環境の詳細

#### 2. Data Preparation Component | データ準備コンポーネント

**Requirements:**
- Clean collected data (handle missing values, outliers) | 収集したデータをクリーニング（欠損値、外れ値を処理）
- Document all cleaning decisions | すべてのクリーニング決定を文書化
- Create features from raw data | 生データから特徴量を作成
- Prepare dataset for ML model training | MLモデル訓練用のデータセットを準備

**Deliverables:**
- Cleaned dataset (CSV or similar format) | クリーニング済みデータセット（CSVまたは類似形式）
- Data cleaning documentation | データクリーニング文書

#### 3. Manual Classification Component | 手動分類コンポーネント

**Requirements:**
- Manually label at least 20 companies as "Interested" or "Not Interested" | 少なくとも20社を「興味あり」または「興味なし」として手動でラベル付け
- Base classifications on YOUR personal career preferences | あなたの個人的なキャリア好みに基づいて分類
- Document classification criteria used | 使用した分類基準を文書化
- Create training dataset with labels | ラベル付き訓練データセットを作成

**Deliverables:**
- Labeled training dataset | ラベル付き訓練データセット
- Classification criteria document | 分類基準文書

#### 4. ML Model Training Component | MLモデル訓練コンポーネント

**Requirements:**
- Train classification model using no-code ML platform | ノーコードMLプラットフォームを使用して分類モデルを訓練
- Use labeled data to train model | ラベル付きデータを使用してモデルを訓練
- Document model selection and training process | モデル選択と訓練プロセスを文書化
- Save trained model for predictions | 予測のために訓練済みモデルを保存

**Deliverables:**
- Trained ML model | 訓練済みMLモデル
- Model training documentation | モデル訓練文書

#### 5. Prediction and Evaluation Component | 予測と評価コンポーネント

**Requirements:**
- Test model on new/unlabeled companies | 新しい・ラベル付けされていない企業でモデルをテスト
- Generate predictions for at least 10 new companies | 少なくとも10社の新しい企業の予測を生成
- Evaluate model performance (accuracy, errors) | モデル性能を評価（精度、エラー）
- Interpret results and limitations | 結果と限界を解釈

**Deliverables:**
- Prediction results | 予測結果
- Model evaluation report | モデル評価レポート

#### 6. Critical Analysis Component | 批判的分析コンポーネント

**Requirements:**
- Analyze what the model learned | モデルが何を学習したかを分析
- Identify model limitations and potential biases | モデルの限界と潜在的なバイアスを特定
- Discuss ethical considerations | 倫理的考慮事項を議論
- Reflect on AI capabilities and limitations | AIの能力と限界について考察

**Deliverables:**
- Critical analysis section in final documentation | 最終文書の批判的分析セクション

---

### Documentation Requirements | 文書化要件

Your project documentation must include:
あなたのプロジェクト文書には以下が含まれている必要があります：

1. **Project Overview (1-2 pages) | プロジェクト概要（1-2ページ）**
   - Project goals and motivation | プロジェクトの目標と動機
   - Your personal career interests driving classifications | 分類を動かすあなたの個人的なキャリア興味
   - ML workflow overview | MLワークフロー概要

2. **Data Collection Documentation (2-3 pages) | データ収集文書（2-3ページ）**
   - Data sources used | 使用したデータソース
   - Scraping methodology | スクレイピング方法論
   - Data schema and fields collected | データスキーマと収集フィールド
   - Challenges and solutions | 課題と解決策

3. **Data Preparation Documentation (2-3 pages) | データ準備文書（2-3ページ）**
   - Cleaning procedures applied | 適用したクリーニング手順
   - Missing data handling strategies | 欠損データ処理戦略
   - Feature engineering decisions | 特徴量エンジニアリング決定
   - Final dataset statistics | 最終データセット統計

4. **Model Training Documentation (2-3 pages) | モデル訓練文書（2-3ページ）**
   - Manual classification criteria | 手動分類基準
   - ML platform and tools used | 使用したMLプラットフォームとツール
   - Training process and parameters | 訓練プロセスとパラメータ
   - Model selection rationale | モデル選択の根拠

5. **Results and Evaluation (2-3 pages) | 結果と評価（2-3ページ）**
   - Prediction results on new companies | 新しい企業での予測結果
   - Model performance metrics | モデル性能指標
   - Error analysis | エラー分析
   - Result interpretation | 結果の解釈

6. **Critical Analysis (2-3 pages) | 批判的分析（2-3ページ）**
   - Model limitations | モデルの限界
   - Potential biases identified | 特定された潜在的なバイアス
   - Ethical considerations | 倫理的考慮事項
   - Future improvements | 今後の改善

7. **AI Transparency Log (separate document) | AI透明性ログ（別文書）**
   - ALL AI chatbot prompts used | 使用したすべてのAIチャットボットプロンプト
   - ALL AI responses received | 受け取ったすべてのAI応答
   - Verification process for each AI interaction | 各AIインタラクションの検証プロセス
   - Hallucination checks performed | 実行した幻覚チェック

**Total Documentation:** 12-18 pages (excluding AI log) | 合計文書：12-18ページ（AIログを除く）

**Language:** English OR Japanese OR bilingual acceptable | 英語または日本語またはバイリンガル可

---

### Presentation/Demonstration Requirements | プレゼンテーション・デモンストレーション要件

**Presentation Duration:** 10 minutes | プレゼンテーション時間：10分
**Q&A Duration:** 5 minutes | Q&A時間：5分

**Required Presentation Content | 必要なプレゼンテーション内容:**

1. **Project Overview (2 minutes) | プロジェクト概要（2分）**
   - What you built and why | 何を構築し、なぜか
   - Your personal career interests | あなたの個人的なキャリア興味

2. **Live Demonstration (4 minutes) | ライブデモンストレーション（4分）**
   - Show data collection process | データ収集プロセスを示す
   - Demonstrate model predictions on new companies | 新しい企業でのモデル予測をデモンストレーション
   - Display results and interpretations | 結果と解釈を表示

3. **Results and Insights (2 minutes) | 結果と洞察（2分）**
   - Key findings from your model | モデルからの主要な発見
   - What the ML system learned | MLシステムが学習したこと
   - How it could help your job search | それがあなたの就職活動をどのように助けられるか

4. **Critical Reflection (2 minutes) | 批判的考察（2分）**
   - Model limitations and biases | モデルの限界とバイアス
   - Ethical considerations | 倫理的考慮事項
   - Future improvements | 今後の改善

**Presentation Format | プレゼンテーション形式:**
- Slides: 8-12 slides recommended | スライド：8-12スライド推奨
- Language: English OR Japanese OR bilingual | 言語：英語または日本語またはバイリンガル
- Include screenshots of your system | システムのスクリーンショットを含める
- Show actual working demonstration | 実際の動作デモンストレーションを示す

---

## AI Chatbot Usage in Project | プロジェクトでのAIチャットボット使用

### ✅ AI Chatbots ARE ALLOWED AND ENCOURAGED | AIチャットボットは許可され、奨励されます

You are **explicitly permitted and encouraged** to use external AI chatbots (ChatGPT, Claude, Gemini, etc.) throughout your project for:

あなたはプロジェクト全体を通じて外部AIチャットボット（ChatGPT、Claude、Geminiなど）を**明示的に許可され、奨励されます**：

- Understanding ML concepts | MLコンセプトの理解
- Writing Python code in Google Colab | Google ColabでPythonコードを書く
- Debugging code errors | コードエラーのデバッグ
- Data analysis assistance | データ分析支援
- Writing project documentation | プロジェクト文書を書く
- Researching companies and industries | 企業と業界を調査
- Generating presentation content | プレゼンテーションコンテンツを生成

### 📝 MANDATORY: Complete AI Transparency Documentation | 必須：完全なAI透明性文書

For EVERY use of AI chatbots, you MUST document:
AIチャットボットのすべての使用について、あなたは以下を文書化する必要があります：

#### 1. All Prompts Used | 使用したすべてのプロンプト

**Requirement:** Copy the EXACT text of every prompt you sent to any AI chatbot.
要件：任意のAIチャットボットに送信したすべてのプロンプトの正確なテキストをコピーします。

**Example Format:**
```
Prompt #1 (ChatGPT, 2025-10-15):
"Explain how to handle missing data in a pandas DataFrame with examples"

Prompt #2 (Claude, 2025-10-16):
"Help me write Python code to clean company names that have extra spaces"
```

#### 2. All AI Responses Received | 受け取ったすべてのAI応答

**Requirement:** Copy the COMPLETE response from the AI chatbot.
要件：AIチャットボットからの完全な応答をコピーします。

**Example Format:**
```
Response to Prompt #1:
[Full AI response here - do not summarize]
```

#### 3. Verification Process | 検証プロセス

**Requirement:** Explain HOW you verified the AI's information was accurate.
要件：AIの情報が正確であることをどのように検証したかを説明します。

**Example:**
```
Verification for Prompt #1:
- Tested the code in Google Colab with sample data
- Compared results with course materials on data cleaning
- Checked pandas official documentation
- Result: AI code worked correctly
```

#### 4. Hallucination Checks | 幻覚チェック

**Requirement:** Document steps taken to identify and correct AI errors or fabrications.
要件：AIエラーまたは捏造を特定し修正するために取った手順を文書化します。

**Example:**
```
Hallucination Check for Prompt #2:
- AI suggested using .strip() method - verified this exists in Python
- AI claimed .trim() also works - TESTED and found this is FALSE (JavaScript only)
- Corrected: Used only .strip() in final code
```

### ❌ AI NOT ALLOWED During: | AIは以下の間は許可されません：

- Final project presentation (live presentation only) | 最終プロジェクトプレゼンテーション（ライブプレゼンテーションのみ）
- Q&A session after presentation | プレゼンテーション後のQ&Aセッション

**Note:** ML-101 course bot assistance is always allowed as it is part of the learning system.
注：ML-101コースボットの支援は学習システムの一部であるため、常に許可されています。

---

## Project Deliverables | プロジェクト成果物

### Complete Submission Package | 完全な提出パッケージ

Your final submission MUST include all of the following:
あなたの最終提出には以下のすべてが含まれている必要があります：

#### 1. Main Project Documentation (12-18 pages) | 主要プロジェクト文書（12-18ページ）
   - Format: PDF | 形式：PDF
   - Filename: `ML101_FinalProject_YourName.pdf`
   - Contains all 6 documentation sections listed above | 上記のすべての6つの文書セクションを含む

#### 2. Data Files | データファイル
   - **Raw Data:** Original scraped data | 元のスクレイプされたデータ
   - **Cleaned Data:** Processed and cleaned dataset | 処理およびクリーニング済みデータセット
   - **Labeled Data:** Training data with classifications | 分類付き訓練データ
   - Format: CSV or Excel | 形式：CSVまたはExcel
   - Folder: `data/`

#### 3. Code Files | コードファイル
   - **Data Collection Code:** Web scraping scripts/workflows | Webスクレイピングスクリプト・ワークフロー
   - **Data Cleaning Code:** Python notebooks for cleaning | クリーニング用Pythonノートブック
   - **Feature Engineering Code:** Feature creation scripts | 特徴量作成スクリプト
   - Format: `.ipynb` (Google Colab notebooks) or `.py` | 形式：`.ipynb`（Google Colabノートブック）または`.py`
   - Folder: `code/`

#### 4. Model Files | モデルファイル
   - **Trained Model:** Saved ML model | 保存されたMLモデル
   - **Model Configuration:** Settings and parameters used | 使用した設定とパラメータ
   - **Prediction Results:** Output predictions on test data | テストデータでの出力予測
   - Folder: `model/`

#### 5. Presentation Materials | プレゼンテーション資料
   - **Presentation Slides:** 8-12 slides | プレゼンテーションスライド：8-12スライド
   - Format: PDF or PowerPoint | 形式：PDFまたはPowerPoint
   - Filename: `ML101_Presentation_YourName.pdf`

#### 6. AI Transparency Log (SEPARATE DOCUMENT) | AI透明性ログ（別文書）
   - **All Prompts:** Every AI interaction | すべてのプロンプト：すべてのAIインタラクション
   - **All Responses:** Complete AI outputs | すべての応答：完全なAI出力
   - **Verification:** How you checked accuracy | 検証：精度をどのようにチェックしたか
   - **Hallucination Checks:** Error detection and correction | 幻覚チェック：エラー検出と修正
   - Format: PDF | 形式：PDF
   - Filename: `ML101_AI_Transparency_YourName.pdf`

#### 7. README File | READMEファイル
   - **Project Overview:** Brief description | プロジェクト概要：簡単な説明
   - **File Structure:** Organization of submission | ファイル構造：提出物の整理
   - **How to Run:** Instructions to reproduce results | 実行方法：結果を再現する指示
   - Format: Markdown (`.md`) or Text (`.txt`) | 形式：Markdown（`.md`）またはText（`.txt`）

---

### Submission Folder Structure | 提出フォルダ構造

```
ML101_FinalProject_YourName/
├── README.md
├── ML101_FinalProject_YourName.pdf (main documentation)
├── ML101_Presentation_YourName.pdf
├── ML101_AI_Transparency_YourName.pdf
├── data/
│   ├── raw_data.csv
│   ├── cleaned_data.csv
│   └── labeled_training_data.csv
├── code/
│   ├── 01_data_collection.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   └── 04_prediction_analysis.ipynb
└── model/
    ├── trained_model.pkl (or platform-specific format)
    ├── model_config.json
    └── predictions.csv
```

---

## Timeline & Milestones | タイムラインとマイルストーン

### Project Schedule | プロジェクトスケジュール

| Milestone | Date | Deliverable | Weight |
|-----------|------|-------------|--------|
| **Project Announcement** | Week 1 | Project guidelines distributed | - |
| **Data Collection Phase** | Weeks 1-6 | Collect 30+ company dataset | Check-in only |
| **Data Preparation Phase** | Weeks 7-9 | Cleaned and labeled dataset | Check-in only |
| **Model Training Phase** | Weeks 10-12 | Trained ML model | Check-in only |
| **Mid-Project Check-in** | Week 10 | Progress review with instructor | 5% |
| **Project Integration** | Week 13 | Complete system | Final submission |
| **Final Submission** | End of Week 13 | All deliverables submitted | 30% |
| **Presentations** | Week 14 | 10-min presentation + Q&A | 5% |

### Key Deadlines | 主要締切

**Mid-Project Check-in (Week 10):**
- **Due:** End of Week 10 class | 第10週のクラス終了まで
- **Submit:** Progress report (2-3 pages) showing: | 進捗レポート（2-3ページ）を提出：
  - Data collected so far | これまでに収集したデータ
  - Cleaning progress | クリーニング進捗
  - Manual classifications started | 手動分類の開始
  - Challenges encountered | 遭遇した課題

**Final Submission (Week 13):**
- **Due:** End of Week 13 (before Week 14 class) | 第13週末（第14週クラス前）
- **Submit:** Complete submission package (all 7 deliverables) | 完全な提出パッケージ（すべての7つの成果物）
- **Late Policy:** -10% per day late | 遅延ポリシー：1日あたり-10％

**Presentations (Week 14):**
- **When:** During Week 14 class | 第14週のクラス中
- **Duration:** 10 min presentation + 5 min Q&A | 10分プレゼンテーション + 5分Q&A
- **Order:** To be announced | 順序：後日発表

---

## Evaluation Rubric | 評価ルーブリック

**Total Points:** 100 points (35% of course grade)
**合計ポイント:** 100ポイント（コース成績の35％）

### 1. Technical Quality (30 points) | 技術的品質（30ポイント）

**Data Collection (10 points):**
- Collected 30+ companies with 5+ data fields each | 各5+データフィールドで30+社を収集（5ポイント）
- Proper web scraping methodology | 適切なWebスクレイピング方法論（3ポイント）
- Data sources documented | データソースが文書化されている（2ポイント）

**Data Preparation (10 points):**
- Thorough data cleaning (missing values, outliers) | 徹底的なデータクリーニング（欠損値、外れ値）（4ポイント）
- Effective feature engineering | 効果的な特徴量エンジニアリング（4ポイント）
- Decisions well-documented | 決定がよく文書化されている（2ポイント）

**Model Training & Prediction (10 points):**
- Model successfully trained on labeled data | ラベル付きデータでモデルが正常に訓練された（4ポイント）
- Predictions generated for new companies | 新しい企業の予測が生成された（3ポイント）
- Model performance evaluated properly | モデル性能が適切に評価された（3ポイント）

### 2. Critical Analysis & AI Thinking (20 points) | 批判的分析とAI思考（20ポイント）

**Model Limitations (7 points):**
- Identifies specific limitations of the model | モデルの特定の限界を特定（4ポイント）
- Explains why limitations exist | 限界がなぜ存在するかを説明（3ポイント）

**Bias and Fairness (7 points):**
- Identifies potential biases in data or model | データまたはモデルの潜在的なバイアスを特定（4ポイント）
- Discusses implications for fairness | 公平性への影響を議論（3ポイント）

**Ethical Considerations (6 points):**
- Thoughtful discussion of ethical issues | 倫理的問題の思慮深い議論（4ポイント）
- Proposes solutions or improvements | 解決策または改善を提案（2ポイント）

### 3. Documentation Quality (20 points) | 文書品質（20ポイント）

**Completeness (8 points):**
- All 6 required documentation sections included | 必要な6つの文書セクションすべてが含まれている（8ポイント）

**Clarity (6 points):**
- Clear writing and organization | 明確な執筆と整理（4ポイント）
- Effective use of visuals (charts, screenshots) | ビジュアルの効果的な使用（チャート、スクリーンショット）（2ポイント）

**Technical Detail (6 points):**
- Sufficient technical detail provided | 十分な技術的詳細が提供されている（4ポイント）
- Reproducible methodology | 再現可能な方法論（2ポイント）

### 4. AI Transparency (15 points) | AI透明性（15ポイント）

**Prompt Documentation (4 points):**
- All AI prompts documented | すべてのAIプロンプトが文書化されている（4ポイント）

**Response Documentation (4 points):**
- All AI responses included | すべてのAI応答が含まれている（4ポイント）

**Verification Process (4 points):**
- Clear verification methodology for each AI interaction | 各AIインタラクションの明確な検証方法論（4ポイント）

**Hallucination Checks (3 points):**
- Evidence of checking for and correcting AI errors | AIエラーのチェックと修正の証拠（3ポイント）

### 5. Presentation & Demonstration (15 points) | プレゼンテーションとデモンストレーション（15ポイント）

**Content Coverage (5 points):**
- All required topics covered | すべての必要なトピックがカバーされている（5ポイント）

**Live Demonstration (5 points):**
- Effective demonstration of working system | 動作するシステムの効果的なデモンストレーション（5ポイント）

**Communication (3 points):**
- Clear, engaging presentation style | 明確で魅力的なプレゼンテーションスタイル（3ポイント）

**Q&A Handling (2 points):**
- Thoughtful responses to questions | 質問への思慮深い回答（2ポイント）

---

### Grading Scale | 評価スケール

| Points | Grade | Description |
|--------|-------|-------------|
| 90-100 | A (優) | Excellent: Exceeds requirements, exceptional quality |
| 80-89 | B (良) | Good: Meets all requirements, high quality |
| 70-79 | C (可) | Satisfactory: Meets most requirements, acceptable quality |
| 60-69 | D | Minimal: Meets minimum requirements, needs improvement |
| 0-59 | F (不可) | Failing: Does not meet requirements |

---

## Submission Guidelines | 提出ガイドライン

### Submission Platform | 提出プラットフォーム

**Method:** Upload to course portal | コースポータルにアップロード
**Format:** Single ZIP file containing all deliverables | すべての成果物を含む単一のZIPファイル

### File Formats Accepted | 受け入れられるファイル形式

- **Documentation:** PDF only | 文書：PDFのみ
- **Data:** CSV, Excel (.xlsx) | データ：CSV、Excel（.xlsx）
- **Code:** Jupyter Notebook (.ipynb), Python (.py) | コード：Jupyter Notebook（.ipynb）、Python（.py）
- **Model:** Platform-specific format (document what tool was used) | モデル：プラットフォーム固有の形式（使用したツールを文書化）
- **Presentation:** PDF or PowerPoint (.pptx) | プレゼンテーション：PDFまたはPowerPoint（.pptx）

### Naming Conventions | 命名規則

**ZIP File Name:**
```
ML101_FinalProject_YourLastName_YourFirstName.zip
```

**Internal Files:** Follow structure shown in "Submission Folder Structure" section above.

### File Size Limit | ファイルサイズ制限

- Maximum ZIP file size: 100MB | 最大ZIPファイルサイズ：100MB
- If larger: Contact instructor for alternative submission method | より大きい場合：代替提出方法についてインストラクターに連絡

### Late Submission Policy | 遅延提出ポリシー

- **On Time:** Full credit | 時間通り：フルクレジット
- **1 day late:** -10% penalty | 1日遅れ：-10％ペナルティ
- **2 days late:** -20% penalty | 2日遅れ：-20％ペナルティ
- **3+ days late:** -30% penalty | 3+日遅れ：-30％ペナルティ
- **After Week 14 presentations:** No credit | 第14週プレゼンテーション後：クレジットなし

**Extensions:** Available for valid reasons with prior communication to instructor.
延長：インストラクターへの事前連絡があれば、正当な理由で利用可能。

---

## Presentation Guidelines | プレゼンテーションガイドライン

### Presentation Schedule | プレゼンテーションスケジュール

**When:** Week 14 class session | 第14週のクラスセッション
**Duration:** 10 minutes presentation + 5 minutes Q&A | 10分プレゼンテーション + 5分Q&A
**Order:** Alphabetical by last name (or random selection) | 姓のアルファベット順（またはランダム選択）

### Presentation Requirements | プレゼンテーション要件

**Slides:** 8-12 slides recommended | スライド：8-12スライド推奨

**Required Slide Content:**
1. **Title Slide:** Project title, your name, date | タイトルスライド：プロジェクトタイトル、あなたの名前、日付
2. **Project Overview:** What you built and why | プロジェクト概要：何を構築し、なぜか
3. **Data Collection:** How you gathered company data | データ収集：企業データをどのように収集したか
4. **Data Preparation:** Cleaning and feature engineering | データ準備：クリーニングと特徴量エンジニアリング
5. **Model Training:** How you trained your classifier | モデル訓練：分類器をどのように訓練したか
6. **Live Demo:** Show your system making predictions | ライブデモ：予測を行うシステムを示す
7. **Results:** Key findings and insights | 結果：主要な発見と洞察
8. **Critical Reflection:** Limitations, biases, ethics | 批判的考察：限界、バイアス、倫理
9. **Conclusion:** Summary and future improvements | 結論：要約と今後の改善

### Demonstration Requirements | デモンストレーション要件

**Live Demo (4 minutes):**
- Show actual working system (not just screenshots) | 実際の動作するシステムを示す（スクリーンショットだけではない）
- Input new company data | 新しい企業データを入力
- Generate classification prediction | 分類予測を生成
- Explain the results | 結果を説明

**Backup Plan:**
- Have screenshots ready in case of technical difficulties | 技術的困難の場合に備えてスクリーンショットを用意
- Practice demo multiple times before presentation | プレゼンテーション前にデモを複数回練習

### Q&A Handling | Q&A対応

**Preparation:**
- Anticipate questions about your methodology | 方法論についての質問を予想
- Be ready to explain technical choices | 技術的選択を説明する準備をする
- Practice answering "What if..." questions | 「もし...ならどうですか」の質問に答える練習をする

**During Q&A:**
- Listen carefully to questions | 質問を注意深く聞く
- Answer honestly - it's okay to say "I don't know" | 正直に答える - 「わかりません」と言っても大丈夫
- Refer to your documentation if needed | 必要に応じて文書を参照
- Stay within 5-minute Q&A time limit | 5分のQ&A時間制限内に留まる

### Presentation Tips | プレゼンテーションのヒント

**Language:** English OR Japanese OR mix of both - choose what's comfortable for you.
言語：英語または日本語または両方のミックス - あなたにとって快適なものを選択してください。

**Timing:**
- Practice to ensure you stay within 10 minutes | 10分以内に収まるように練習
- Set a timer during practice runs | 練習中にタイマーを設定
- Have a plan to cut content if running long | 長くなりそうな場合にコンテンツをカットする計画を立てる

**Engagement:**
- Make eye contact with audience | 聴衆とアイコンタクトを取る
- Speak clearly and at moderate pace | 明確に適度なペースで話す
- Show enthusiasm for your project | プロジェクトへの熱意を示す

---

## Resources & Support | リソースとサポート

### Available Support | 利用可能なサポート

**Instructor Office Hours:**
- **When:** [To be announced] | いつ：[後日発表]
- **How:** In-person or online | 方法：対面またはオンライン
- **Purpose:** Technical help, project guidance, questions | 目的：技術的支援、プロジェクトガイダンス、質問

**ML-101 Course Bot:**
- **Availability:** 24/7 via bot portal | 利用可能性：ボットポータル経由で24時間365日
- **Purpose:** Troubleshooting, concept clarification, guidance | 目的：トラブルシューティング、コンセプトの明確化、ガイダンス
- **Note:** Bot can help with project but won't do the work for you | 注意：ボットはプロジェクトを手伝うことができますが、あなたの代わりに作業を行うことはありません

**Peer Collaboration:**
- **Allowed:** Discussing concepts, sharing resources, troubleshooting tips | 許可：コンセプトの議論、リソースの共有、トラブルシューティングのヒント
- **Not Allowed:** Sharing code, working on same dataset, copying work | 許可されていない：コードの共有、同じデータセットでの作業、作業のコピー

**External AI Chatbots:**
- **Allowed and Encouraged:** Use ChatGPT, Claude, Gemini, etc. | 許可され奨励される：ChatGPT、Claude、Geminiなどを使用
- **Remember:** MUST document all AI interactions in transparency log | 覚えておく：透明性ログにすべてのAIインタラクションを文書化する必要があります

### Technical Support Resources | 技術サポートリソース

**Google Colab:**
- Official documentation: https://colab.research.google.com/
- Tutorials available in course materials | コース教材で利用可能なチュートリアル

**Web Scraping:**
- No-code tool tutorials (links in course portal) | ノーコードツールチュートリアル（コースポータルのリンク）
- Python web scraping resources | Python Webスクレイピングリソース

**ML Platforms:**
- Platform-specific documentation (provided per chosen tool) | プラットフォーム固有の文書（選択したツールごとに提供）

### Example Projects | 例示プロジェクト

**Note:** No complete example projects provided to ensure original work.
注：オリジナル作業を確保するため、完全な例示プロジェクトは提供されていません。

**However, course materials include:**
- Example data cleaning workflows | データクリーニングワークフローの例
- Sample feature engineering approaches | 特徴量エンジニアリングアプローチのサンプル
- Model training demonstrations | モデル訓練のデモンストレーション

---

## Frequently Asked Questions | よくある質問

### Q1: Can I use a different topic instead of company recommendations?

**A:** No. All students must build a company recommendation system to ensure fair assessment and alignment with course objectives.

いいえ。すべての学生は公平な評価とコースの目標との整合性を確保するために、企業推薦システムを構築する必要があります。

### Q2: How many companies do I need to manually classify?

**A:** Minimum 20 companies with labels ("Interested" / "Not Interested"), but more is better for model training (25-30 recommended).

最低20社をラベル付き（「興味あり」/「興味なし」）で分類しますが、モデル訓練にはもっと多い方が良いです（25-30社推奨）。

### Q3: What if my model performs poorly?

**A:** That's okay! Document why you think it performed poorly in your critical analysis. Understanding limitations is part of the learning objectives.

大丈夫です！批判的分析で性能が悪かった理由を文書化してください。限界の理解は学習目標の一部です。

### Q4: Can I use Python libraries like BeautifulSoup or Selenium for scraping?

**A:** Yes, as long as you document the code and explain how it works. No-code tools are also acceptable.

はい、コードを文書化し、どのように動作するかを説明すれば大丈夫です。ノーコードツールも受け入れられます。

### Q5: How detailed should my AI transparency log be?

**A:** Include EVERY AI interaction. If you used AI 50 times, document all 50 prompts and responses. No exceptions.

すべてのAIインタラクションを含めてください。AIを50回使用した場合、すべての50のプロンプトと応答を文書化してください。例外はありません。

### Q6: What if I don't find enough companies to scrape?

**A:** Start early! If having difficulty, consult with instructor during office hours. We can suggest alternative data sources.

早めに始めてください！困難がある場合は、オフィスアワー中にインストラクターに相談してください。代替データソースを提案できます。

### Q7: Can I submit my documentation in Japanese?

**A:** Yes. English, Japanese, or bilingual submissions are all acceptable.

はい。英語、日本語、またはバイリンガルの提出はすべて受け入れられます。

### Q8: What happens if my code doesn't run during the live demo?

**A:** Have backup screenshots ready. Explain what should happen and show evidence it worked before (screenshots/recordings).

バックアップスクリーンショットを用意してください。何が起こるべきかを説明し、以前に動作した証拠（スクリーンショット・録画）を示してください。

---

## Academic Integrity | 学術的誠実性

### Individual Work Requirement | 個人作業要件

This is an **individual project**. Your submission must represent your own work.
これは**個人プロジェクト**です。あなたの提出はあなた自身の作業を表している必要があります。

**Academic Dishonesty includes:**
- Copying code or documentation from another student | 別の学生からコードまたは文書をコピーすること
- Sharing your code or data files with others | 他の人とあなたのコードまたはデータファイルを共有すること
- Using someone else's dataset | 他の人のデータセットを使用すること
- Submitting work that is not your own | 自分のものではない作業を提出すること
- Not documenting AI assistance | AI支援を文書化しないこと

**Consequences:**
- First offense: Zero on project (35% of course grade) | 初回違反：プロジェクトでゼロ（コース成績の35％）
- Second offense: Failing grade in course | 2回目の違反：コースで不合格
- Reported to university for disciplinary action | 懲戒処分のために大学に報告

### Proper Use of AI and Resources | AIとリソースの適切な使用

**Acceptable:**
- Using AI chatbots with full documentation | 完全な文書化を伴うAIチャットボットの使用
- Referencing online tutorials and resources | オンラインチュートリアルとリソースの参照
- Discussing concepts with peers | ピアとコンセプトを議論すること
- Adapting code examples from documentation | 文書からコード例を適応すること

**Unacceptable:**
- Using AI without documenting in transparency log | 透明性ログに文書化せずにAIを使用すること
- Copying code from peers | ピアからコードをコピーすること
- Using pre-built projects found online | オンラインで見つけた構築済みプロジェクトを使用すること
- Claiming AI-generated work as entirely your own | AI生成作業を完全に自分のものとして主張すること

---

## Summary Checklist | 要約チェックリスト

Before submitting your final project, verify you have:
最終プロジェクトを提出する前に、以下があることを確認してください：

### Technical Components | 技術的コンポーネント
- [ ] Collected data from 30+ companies | 30+社からデータを収集
- [ ] Cleaned and prepared dataset | データセットをクリーニングおよび準備
- [ ] Manually classified 20+ companies | 20+社を手動で分類
- [ ] Trained ML classification model | ML分類モデルを訓練
- [ ] Generated predictions for new companies | 新しい企業の予測を生成
- [ ] Evaluated model performance | モデル性能を評価

### Documentation | 文書化
- [ ] Complete project documentation (12-18 pages) | 完全なプロジェクト文書（12-18ページ）
- [ ] All 6 required sections included | 必要な6つのセクションすべてが含まれている
- [ ] AI transparency log (separate document) | AI透明性ログ（別文書）
- [ ] README file with project overview | プロジェクト概要を含むREADMEファイル

### Files | ファイル
- [ ] All data files (raw, cleaned, labeled) | すべてのデータファイル（生、クリーニング済み、ラベル付き）
- [ ] All code files (.ipynb or .py) | すべてのコードファイル（.ipynbまたは.py）
- [ ] Trained model files | 訓練済みモデルファイル
- [ ] Presentation slides (8-12 slides) | プレゼンテーションスライド（8-12スライド）

### AI Transparency | AI透明性
- [ ] All AI prompts documented | すべてのAIプロンプトが文書化されている
- [ ] All AI responses included | すべてのAI応答が含まれている
- [ ] Verification process explained | 検証プロセスが説明されている
- [ ] Hallucination checks documented | 幻覚チェックが文書化されている

### Submission | 提出
- [ ] All files in correct folder structure | すべてのファイルが正しいフォルダ構造にある
- [ ] ZIP file named correctly | ZIPファイルが正しく命名されている
- [ ] File size under 100MB | ファイルサイズが100MB未満
- [ ] Submitted before deadline | 締切前に提出

### Presentation | プレゼンテーション
- [ ] Presentation prepared (10 minutes) | プレゼンテーション準備完了（10分）
- [ ] Live demo practiced and ready | ライブデモを練習し準備完了
- [ ] Backup screenshots available | バックアップスクリーンショットが利用可能
- [ ] Ready for Q&A | Q&Aの準備完了

---

**Good luck with your final project! | 最終プロジェクトがんばってください！**

**Remember:** This project is YOUR opportunity to demonstrate mastery of ML concepts and create something valuable for your future career.

覚えておいてください：このプロジェクトは、MLコンセプトの習得を示し、あなたの将来のキャリアに価値のあるものを作成するあなたの機会です。

---

**Generated using BMad BotEdu Assessment Specialist**
**BMadボット教育評価スペシャリストを使用して生成**

**Developer:** Yuri Tijerino
**Last Updated:** October 2025
