# Week 11 Activity: Training ML Classification Models
# 第11週アクティビティ：ML分類モデルの訓練

## Activity Information | アクティビティ情報

**Activity Title:** Training Company Classification Model Using No-Code ML Tool | ノーコードMLツールを使用した企業分類モデルの訓練
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Train ML classification model using no-code platform | ノーコードプラットフォームを使用してML分類モデルを訓練する
**Prerequisites:** Week 10 completion - Labeled training dataset ready | 第10週完了 - ラベル付き訓練データセット準備完了

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Use a no-code ML platform to train classification models | ノーコードMLプラットフォームを使用して分類モデルを訓練する
- Understand the model training process without writing code | コードを書かずにモデル訓練プロセスを理解する
- Configure training parameters and options | 訓練パラメータとオプションを設定する
- Generate a trained model that classifies companies based on their preferences | 彼らの好みに基づいて企業を分類する訓練済みモデルを生成する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** No-code ML platforms, model selection, training process
講義のコンセプト：ノーコードMLプラットフォーム、モデル選択、訓練プロセス

**Activity Application:** Students apply lecture concepts by using an actual no-code ML platform to train their company classification model, experiencing the ML training process hands-on.
アクティビティの適用：学生は実際のノーコードMLプラットフォームを使用して企業分類モデルを訓練することで講義のコンセプトを適用し、MLトレーニングプロセスをハンズオンで体験します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides platform selection, provides step-by-step training instructions, troubleshoots issues, and validates successful model training.
ボットの役割：ML-101ボットはプラットフォーム選択をガイドし、ステップバイステップ訓練指示を提供し、問題をトラブルシュートし、成功したモデル訓練を検証します。

**BMAD Workflow Steps:**
1. Bot guides no-code ML platform setup and access | ボットがノーコードMLプラットフォームのセットアップとアクセスをガイド
2. Bot provides data upload and configuration instructions | ボットがデータアップロードと設定指示を提供
3. Bot explains training parameter options | ボットが訓練パラメータオプションを説明
4. Bot monitors training progress | ボットが訓練進捗を監視
5. Bot validates successful model creation | ボットが成功したモデル作成を検証

**Bot Portal Interaction Points:**
- Platform selection and setup wizard | プラットフォーム選択とセットアップウィザード
- Interactive training configuration guide | インタラクティブな訓練設定ガイド
- Real-time training progress monitoring | リアルタイム訓練進捗監視
- Model validation checkpoint | モデル検証チェックポイント

**Data Captured:**
- Platform chosen and setup success | 選択されたプラットフォームとセットアップの成功
- Training configuration decisions | 訓練設定の決定
- Training time and iterations | 訓練時間と反復
- Model training success/failure | モデル訓練の成功/失敗

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: No-Code ML Platform Setup (12 minutes) | ノーコードMLプラットフォームセットアップ（12分）

**What Students Do:**
- Access recommended no-code ML platform (e.g., Google AutoML, Teachable Machine, Orange Data Mining, or similar) | 推奨されるノーコードMLプラットフォームにアクセス（例：Google AutoML、Teachable Machine、Orange Data Miningなど）
- Create account or sign in | アカウントを作成またはサインイン
- Familiarize with platform interface: | プラットフォームインターフェースに慣れる：
  - Data upload section | データアップロードセクション
  - Model training section | モデル訓練セクション
  - Results/evaluation section | 結果/評価セクション
- Review platform documentation or quickstart tutorial | プラットフォームドキュメントまたはクイックスタートチュートリアルを確認
- Verify Week 10 labeled dataset is ready for upload | 第10週のラベル付きデータセットがアップロード準備ができていることを確認

**Bot Guidance:**
- Recommends specific platform based on: | 以下に基づいて特定のプラットフォームを推奨：
  - Ease of use for beginners | 初心者のための使いやすさ
  - Free tier availability | 無料ティアの利用可能性
  - Support for classification tasks | 分類タスクのサポート
  - CSV data support | CSVデータサポート
- Provides platform-specific setup instructions | プラットフォーム固有のセットアップ指示を提供
- Shows screenshots of key interface elements | 主要なインターフェース要素のスクリーンショットを表示
- Explains: "No-code platforms do the programming for you - you just configure" | 説明：「ノーコードプラットフォームはあなたのためにプログラミングを行います - あなたは設定するだけです」

**Expected Output:** Successfully accessed and configured no-code ML platform
期待される出力：ノーコードMLプラットフォームに成功してアクセスおよび設定

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Data Upload and Configuration (10 minutes) | データアップロードと設定（10分）

**What Students Do:**
- Upload Week 10 labeled training dataset (CSV file) | 第10週のラベル付き訓練データセット（CSVファイル）をアップロード
- Configure dataset settings: | データセット設定を設定：
  - Identify target variable (label column) | ターゲット変数を特定（ラベル列）
  - Identify feature columns (all engineered features) | 特徴量列を特定（すべてのエンジニアリングされた特徴量）
  - Exclude non-feature columns (company_name, original text fields) | 非特徴量列を除外（company_name、元のテキストフィールド）
- Verify data preview: | データプレビューを検証：
  - Check correct number of rows loaded | 正しい行数がロードされていることをチェック
  - Verify label column recognized as target | ラベル列がターゲットとして認識されていることを確認
  - Confirm feature columns detected correctly | 特徴量列が正しく検出されていることを確認
- Review data summary statistics if provided by platform | プラットフォームが提供する場合、データ要約統計を確認

**Bot Guidance:**
- Provides platform-specific upload instructions | プラットフォーム固有のアップロード指示を提供
- Guides target variable selection: "Choose the 'label' column as what you want to predict" | ターゲット変数選択をガイド：「予測したいものとして『label』列を選択してください」
- Helps configure column types: "Make sure features are set as 'input' and label as 'output'" | 列タイプの設定を支援：「特徴量が『input』として設定され、ラベルが『output』として設定されていることを確認してください」
- Validates configuration: "✓ Data uploaded correctly - 25 companies, 30 features, 2 classes" | 設定を検証：「✓ データが正しくアップロードされました - 25社、30特徴量、2クラス」

**Expected Output:** Successfully uploaded and configured dataset in ML platform
期待される出力：MLプラットフォームに成功してアップロードおよび設定されたデータセット

**Time Allocation:** 10 minutes | 10分

---

### Step 3: Training Configuration and Model Selection (10 minutes) | 訓練設定とモデル選択（10分）

**What Students Do:**
- Select classification task type (binary classification: interested vs not interested) | 分類タスクタイプを選択（二項分類：興味がある vs 興味がない）
- Choose training options: | 訓練オプションを選択：
  - **Automatic mode** (recommended): Platform selects best model | 自動モード（推奨）：プラットフォームが最良のモデルを選択
  - OR **Manual mode**: Choose specific algorithm (Logistic Regression, Decision Tree, Random Forest, etc.) | または手動モード：特定のアルゴリズムを選択（ロジスティック回帰、決定木、ランダムフォレストなど）
- Configure training parameters (if available): | 訓練パラメータを設定（利用可能な場合）：
  - Training time budget | 訓練時間予算
  - Train/test split ratio (typically 80/20) | 訓練/テスト分割比率（通常80/20）
  - Validation method | 検証方法
- Review and understand what the platform will do during training | プラットフォームが訓練中に何を行うかを確認して理解

**Bot Guidance:**
- Recommends automatic mode for beginners: "Let the platform choose - it knows best" | 初心者には自動モードを推奨：「プラットフォームに選択させてください - それが最もよく知っています」
- Explains training process: "Platform will try different models and pick the best one" | 訓練プロセスを説明：「プラットフォームは異なるモデルを試し、最良のものを選択します」
- If manual mode chosen, suggests: "Random Forest or Logistic Regression work well for small datasets" | 手動モードが選択された場合、提案：「ランダムフォレストまたはロジスティック回帰は小さなデータセットによく機能します」
- Explains split: "80% used for training, 20% held back for testing" | 分割を説明：「80%が訓練に使用され、20%がテスト用に保持されます」
- Provides guidance on time budget: "5-10 minutes is enough for your dataset size" | 時間予算に関するガイダンスを提供：「あなたのデータセットサイズには5-10分で十分です」

**Expected Output:** Configured training settings ready to start model training
期待される出力：モデル訓練を開始する準備ができた設定された訓練設定

**Time Allocation:** 10 minutes | 10分

---

### Step 4: Model Training Execution (15 minutes) | モデル訓練実行（15分）

**What Students Do:**
- Start the training process by clicking "Train" or "Start" button | 「Train」または「Start」ボタンをクリックして訓練プロセスを開始
- Monitor training progress: | 訓練進捗を監視：
  - Watch progress bar or status updates | 進捗バーまたはステータス更新を見る
  - Observe metrics being calculated (accuracy, etc.) | 計算されているメトリクス（精度など）を観察
  - Note any warnings or messages from platform | プラットフォームからの警告またはメッセージに注意
- Wait for training to complete (may take 5-15 minutes depending on platform and dataset) | 訓練が完了するのを待つ（プラットフォームとデータセットに応じて5-15分かかる場合があります）
- Take screenshots of training process | 訓練プロセスのスクリーンショットを撮る
- Document: | 文書化：
  - Training start time | 訓練開始時間
  - Model(s) tried by platform | プラットフォームが試したモデル
  - Any interesting observations | 興味深い観察

**Bot Guidance:**
- Explains what's happening during training: "Platform is finding patterns in your labeled data" | 訓練中に何が起こっているかを説明：「プラットフォームはあなたのラベル付きデータのパターンを見つけています」
- Provides context: "Model learns which features predict companies you find interesting" | コンテキストを提供：「モデルはあなたが興味深いと思う企業を予測する特徴量を学習します」
- Reassures if taking time: "Training may take several minutes - this is normal" | 時間がかかる場合安心させる：「訓練には数分かかる場合があります - これは正常です」
- Encourages observation: "Watch the metrics - you'll see the model improving" | 観察を奨励：「メトリクスを見てください - モデルが改善しているのがわかります」

**Expected Output:** Completed model training with success confirmation from platform
期待される出力：プラットフォームからの成功確認を伴う完了したモデル訓練

**Time Allocation:** 15 minutes | 15分

---

### Step 5: Initial Model Review and Export (13 minutes) | 初期モデルレビューとエクスポート（13分）

**What Students Do:**
- Review training results summary: | 訓練結果の要約を確認：
  - Training accuracy | 訓練精度
  - Model type selected (if automatic mode) | 選択されたモデルタイプ（自動モードの場合）
  - Feature importance (if provided) | 特徴量の重要性（提供される場合）
  - Any performance metrics shown | 表示されるパフォーマンスメトリクス
- Take screenshots of results dashboard | 結果ダッシュボードのスクリーンショットを撮る
- Save or export trained model (if platform allows): | 訓練済みモデルを保存またはエクスポート（プラットフォームが許可する場合）：
  - Download model file | モデルファイルをダウンロード
  - Or save to platform account | またはプラットフォームアカウントに保存
  - Note model ID or name | モデルIDまたは名前を記録
- Document training experience: | 訓練経験を文書化：
  - Platform used | 使用されたプラットフォーム
  - Training time | 訓練時間
  - Model achieved | 達成されたモデル
  - Initial accuracy | 初期精度
- Complete AI transparency log if external AI was used | 外部AIを使用した場合、AI透明性ログを完成
- Prepare for Week 12 evaluation | 第12週の評価のために準備

**Bot Guidance:**
- Helps interpret results: "Training accuracy of 85% means model correctly classified 85% of training data" | 結果を解釈するのを助ける：「85%の訓練精度は、モデルが訓練データの85%を正しく分類したことを意味します」
- Manages expectations: "Perfect accuracy is not expected or even desired - we'll evaluate properly next week" | 期待を管理：「完璧な精度は期待されていませんし、望ましくもありません - 来週適切に評価します」
- Celebrates success: "🎉 Congratulations! You've trained your first ML model!" | 成功を祝う：「🎉 おめでとうございます！最初のMLモデルを訓練しました！」
- Previews next steps: "Next week we'll test this model on new companies" | 次のステップをプレビュー：「来週、新しい企業でこのモデルをテストします」
- Guides documentation: "Save all settings and results - you'll need them for your report" | 文書化をガイド：「すべての設定と結果を保存してください - レポートに必要になります」

**Expected Output:** Trained ML model with documented training results and screenshots
期待される出力：文書化された訓練結果とスクリーンショットを含む訓練済みMLモデル

**Time Allocation:** 13 minutes | 13分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- No-code ML platform (recommended options provided by instructor) | ノーコードMLプラットフォーム（インストラクターが提供する推奨オプション）
- Week 10 labeled training dataset | 第10週ラベル付き訓練データセット
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 10 labeled training data CSV | 第10週ラベル付き訓練データCSV
- Platform-specific setup guides | プラットフォーム固有のセットアップガイド
- Training configuration template | 訓練設定テンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- No-code ML platforms comparison | ノーコードMLプラットフォーム比較
- Classification algorithms overview (non-technical) | 分類アルゴリズム概要（非技術的）
- Training process explanation | 訓練プロセスの説明
- Model evaluation metrics introduction | モデル評価メトリクス入門

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain ML training concepts | ML訓練コンセプトを説明するようAIに依頼
- Getting help understanding platform interface | プラットフォームインターフェースの理解を支援
- Learning about different ML algorithms | さまざまなMLアルゴリズムについて学ぶ
- Understanding training parameters and options | 訓練パラメータとオプションの理解

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What does Random Forest algorithm do in classification?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you verify AI's explanation against course materials?
   - Did the information help you understand the training process?

4. **Check for hallucinations** | 幻覚をチェック
   - Did AI provide accurate information about ML training?
   - Were platform-specific instructions correct?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Training Results Documentation (required) | 訓練結果文書（必須）**
   - Platform used | 使用されたプラットフォーム
   - Training configuration settings | 訓練設定設定
   - Model type/algorithm selected | 選択されたモデルタイプ/アルゴリズム
   - Training time and date | 訓練時間と日付
   - Initial performance metrics | 初期パフォーマンスメトリクス
   - Screenshots of training process and results | 訓練プロセスと結果のスクリーンショット
   - Format: Word/PDF with embedded images | 形式：埋め込まれた画像を含むWord/PDF

2. **Trained Model Access Information (required) | 訓練済みモデルアクセス情報（必須）**
   - Model ID or name in platform | プラットフォーム内のモデルIDまたは名前
   - OR downloaded model file (if applicable) | またはダウンロードされたモデルファイル（該当する場合）
   - Instructions for accessing model for Week 12 evaluation | 第12週の評価のためのモデルへのアクセス手順
   - Format: Text document or model file | 形式：テキストドキュメントまたはモデルファイル

3. **Training Reflection (required) | 訓練考察（必須）**
   - What did you observe during training? | 訓練中に何を観察しましたか？
   - Were there any surprises or challenges? | 驚きや課題はありましたか？
   - What do you think the model learned from your labels? | モデルはあなたのラベルから何を学んだと思いますか？
   - How do you feel about the initial accuracy? | 初期精度についてどう感じますか？
   - 1-2 paragraphs | 1-2段落
   - Format: Word/PDF | 形式：Word/PDF

4. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week11_YourName_ModelTraining | ファイル命名：Week11_あなたの名前_ModelTraining

**Deadline:** End of Week 11 | 第11週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Platform Setup and Data Upload (2 points) | プラットフォームセットアップとデータアップロード（2ポイント）**
  - Successfully accessed no-code ML platform | ノーコードMLプラットフォームに成功してアクセス
  - Correctly uploaded and configured dataset | データセットを正しくアップロードおよび設定

- **Training Configuration (2 points) | 訓練設定（2ポイント）**
  - Appropriate training settings selected | 適切な訓練設定が選択されている
  - Correct target and feature columns configured | 正しいターゲットと特徴量列が設定されている

- **Model Training Completion (4 points) | モデル訓練完了（4ポイント）**
  - Successfully completed model training | モデル訓練を成功して完了
  - Model generated and saved | モデルが生成され保存されている
  - Training results documented with screenshots | スクリーンショット付きで訓練結果が文書化されている
  - Model accessible for Week 12 evaluation | 第12週の評価のためにモデルがアクセス可能

- **Documentation and AI Transparency (2 points) | 文書化とAI透明性（2ポイント）**
  - Comprehensive documentation of training process | 訓練プロセスの包括的な文書化
  - Thoughtful reflection on experience | 経験に関する思慮深い考察
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ

**Quality Expectations:**
- Clear evidence of successful model training | 成功したモデル訓練の明確な証拠
- Professional documentation with screenshots | スクリーンショット付きのプロフェッショナルな文書化
- Understanding of training process demonstrated | 訓練プロセスの理解が実証されている
- Model ready for next week's evaluation | 来週の評価のためにモデルが準備できている
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Platform won't accept CSV file | プラットフォームがCSVファイルを受け入れない**
- **Solution:** Check file format. Try opening in Excel/Sheets and re-saving as CSV. Ensure no special characters in column names. Check file size limits. Try different browser. | ファイル形式をチェック。Excel/Sheetsで開き、CSVとして再保存してみます。列名に特殊文字がないことを確認。ファイルサイズ制限をチェック。別のブラウザを試す。
- **Bot Assistance:** Bot provides platform-specific file requirements and troubleshooting steps | ボットはプラットフォーム固有のファイル要件とトラブルシューティングステップを提供

**Problem 2: Platform says dataset is too small | プラットフォームがデータセットが小さすぎると言う**
- **Solution:** 20-25 companies should be acceptable for most platforms. If not, try different platform. Some require minimum rows - check documentation. This is a learning exercise, not production ML. | 20-25社はほとんどのプラットフォームで受け入れられるはずです。そうでない場合は、別のプラットフォームを試してください。一部は最小行数を必要とします - ドキュメントを確認。これは学習演習であり、本番MLではありません。
- **Bot Assistance:** Bot suggests alternative platforms with lower minimum requirements | ボットはより低い最小要件の代替プラットフォームを提案

**Problem 3: Training fails or returns error | 訓練が失敗またはエラーを返す**
- **Solution:** Common causes: missing values in features, wrong data types, target column not properly set. Review data configuration. Check all feature columns are numeric. Verify label column has only 0 and 1. | 一般的な原因：特徴量の欠損値、間違ったデータ型、ターゲット列が適切に設定されていない。データ設定を確認。すべての特徴量列が数値であることをチェック。ラベル列が0と1のみを持つことを確認。
- **Bot Assistance:** Bot helps diagnose error messages and suggests fixes | ボットはエラーメッセージを診断し、修正を提案するのを助けます

**Problem 4: Don't understand training options | 訓練オプションが理解できない**
- **Solution:** Use automatic/default settings - they're designed to work well. You don't need to understand every parameter. Read tooltips if available. Skip optional advanced settings. The important thing is completing training. | 自動/デフォルト設定を使用 - それらはうまく機能するように設計されています。すべてのパラメータを理解する必要はありません。利用可能な場合はツールチップを読みます。オプションの高度な設定をスキップ。重要なのは訓練を完了することです。
- **Bot Assistance:** Bot explains essential options and recommends safe defaults | ボットは必須オプションを説明し、安全なデフォルトを推奨

**Problem 5: Training takes very long time | 訓練に非常に長い時間がかかる**
- **Solution:** For small dataset, shouldn't take more than 15 minutes. If longer, check internet connection. Some platforms queue requests - be patient. Try during off-peak hours. Consider different platform if consistently slow. | 小さなデータセットの場合、15分以上かかるべきではありません。より長い場合、インターネット接続を確認。一部のプラットフォームはリクエストをキューに入れます - 辛抱強く。オフピーク時間に試す。一貫して遅い場合は別のプラットフォームを検討。
- **Bot Assistance:** Bot provides time expectations and alternative platform suggestions | ボットは時間の期待と代替プラットフォームの提案を提供

**Problem 6: Training accuracy seems very low (e.g., 60%) | 訓練精度が非常に低いように見える（例：60%）**
- **Solution:** This is okay for first attempt! Remember: random guessing would be 50% for binary classification. 60-70% shows model is learning something. We'll evaluate properly next week. Low accuracy could mean: small dataset, challenging classification task, or need better features. Don't worry yet. | 最初の試行ではこれは大丈夫です！覚えておいてください：ランダムな推測は二項分類の場合50%になります。60-70%はモデルが何かを学習していることを示します。来週適切に評価します。低い精度は以下を意味する可能性があります：小さなデータセット、挑戦的な分類タスク、またはより良い特徴量が必要。まだ心配しないでください。
- **Bot Assistance:** Bot provides context for accuracy levels and manages expectations | ボットは精度レベルのコンテキストを提供し、期待を管理

**When to Ask for Help:**
- Platform technical issues preventing training | 訓練を妨げるプラットフォームの技術的問題
- Training consistently fails | 訓練が一貫して失敗する
- Confused about critical configuration settings | 重要な設定設定について混乱している
- Can't save or access trained model | 訓練済みモデルを保存またはアクセスできない

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for platform guidance and troubleshooting | プラットフォームガイダンスとトラブルシューティングにはボットを使用
- Share error messages and screenshots when asking for help | 助けを求めるときはエラーメッセージとスクリーンショットを共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
