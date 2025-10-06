# Getting Started with ML-101 Course Development
# ML-101コース開発の開始

This guide helps you generate the complete curriculum for the Introduction to ML and Intelligence course using BMad BotEdu.

このガイドは、BMad BotEduを使用してML・知能入門コースの完全なカリキュラムを生成するのに役立ちます。

---

## Prerequisites | 前提条件

1. **BMAD-METHOD installed | BMAD-METHODがインストールされている**
   - If not: `npm run install:bmad`
   - もしない場合: `npm run install:bmad`

2. **bmad-botedu expansion pack available | bmad-botedu拡張パックが利用可能**
   - Located in: `BMAD-METHOD/expansion-packs/bmad-botedu/`
   - 場所: `BMAD-METHOD/expansion-packs/bmad-botedu/`

---

## Step 1: Install BMAD | ステップ1：BMADをインストール

```bash
cd ~/Documents/GitHub/2025ML
npm install
npm run install:bmad
```

This will:
これにより以下が実行されます：
- Install BMAD-METHOD core | BMAD-METHODコアをインストール
- Install bmad-botedu expansion pack | bmad-botedu拡張パックをインストール
- Set up project structure | プロジェクト構造を設定

---

## Step 2: Generate Curriculum | ステップ2：カリキュラムを生成

### Option A: Using Curriculum Architect Agent | オプションA：カリキュラムアーキテクトエージェントを使用

1. **Load the agent | エージェントをロード:**
   ```
   Load agent from: bmad-botedu/agents/curriculum-architect.md
   ```

2. **Create curriculum outline | カリキュラムアウトラインを作成:**
   ```
   *create-curriculum
   ```

3. **Provide course details | コースの詳細を提供:**
   - Course: Introduction to ML and Intelligence
   - Target: Non-technical students
   - Focus: Complete ML workflow (data → prediction)
   - Project: Company recommendation system
   - No programming required

### Option B: Manual Template Usage | オプションB：手動テンプレート使用

Use the curriculum template directly:
カリキュラムテンプレートを直接使用：

```
Template: bmad-botedu/templates/curriculum-outline-tmpl.yaml
```

---

## Step 3: Generate Weekly Activities | ステップ3：週次アクティビティを生成

### For Each Week | 各週について:

1. **Load Activity Designer | アクティビティデザイナーをロード:**
   ```
   Load agent: bmad-botedu/agents/activity-designer.md
   ```

2. **Create activity | アクティビティを作成:**
   ```
   *create-activity
   ```

3. **Integrate bot workflow | ボットワークフローを統合:**
   ```
   *design-bot-workflow
   ```

---

## Step 4: Create Final Project Guidelines | ステップ4：最終プロジェクトガイドラインを作成

1. **Load Assessment Specialist | 評価スペシャリストをロード:**
   ```
   Load agent: bmad-botedu/agents/assessment-specialist.md
   ```

2. **Create project | プロジェクトを作成:**
   ```
   *create-project
   ```

3. **Specify project details | プロジェクトの詳細を指定:**
   - Type: Company Recommendation System
   - ML Workflow: Data collection → Classification → Prediction
   - Tools: No-code platforms
   - Individual or group option

---

## Step 5: Configure Course Bot | ステップ5：コースボットを設定

1. **Load Bot Configurator | ボットコンフィギュレーターをロード:**
   ```
   Load agent: bmad-botedu/agents/course-bot-configurator.md
   ```

2. **Configure bot | ボットを設定:**
   ```
   *configure-bot
   ```

3. **Setup RAG knowledge base | RAG知識ベースを設定:**
   ```
   *setup-rag
   ```

   **Knowledge sources | 知識ソース:**
   - Course curriculum and syllabus
   - ML workflow documentation
   - Tool tutorials
   - Company data examples
   - Common troubleshooting

---

## Step 6: Generate Lecture Materials | ステップ6：講義資料を生成

1. **Load Lecture Material Creator | 講義資料クリエーターをロード:**
   ```
   Load agent: bmad-botedu/agents/lecture-material-creator.md
   ```

2. **Create lectures | 講義を作成:**
   ```
   *create-lecture
   ```

3. **Keep short (15-20 min) | 短く保つ（15-20分）:**
   - Focus on key ML concepts
   - Prepare students for hands-on work
   - Bilingual slides

---

## Key Course Topics to Cover | カバーすべき主要コーストピック

### Weeks 1-3: ML Fundamentals | 週1-3：ML基礎

**Topics | トピック:**
- What is Machine Learning? | 機械学習とは？
- Why ML matters in modern world | 現代世界でMLが重要な理由
- Understanding data and its role | データとその役割の理解
- Types of ML: Supervised vs Unsupervised | MLの種類：教師ありvs教師なし
- Classification vs Prediction | 分類vs予測

**Activities | アクティビティ:**
- Explore real-world ML applications | 実世界のMLアプリケーションを探索
- Identify data sources | データソースを特定
- Understand ML workflow stages | MLワークフローステージを理解

### Weeks 4-6: Web Scraping & Data Collection | 週4-6：Webスクレイピングとデータ収集

**Topics | トピック:**
- Introduction to web scraping | Webスクレイピング入門
- No-code scraping tools | ノーコードスクレイピングツール
- Ethical data collection | 倫理的データ収集
- Company data: What to collect | 企業データ：何を収集するか

**Activities | アクティビティ:**
- Setup web scraping tool | Webスクレイピングツールをセットアップ
- Define company data schema | 企業データスキーマを定義
- Collect initial company dataset | 初期企業データセットを収集
- Bot-guided scraping workflow | ボットガイドスクレイピングワークフロー

### Weeks 7-9: Data Preparation | 週7-9：データ準備

**Topics | トピック:**
- Data cleaning fundamentals | データクリーニングの基礎
- Handling missing data | 欠損データの処理
- Feature engineering basics | 特徴量エンジニアリングの基礎
- Organizing data for ML | ML用のデータ整理

**Activities | アクティビティ:**
- Clean collected company data | 収集した企業データをクリーニング
- Create features from raw data | 生データから特徴量を作成
- Prepare dataset for training | 訓練用データセットを準備
- Bot-guided data preparation | ボットガイドデータ準備

### Weeks 10-12: ML Models & Classification | 週10-12：MLモデルと分類

**Topics | トピック:**
- Classification concepts | 分類のコンセプト
- How ML models learn | MLモデルの学習方法
- Training and testing | 訓練とテスト
- Making predictions | 予測の実行

**Activities | アクティビティ:**
- Choose no-code ML tool | ノーコードMLツールを選択
- Define student interest categories | 学生の興味カテゴリーを定義
- Train classification model | 分類モデルを訓練
- Test predictions on new companies | 新しい企業で予測をテスト
- Bot-guided model training | ボットガイドモデル訓練

### Weeks 13-15: Final Project | 週13-15：最終プロジェクト

**Deliverables | 成果物:**
1. Working company recommendation system | 動作する企業推薦システム
2. Complete ML workflow documentation | 完全なMLワークフロー文書
3. Results analysis and interpretation | 結果分析と解釈
4. Presentation and demonstration | プレゼンテーションとデモンストレーション
5. AI interaction log (prompts + responses) | AIインタラクションログ（プロンプト+応答）

---

## Important Reminders | 重要なリマインダー

### Bilingual Requirement | バイリンガル要件

All student-facing materials MUST use format:
すべての学生向け教材は以下の形式を使用する必要があります：

```
English text | 日本語テキスト
```

### No Programming Required | プログラミング不要

- Use no-code/low-code tools | ノーコード・ローコードツールを使用
- Visual workflow builders | ビジュアルワークフロービルダー
- Tool-based approach | ツールベースアプローチ

### AI Transparency | AI透明性

Students must document:
学生は以下を文書化する必要があります：
- All AI prompts used | 使用したすべてのAIプロンプト
- All AI responses | すべてのAI応答
- Verification process | 検証プロセス
- Hallucination checks | 幻覚チェック

### Bot Integration | ボット統合

Every activity should have:
すべてのアクティビティには以下が必要です：
- Bot workflow integration | ボットワークフロー統合
- BMAD method guidance | BMADメソッドガイダンス
- Data capture points | データキャプチャポイント

---

## Next Steps | 次のステップ

1. ✅ Repository created | リポジトリ作成完了
2. ⏭️ Install BMAD | BMADをインストール
3. ⏭️ Generate curriculum | カリキュラムを生成
4. ⏭️ Create activities | アクティビティを作成
5. ⏭️ Configure bot | ボットを設定
6. ⏭️ Prepare lecture materials | 講義資料を準備
7. ⏭️ Review and refine | レビューと改善

---

**Ready to build your ML-101 course! | ML-101コースを構築する準備ができました！**
