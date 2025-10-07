# Week 13 Activity: Final Project Development
# 第13週アクティビティ：最終プロジェクト開発

## Activity Information | アクティビティ情報

**Activity Title:** Completing Company Recommendation System and Documentation | 企業推薦システムと文書の完成
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Complete end-to-end ML workflow system with comprehensive documentation | 包括的な文書を伴うエンドツーエンドMLワークフローシステムを完成する
**Prerequisites:** Week 12 completion - Evaluated model and results | 第12週完了 - 評価済みモデルと結果

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Integrate all project components into complete ML system | すべてのプロジェクトコンポーネントを完全なMLシステムに統合する
- Refine model based on evaluation insights | 評価の洞察に基づいてモデルを改良する
- Create comprehensive project documentation | 包括的なプロジェクト文書を作成する
- Prepare final presentation demonstrating ML workflow | MLワークフローを実演する最終プレゼンテーションを準備する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Final project requirements, presentation guidelines
講義のコンセプト：最終プロジェクト要件、プレゼンテーションガイドライン

**Activity Application:** Students synthesize 13 weeks of learning by completing their individual ML project, demonstrating mastery of the entire ML workflow from data collection to deployment.
アクティビティの適用：学生は個々のMLプロジェクトを完成することで13週間の学習を統合し、データ収集から展開までの完全なMLワークフローの習得を実証します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot assists with project integration, guides documentation, validates completeness, and helps prepare presentation.
ボットの役割：ML-101ボットはプロジェクト統合を支援し、文書をガイドし、完全性を検証し、プレゼンテーションの準備を支援します。

**BMAD Workflow Steps:**
1. Bot reviews project status and identifies gaps | ボットがプロジェクトステータスを確認しギャップを特定
2. Bot guides system integration and refinement | ボットがシステム統合と改良をガイド
3. Bot assists with comprehensive documentation creation | ボットが包括的な文書作成を支援
4. Bot validates all project requirements met | ボットがすべてのプロジェクト要件が満たされていることを検証
5. Bot helps prepare presentation materials | ボットがプレゼンテーション資料の準備を支援

**Bot Portal Interaction Points:**
- Project completeness checklist | プロジェクト完全性チェックリスト
- Documentation guidance and templates | 文書ガイダンスとテンプレート
- System integration assistance | システム統合支援
- Presentation preparation workshop | プレゼンテーション準備ワークショップ

**Data Captured:**
- Project completion status | プロジェクト完了ステータス
- System improvements implemented | 実装されたシステム改善
- Documentation quality | 文書品質
- Presentation readiness | プレゼンテーション準備状況

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Project Status Review and Gap Analysis (10 minutes) | プロジェクトステータス確認とギャップ分析（10分）

**What Students Do:**
- Review complete ML workflow accomplished: | 達成された完全なMLワークフローを確認：
  - ✓ Week 6: Data collection (20-30 companies) | 第6週：データ収集（20-30社）
  - ✓ Week 7: Data cleaning | 第7週：データクリーニング
  - ✓ Week 8: Missing data handling | 第8週：欠損データ処理
  - ✓ Week 9: Feature engineering | 第9週：特徴量エンジニアリング
  - ✓ Week 10: Manual labeling | 第10週：手動ラベリング
  - ✓ Week 11: Model training | 第11週：モデル訓練
  - ✓ Week 12: Model evaluation | 第12週：モデル評価
- Identify any missing or incomplete components | 欠落または不完全なコンポーネントを特定
- Review Week 12 evaluation insights for improvement opportunities | 改善機会のために第12週の評価の洞察を確認
- Create completion plan for remaining work | 残りの作業の完了計画を作成

**Bot Guidance:**
- Runs project completeness checklist | プロジェクト完全性チェックリストを実行
- Identifies gaps: "Your dataset has only 18 companies - add 2 more to meet minimum" | ギャップを特定：「あなたのデータセットには18社しかありません - 最小値を満たすために2社を追加してください」
- Reviews evaluation results: "Model accuracy was 70% - this is acceptable for small dataset" | 評価結果を確認：「モデルの精度は70%でした - これは小さなデータセットには受け入れられます」
- Prioritizes remaining tasks | 残りのタスクを優先順位付け

**Expected Output:** Project status assessment with prioritized completion tasks
期待される出力：優先順位付けされた完了タスクを含むプロジェクトステータス評価

**Time Allocation:** 10 minutes | 10分

---

### Step 2: System Refinement and Improvement (15 minutes) | システム改良と改善（15分）

**What Students Do:**
- Based on Week 12 evaluation, implement improvements: | 第12週の評価に基づいて、改善を実装：

  **Optional refinements (choose 1-2 most impactful):**
  - Add 2-5 more training companies to improve dataset | データセットを改善するために2-5の訓練企業を追加
  - Add new keywords based on what model missed | モデルが見逃したものに基づいて新しいキーワードを追加
  - Refine feature engineering based on feature importance | 特徴量の重要性に基づいて特徴量エンジニアリングを改良
  - Re-train model with improvements | 改善を伴ってモデルを再訓練
  - Test refined model on same test set | 同じテストセットで改良されたモデルをテスト

- Document improvements made: | 行われた改善を文書化：
  - What was changed | 何が変更されたか
  - Why (based on evaluation insights) | なぜ（評価の洞察に基づいて）
  - Impact on performance | 性能への影響

- OR if system is already strong, focus on documentation and presentation | またはシステムがすでに強力な場合、文書とプレゼンテーションに焦点を当てる

**Bot Guidance:**
- Suggests targeted improvements: "Adding 'startup' keyword might help since model missed those" | ターゲットを絞った改善を提案：「モデルがそれらを見逃したので『startup』キーワードを追加すると役立つかもしれません」
- Manages time: "Don't over-refine - small improvements are fine for this project" | 時間を管理：「過度に改良しないでください - このプロジェクトでは小さな改善で十分です」
- Validates changes: "Retrained model accuracy improved from 70% to 75% - good progress!" | 変更を検証：「再訓練されたモデルの精度が70%から75%に改善 - 良い進捗！」
- Reminds: "Document WHY you made changes - that's as important as the results" | 思い出させる：「なぜ変更を行ったかを文書化してください - それは結果と同じくらい重要です」

**Expected Output:** Refined system with documented improvements (or decision to proceed with current system)
期待される出力：文書化された改善を伴う改良されたシステム（または現在のシステムで進めることの決定）

**Time Allocation:** 15 minutes | 15分

---

### Step 3: Comprehensive Project Documentation (20 minutes) | 包括的なプロジェクト文書（20分）

**What Students Do:**
- Create complete project documentation including all required sections: | すべての必要なセクションを含む完全なプロジェクト文書を作成：

  **1. Project Overview (1-2 pages) | プロジェクト概要（1-2ページ）**
  - Project goal and motivation | プロジェクト目標と動機
  - ML workflow summary | MLワークフロー要約
  - Personal relevance to career planning | キャリアプランニングへの個人的な関連性

  **2. Data Collection Process (1-2 pages) | データ収集プロセス（1-2ページ）**
  - Data sources used | 使用されたデータソース
  - Collection methodology | 収集方法論
  - Ethical considerations | 倫理的考慮事項
  - Final dataset statistics | 最終データセット統計

  **3. Data Preparation (2-3 pages) | データ準備（2-3ページ）**
  - Cleaning operations performed | 実行されたクリーニング操作
  - Missing data handling strategies | 欠損データ処理戦略
  - Before/after quality comparison | 前後の品質比較

  **4. Feature Engineering (1-2 pages) | 特徴量エンジニアリング（1-2ページ）**
  - Features created and rationale | 作成された特徴量と根拠
  - Feature importance insights | 特徴量の重要性の洞察
  - Connection to classification goal | 分類目標へのつながり

  **5. Model Training and Evaluation (2-3 pages) | モデル訓練と評価（2-3ページ）**
  - Training configuration | 訓練設定
  - Model performance metrics | モデルパフォーマンスメトリクス
  - Critical analysis of results | 結果の批判的分析
  - Limitations and improvements | 制限と改善

  **6. Complete AI Interaction Log (required) | 完全なAIインタラクションログ（必須）**
  - All prompts sent to AI systems | AIシステムに送信されたすべてのプロンプト
  - All responses received | 受け取ったすべての応答
  - Verification processes used | 使用された検証プロセス
  - Hallucination checks performed | 実行された幻覚チェック
  - Organized by week/activity | 週/アクティビティで整理

  **7. Conclusion and Reflection (1 page) | 結論と考察（1ページ）**
  - Key learnings from project | プロジェクトからの主要な学習
  - ML workflow understanding gained | 得られたMLワークフロー理解
  - Future applications to career planning | キャリアプランニングへの将来の応用

- Include all relevant screenshots, code snippets, and visualizations | すべての関連するスクリーンショット、コードスニペット、可視化を含める
- Ensure bilingual content where appropriate | 適切な場合はバイリンガルコンテンツを確保

**Bot Guidance:**
- Provides documentation templates for each section | 各セクションの文書テンプレートを提供
- Checks completeness: "Missing screenshots for data cleaning section" | 完全性をチェック：「データクリーニングセクションのスクリーンショットが欠落しています」
- Suggests organization: "Group AI logs by week for clarity" | 整理を提案：「明確さのために週ごとにAIログをグループ化してください」
- Validates required elements are present | 必要な要素が存在することを検証

**Expected Output:** Complete project documentation (10-15 pages) with all required components
期待される出力：すべての必要なコンポーネントを含む完全なプロジェクト文書（10-15ページ）

**Time Allocation:** 20 minutes | 20分

---

### Step 4: Presentation Preparation (12 minutes) | プレゼンテーション準備（12分）

**What Students Do:**
- Create presentation slides (5-7 slides) covering: | プレゼンテーションスライド（5-7スライド）を作成：

  **Slide 1: Title and Introduction | タイトルと紹介**
  - Project title | プロジェクトタイトル
  - Your name | あなたの名前
  - Brief project description | 簡単なプロジェクト説明

  **Slide 2: The Problem | 問題**
  - Why company recommendation matters for career planning | 企業推薦がキャリアプランニングにとってなぜ重要か
  - What you wanted to achieve | 達成したかったこと

  **Slide 3: Data Collection and Preparation | データ収集と準備**
  - Data sources | データソース
  - Dataset statistics | データセット統計
  - Key cleaning/preparation steps | 主要なクリーニング/準備ステップ

  **Slide 4: Feature Engineering and Model Training | 特徴量エンジニアリングとモデル訓練**
  - Features created | 作成された特徴量
  - Training approach | 訓練アプローチ
  - Model type used | 使用されたモデルタイプ

  **Slide 5: Results and Evaluation | 結果と評価**
  - Model performance metrics | モデルパフォーマンスメトリクス
  - Example predictions | 予測の例
  - What worked well | うまくいったこと

  **Slide 6: Challenges and Learnings | 課題と学習**
  - Difficulties encountered | 遭遇した困難
  - How you overcame them | それらをどのように克服したか
  - Key learnings | 主要な学習

  **Slide 7: Conclusion and Future Applications | 結論と将来の応用**
  - Project summary | プロジェクト要約
  - How you'll use this for job search | 就職活動にこれをどのように使用するか
  - ML workflow understanding gained | 得られたMLワークフロー理解

- Practice 5-minute presentation delivery | 5分のプレゼンテーション配信を練習
- Prepare for Q&A | Q&Aのために準備
- Export slides as PDF | スライドをPDFとしてエクスポート

**Bot Guidance:**
- Provides presentation template and structure | プレゼンテーションテンプレートと構造を提供
- Suggests: "Focus on your journey - what YOU learned, not just technical details" | 提案：「あなたの旅に焦点を当てる - 技術的な詳細だけでなく、あなたが学んだこと」
- Recommends: "Include 1-2 examples of actual company predictions" | 推奨：「実際の企業予測の1-2の例を含める」
- Time management: "Aim for 5 minutes - practice with timer" | 時間管理：「5分を目指す - タイマーで練習」
- Encourages personal touch: "Explain why THIS PROJECT matters to YOU" | 個人的なタッチを奨励：「このプロジェクトがあなたにとってなぜ重要かを説明してください」

**Expected Output:** Complete presentation slides and practiced delivery
期待される出力：完全なプレゼンテーションスライドと練習された配信

**Time Allocation:** 12 minutes | 12分

---

### Step 5: Final Validation and Submission Preparation (3 minutes) | 最終検証と提出準備（3分）

**What Students Do:**
- Run final project completeness check: | 最終プロジェクト完全性チェックを実行：
  - ✓ Complete documentation (10-15 pages) | 完全な文書（10-15ページ）
  - ✓ Presentation slides (5-7 slides) | プレゼンテーションスライド（5-7スライド）
  - ✓ All datasets (raw, cleaned, features, training, test) | すべてのデータセット（生、クリーニング済み、特徴量、訓練、テスト）
  - ✓ Trained model or model access information | 訓練済みモデルまたはモデルアクセス情報
  - ✓ Complete AI transparency log | 完全なAI透明性ログ
  - ✓ All weekly deliverables referenced | すべての週次成果物が参照されている
- Organize all files for submission | 提出のためにすべてのファイルを整理
- Create project submission package | プロジェクト提出パッケージを作成
- Verify file naming conventions | ファイル命名規則を確認

**Bot Guidance:**
- Runs automated completeness check | 自動完全性チェックを実行
- Creates submission checklist | 提出チェックリストを作成
- Confirms: "✓ All required components present and organized!" | 確認：「✓ すべての必要なコンポーネントが存在し整理されています！」
- Celebrates: "Your complete ML system is ready - excellent work!" | 祝う：「あなたの完全なMLシステムは準備ができています - 素晴らしい仕事！」

**Expected Output:** Complete, organized project submission package ready for Week 14 presentation
期待される出力：第14週のプレゼンテーションの準備ができた完全で整理されたプロジェクト提出パッケージ

**Time Allocation:** 3 minutes | 3分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- All previous weeks' tools and files | すべての以前の週のツールとファイル
- Presentation software (PowerPoint, Google Slides, Keynote) | プレゼンテーションソフトウェア（PowerPoint、Google Slides、Keynote）
- Document editor (Word, Google Docs) | ドキュメントエディタ（Word、Google Docs）
- ML-101 Bot portal access | ML-101ボットポータルアクセス

**Files/Datasets:**
- All datasets from Weeks 6-12 | 第6-12週のすべてのデータセット
- Trained model from Week 11 | 第11週の訓練済みモデル
- Evaluation results from Week 12 | 第12週の評価結果
- All AI transparency logs | すべてのAI透明性ログ

**Reference Materials:**
- Final project requirements checklist | 最終プロジェクト要件チェックリスト
- Documentation template | 文書テンプレート
- Presentation template | プレゼンテーションテンプレート
- AI transparency log compilation guide | AI透明性ログまとめガイド

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI for help organizing documentation | 文書の整理を支援するようAIに依頼
- Getting suggestions for presentation structure | プレゼンテーション構造の提案を取得
- Help with writing and clarity | 執筆と明確さの支援
- Brainstorming improvements based on evaluation | 評価に基づく改善のブレインストーミング

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "Help me organize my ML project documentation into clear sections"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete suggestions

3. **Document verification process** | 検証プロセスを文書化
   - Did you verify AI suggestions make sense for your project?
   - Did you adapt AI advice to your specific work?

4. **Check for hallucinations** | 幻覚をチェック
   - Did AI suggest including things you didn't actually do?
   - Did you ensure all content reflects YOUR actual work?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Complete Project Documentation (required) | 完全なプロジェクト文書（必須）**
   - All 7 required sections | すべての7つの必要なセクション
   - 10-15 pages total | 合計10-15ページ
   - Screenshots, visualizations, code snippets | スクリーンショット、可視化、コードスニペット
   - Format: PDF | 形式：PDF

2. **Presentation Slides (required) | プレゼンテーションスライド（必須）**
   - 5-7 slides covering project journey | プロジェクトの旅をカバーする5-7スライド
   - Clear visuals and minimal text | 明確なビジュアルと最小限のテキスト
   - Designed for 5-minute presentation | 5分のプレゼンテーション用に設計
   - Format: PDF and original format (PPT/Google Slides) | 形式：PDFと元のフォーマット（PPT/Google Slides）

3. **Complete AI Transparency Log (required) | 完全なAI透明性ログ（必須）**
   - All AI interactions from Weeks 1-13 | 第1-13週のすべてのAIインタラクション
   - Organized by week/activity | 週/アクティビティで整理
   - All prompts, responses, verification | すべてのプロンプト、応答、検証
   - Format: PDF or Word | 形式：PDFまたはWord

4. **Project Datasets Package (required) | プロジェクトデータセットパッケージ（必須）**
   - All datasets (raw, cleaned, features, training, test) | すべてのデータセット（生、クリーニング済み、特徴量、訓練、テスト）
   - Clearly labeled with file names | ファイル名で明確にラベル付け
   - Format: ZIP file with CSV files | 形式：CSVファイルを含むZIPファイル

5. **Model Access Information (required) | モデルアクセス情報（必須）**
   - Trained model file OR access instructions | 訓練済みモデルファイルまたはアクセス手順
   - Model configuration details | モデル設定詳細
   - Format: Model file or PDF instructions | 形式：モデルファイルまたはPDF指示

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week13_YourName_FinalProject | ファイル命名：Week13_あなたの名前_FinalProject
- Create single ZIP file with all components | すべてのコンポーネントを含む単一のZIPファイルを作成

**Deadline:** End of Week 13 | 第13週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **System Completeness (2 points) | システム完全性（2ポイント）**
  - All ML workflow components present | すべてのMLワークフローコンポーネントが存在する
  - Working end-to-end system | 動作するエンドツーエンドシステム
  - Meets minimum requirements (20+ companies, trained model, evaluation) | 最小要件を満たす（20社以上、訓練済みモデル、評価）

- **Documentation Quality (4 points) | 文書品質（4ポイント）**
  - All required sections included | すべての必要なセクションが含まれている
  - Clear, comprehensive documentation | 明確で包括的な文書
  - Professional presentation | プロフェッショナルなプレゼンテーション
  - Evidence of complete ML journey | 完全なML旅の証拠

- **Presentation Preparation (2 points) | プレゼンテーション準備（2ポイント）**
  - Well-structured slides | よく構造化されたスライド
  - Clear narrative of project journey | プロジェクトの旅の明確な物語
  - Appropriate for 5-minute delivery | 5分の配信に適切
  - Personal insights and learnings included | 個人的な洞察と学習が含まれている

- **AI Transparency (2 points) | AI透明性（2ポイント）**
  - Complete AI interaction log for all weeks | すべての週の完全なAIインタラクションログ
  - Proper documentation of all AI usage | すべてのAI使用の適切な文書化
  - Verification processes clearly described | 検証プロセスが明確に説明されている

**Quality Expectations:**
- Complete, polished, professional submission | 完全で洗練されたプロフェッショナルな提出
- Evidence of learning journey throughout course | コース全体での学習の旅の証拠
- Personal connection to project clearly articulated | プロジェクトへの個人的なつながりが明確に明確にされている
- Ready for Week 14 presentation | 第14週のプレゼンテーションの準備ができている
- Bilingual content where appropriate (either EN or JA is acceptable) | 適切な場合はバイリンガルコンテンツ（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Documentation seems too long/overwhelming | 文書が長すぎる/圧倒的に見える**
- **Solution:** You've been working on this for 13 weeks - it SHOULD be comprehensive! Use clear headings and sections. Include visuals to break up text. Each section can be short (1-2 pages). Quality over quantity. | あなたは13週間これに取り組んできました - 包括的であるべきです！明確な見出しとセクションを使用してください。テキストを分割するために視覚を含めてください。各セクションは短くてもよい（1-2ページ）。量より質。
- **Bot Assistance:** Bot provides section length guidelines and helps prioritize content | ボットはセクションの長さのガイドラインを提供し、コンテンツを優先順位付けするのを助けます

**Problem 2: Don't have all AI logs from previous weeks | 以前の週のすべてのAIログがない**
- **Solution:** Compile what you have. For missing logs, note "AI not used for this activity" or recreate basic log if you remember usage. Be honest - partial documentation better than none. Future projects: keep logs as you go. | 持っているものをまとめます。欠落しているログについては、「このアクティビティにはAIを使用していません」と記録するか、使用を覚えている場合は基本的なログを再作成します。正直に - 部分的な文書化はないよりも良いです。将来のプロジェクト：進むにつれてログを保持してください。
- **Bot Assistance:** Bot provides template for documenting missing logs honestly | ボットは欠落しているログを正直に文書化するためのテンプレートを提供

**Problem 3: Presentation seems boring or too technical | プレゼンテーションが退屈または技術的すぎるように見える**
- **Solution:** Tell YOUR story! Start with WHY you care about company recommendations. Show your journey - struggles and successes. Use examples of actual companies. Less jargon, more narrative. Practice telling it like a story to a friend. | あなたのストーリーを伝えてください！企業推薦についてなぜ気にするかから始めます。あなたの旅を示す - 苦闘と成功。実際の企業の例を使用。専門用語を少なく、物語を多く。友人にストーリーのように伝える練習をします。
- **Bot Assistance:** Bot helps reframe technical content into engaging narrative | ボットは技術的コンテンツを魅力的な物語に再構成するのを助けます

**Problem 4: System doesn't feel "complete" or impressive | システムが「完全」または印象的に感じられない**
- **Solution:** This is a LEARNING project, not production system. What matters: Did you complete the ML workflow? Did you learn? The goal was understanding ML process, not perfect accuracy. Your system IS complete if it goes from data → model → predictions. Be proud of what you built! | これは学習プロジェクトであり、本番システムではありません。重要なこと：MLワークフローを完了しましたか？学びましたか？目標はMLプロセスを理解することであり、完璧な精度ではありません。データ → モデル → 予測に進む場合、あなたのシステムは完全です。あなたが構築したものを誇りに思ってください！
- **Bot Assistance:** Bot validates system completeness and celebrates accomplishments | ボットはシステムの完全性を検証し、成果を祝います

**Problem 5: Running out of time to finish everything | すべてを終えるのに時間がなくなる**
- **Solution:** Prioritize: (1) Documentation of what you DID do, (2) Presentation slides, (3) AI transparency logs, (4) Optional refinements only if time allows. Better to submit complete documentation of current system than incomplete documentation of "improved" system. | 優先順位：（1）あなたが行ったことの文書化、（2）プレゼンテーションスライド、（3）AI透明性ログ、（4）時間が許す場合のみオプションの改良。「改良された」システムの不完全な文書よりも、現在のシステムの完全な文書を提出する方が良いです。
- **Bot Assistance:** Bot helps prioritize tasks and create realistic completion timeline | ボットはタスクを優先順位付けし、現実的な完了タイムラインを作成するのを助けます

**Problem 6: Presentation time seems too short (5 minutes) | プレゼンテーション時間が短すぎるように見える（5分）**
- **Solution:** 5 minutes is plenty for key highlights! You can't include everything - that's what documentation is for. Focus on: Problem → Your Solution → Results → Learnings. Practice and time yourself. Most people talk too fast when nervous - slow down. | 5分は主要なハイライトには十分です！すべてを含めることはできません - それが文書の目的です。焦点を当てる：問題 → あなたの解決策 → 結果 → 学習。練習して自分をタイムしてください。ほとんどの人は緊張しているときに速く話しすぎます - 遅くしてください。
- **Bot Assistance:** Bot provides timing guidance for each slide and suggests pacing | ボットは各スライドのタイミングガイダンスを提供し、ペーシングを提案します

**When to Ask for Help:**
- Unsure if project meets requirements | プロジェクトが要件を満たすかどうか不明
- Need feedback on documentation organization | 文書の整理に関するフィードバックが必要
- Want presentation review before Week 14 | 第14週の前にプレゼンテーションレビューが必要
- Technical issues with file organization | ファイル整理の技術的問題

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for completeness validation and organization help | 完全性検証と整理の支援にはボットを使用
- Schedule office hours for presentation practice | プレゼンテーション練習のためにオフィスアワーをスケジュール

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
