# Week 12 Activity: Model Evaluation and Making Predictions
# 第12週アクティビティ：モデル評価と予測の実行

## Activity Information | アクティビティ情報

**Activity Title:** Testing Model on New Companies and Evaluating Performance | 新しい企業でモデルをテストし性能を評価
**Duration:** 40-60 minutes | 40-60分
**Learning Objectives Addressed:** Evaluate ML model performance and make predictions on new data | MLモデルの性能を評価し、新しいデータで予測を行う
**Prerequisites:** Week 11 completion - Trained classification model | 第11週完了 - 訓練済み分類モデル

---

## Activity Learning Objectives | アクティビティ学習目標

Students will:
学生は以下ができるようになります：

- Test trained model on new company data | 新しい企業データで訓練済みモデルをテスト
- Evaluate model performance using appropriate metrics | 適切なメトリクスを使用してモデルの性能を評価
- Interpret prediction results and understand model behavior | 予測結果を解釈しモデルの動作を理解する
- Apply critical thinking to assess AI system capabilities and limitations | AIシステムの能力と限界を評価するために批判的思考を適用する

---

## Prior Lecture Connection | 事前講義とのつながり

**Lecture Concepts:** Evaluation metrics, interpreting results, critical thinking about AI
講義のコンセプト：評価指標、結果の解釈、AIに関する批判的思考

**Activity Application:** Students apply lecture concepts by evaluating their own trained model, experiencing firsthand how ML predictions work and understanding both successes and failures.
アクティビティの適用：学生は自分の訓練済みモデルを評価することで講義のコンセプトを適用し、ML予測がどのように機能するかを直接体験し、成功と失敗の両方を理解します。

---

## Bot Workflow Integration | ボットワークフロー統合

**Bot's Role:** ML-101 Bot guides test data collection, facilitates model testing, explains evaluation metrics, and conducts conversational assessment of understanding.
ボットの役割：ML-101ボットはテストデータ収集をガイドし、モデルテストを促進し、評価メトリクスを説明し、理解の会話的評価を実施します。

**BMAD Workflow Steps:**
1. Bot guides collection of new test companies | ボットが新しいテスト企業の収集をガイド
2. Bot assists with model testing and prediction generation | ボットがモデルテストと予測生成を支援
3. Bot explains evaluation metrics and their meaning | ボットが評価メトリクスとその意味を説明
4. Bot facilitates critical analysis of results | ボットが結果の批判的分析を促進
5. Bot conducts conversational assessment in interview format | ボットがインタビュー形式で会話的評価を実施

**Bot Portal Interaction Points:**
- Test data collection guidance | テストデータ収集ガイダンス
- Prediction interpretation assistance | 予測解釈支援
- Evaluation metrics explanation | 評価メトリクス説明
- Conversational assessment interview | 会話的評価インタビュー

**Data Captured:**
- Test data characteristics | テストデータ特性
- Model predictions and accuracy | モデルの予測と精度
- Student's interpretation of results | 学生の結果の解釈
- Critical thinking about AI capabilities | AI能力に関する批判的思考

---

## Step-by-Step Instructions | ステップバイステップ指示

### Step 1: Collecting Test Data (12 minutes) | テストデータの収集（12分）

**What Students Do:**
- Collect 5-10 NEW companies not in training dataset: | 訓練データセットにない5-10の新しい企業を収集：
  - Use same sources as Week 6 | 第6週と同じソースを使用
  - Mix of companies you'd expect to be "interested" and "not interested" | 「興味がある」と「興味がない」と予想される企業の混合
  - Include some borderline cases | いくつかの境界線ケースを含める
- Apply same data collection process: | 同じデータ収集プロセスを適用：
  - Collect same fields as training data | 訓練データと同じフィールドを収集
  - Clean and standardize data | データをクリーニングおよび標準化
- Engineer same features used in training: | 訓練で使用された同じ特徴量をエンジニアリング：
  - One-hot encoding for categories | カテゴリのワンホットエンコーディング
  - Keyword features from descriptions | 説明からのキーワード特徴量
  - Same feature columns as training data | 訓練データと同じ特徴量列
- Document true labels (your actual interest) for later comparison | 後の比較のために真のラベル（あなたの実際の興味）を文書化
- Create test dataset CSV matching training data structure | 訓練データ構造に一致するテストデータセットCSVを作成

**Bot Guidance:**
- Emphasizes: "Test data MUST be different companies - never seen by model before" | 強調：「テストデータは異なる企業である必要があります - モデルが以前に見たことがない」
- Provides collection checklist: same fields, same feature engineering | 収集チェックリストを提供：同じフィールド、同じ特徴量エンジニアリング
- Suggests: "Include diverse cases to really test the model" | 提案：「モデルを本当にテストするために多様なケースを含めてください」
- Validates data structure matches training data | データ構造が訓練データと一致することを検証

**Expected Output:** Test dataset of 5-10 new companies with same features as training data
期待される出力：訓練データと同じ特徴量を持つ5-10の新しい企業のテストデータセット

**Time Allocation:** 12 minutes | 12分

---

### Step 2: Making Predictions with Trained Model (12 minutes) | 訓練済みモデルで予測を行う（12分）

**What Students Do:**
- Access Week 11 trained model in no-code platform | ノーコードプラットフォームで第11週の訓練済みモデルにアクセス
- Upload test dataset for prediction | 予測のためにテストデータセットをアップロード
- Run predictions on test companies | テスト企業で予測を実行
- Review prediction results: | 予測結果を確認：
  ```
  Company Name | Model Prediction (0/1) | Confidence/Probability | Your True Label
  Company A    | 1 (Interested)         | 85%                    | 1 (Interested)
  Company B    | 0 (Not Interested)     | 65%                    | 1 (Interested)
  ...
  ```
- Export prediction results | 予測結果をエクスポート
- Create comparison table: predictions vs your true labels | 比較表を作成：予測 vs あなたの真のラベル

**Bot Guidance:**
- Provides platform-specific prediction instructions | プラットフォーム固有の予測指示を提供
- Explains confidence scores: "85% means model is very sure; 55% means uncertain" | 信頼度スコアを説明：「85%はモデルが非常に確信していることを意味します；55%は不確実です」
- Encourages observation: "Notice which companies the model gets right and wrong" | 観察を奨励：「モデルがどの企業を正しく、間違っているかに注意してください」
- Guides comparison: "For each company, did the model agree with you?" | 比較をガイド：「各企業について、モデルはあなたに同意しましたか？」

**Expected Output:** Prediction results for all test companies with comparison to true labels
期待される出力：真のラベルとの比較を含むすべてのテスト企業の予測結果

**Time Allocation:** 12 minutes | 12分

---

### Step 3: Calculating Evaluation Metrics (13 minutes) | 評価メトリクスの計算（13分）

**What Students Do:**
- Calculate basic evaluation metrics manually or using platform: | 手動またはプラットフォームを使用して基本的な評価メトリクスを計算：

  **Accuracy:**
  ```
  Accuracy = (Correct Predictions) / (Total Predictions)
  Example: 7 correct out of 10 = 70% accuracy
  ```

  **Confusion Matrix:**
  ```
  | Actual \ Predicted | Not Interested (0) | Interested (1) |
  |--------------------|--------------------|-----------------|
  | Not Interested (0) | True Negatives     | False Positives |
  | Interested (1)     | False Negatives    | True Positives  |
  ```

  - Count: True Positives, True Negatives, False Positives, False Negatives | カウント：真陽性、真陰性、偽陽性、偽陰性

  **Additional Metrics (if platform provides):**
  - Precision: Of predicted "interested", how many actually were? | 精度：予測された「興味がある」のうち、実際にいくつがそうでしたか？
  - Recall: Of actual "interested", how many did model find? | 再現率：実際の「興味がある」のうち、モデルはいくつ見つけましたか？

- Document calculations with examples | 例を含む計算を文書化
- Create visualization of results (simple charts/tables) | 結果の可視化を作成（シンプルなチャート/テーブル）

**Bot Guidance:**
- Explains each metric in simple terms | 各メトリクスを簡単な言葉で説明
- Provides calculation templates | 計算テンプレートを提供
- Helps interpret: "70% accuracy means model correctly predicted 7 out of 10 companies" | 解釈を支援：「70%の精度は、モデルが10社のうち7社を正しく予測したことを意味します」
- Contextualizes: "For small test sets, percentages fluctuate - that's normal" | コンテキスト化：「小さなテストセットの場合、パーセンテージは変動します - それは正常です」

**Expected Output:** Complete evaluation metrics with calculations documented
期待される出力：計算が文書化された完全な評価メトリクス

**Time Allocation:** 13 minutes | 13分

---

### Step 4: Critical Analysis of Model Performance (13 minutes) | モデル性能の批判的分析（13分）

**What Students Do:**
- Analyze prediction errors - where and why did model fail?: | 予測エラーを分析 - モデルはどこでなぜ失敗しましたか？：
  - Which companies were misclassified? | どの企業が誤分類されましたか？
  - What features might have confused the model? | どの特徴量がモデルを混乱させた可能性がありますか？
  - Were errors on borderline cases or clear mistakes? | エラーは境界線ケースまたは明確な間違いでしたか？
- Examine successful predictions: | 成功した予測を調査：
  - What patterns did model learn correctly? | モデルは何のパターンを正しく学習しましたか？
  - Which features were most useful? | どの特徴量が最も有用でしたか？
- Reflect on model capabilities and limitations: | モデルの能力と限界を反省：
  - What can this model do well? | このモデルは何をうまくできますか？
  - What are its weaknesses? | 弱点は何ですか？
  - Would you trust its predictions? Why or why not? | その予測を信頼しますか？なぜ、またはなぜしないのですか？
  - How could model be improved? | モデルはどのように改善できますか？
- Consider broader AI implications: | より広いAIの影響を検討：
  - Biases in training data affecting predictions? | 予測に影響する訓練データのバイアス？
  - Ethical considerations of automated decision-making | 自動意思決定の倫理的考慮事項
  - Real-world consequences of errors | エラーの実世界での結果

**Bot Guidance:**
- Asks probing questions: | 探索的な質問を行う：
  - "Why do you think the model missed Company X?" | 「なぜモデルは企業Xを逃したと思いますか？」
  - "What would happen if you used this for real job decisions?" | 「実際の仕事の決定にこれを使用したらどうなりますか？」
  - "Did your training labels influence the model's biases?" | 「あなたの訓練ラベルはモデルのバイアスに影響しましたか？」
- Encourages critical thinking: "ML is a tool, not magic - it has limits" | 批判的思考を奨励：「MLはツールであり、魔法ではありません - 限界があります」
- Facilitates deeper understanding of AI systems | AIシステムのより深い理解を促進

**Expected Output:** Critical analysis report with insights about model strengths, weaknesses, and implications
期待される出力：モデルの強み、弱点、影響についての洞察を含む批判的分析レポート

**Time Allocation:** 13 minutes | 13分

---

### Step 5: Bot-Conducted Conversational Assessment (10 minutes) | ボット実施会話的評価（10分）

**What Students Do:**
- Participate in bot-conducted interview about ML concepts and project: | MLコンセプトとプロジェクトに関するボット実施インタビューに参加：
  - Bot asks questions about understanding | ボットが理解について質問
  - Student provides verbal or written responses | 学生が口頭または書面で回答
  - Bot follows up based on responses | ボットが回答に基づいてフォローアップ
- Example assessment questions: | 評価質問の例：
  - "Explain how your model makes predictions" | 「あなたのモデルがどのように予測を行うかを説明してください」
  - "What does 75% accuracy mean for your project?" | 「あなたのプロジェクトにとって75%の精度は何を意味しますか？」
  - "Describe a limitation of your model" | 「あなたのモデルの限界を説明してください」
  - "How would you improve your model?" | 「あなたのモデルをどのように改善しますか？」
  - "What ethical considerations apply to your ML system?" | 「あなたのMLシステムにどのような倫理的考慮事項が適用されますか？」
- Engage thoughtfully with interview process | インタビュープロセスに思慮深く関与
- Complete AI transparency log for entire activity | アクティビティ全体のAI透明性ログを完成

**Bot Guidance:**
- Conducts structured interview | 構造化されたインタビューを実施
- Asks follow-up questions based on responses | 回答に基づいてフォローアップ質問を行う
- Assesses understanding of key concepts | 主要なコンセプトの理解を評価
- Provides feedback on responses | 回答についてフィードバックを提供
- Evaluates critical thinking about AI | AIに関する批判的思考を評価

**Expected Output:** Completed conversational assessment with bot feedback
期待される出力：ボットフィードバックを含む完了した会話的評価

**Time Allocation:** 10 minutes | 10分

---

## Materials & Resources | 教材とリソース

**Software/Tools:**
- Week 11 trained model | 第11週訓練済みモデル
- No-code ML platform access | ノーコードMLプラットフォームアクセス
- Data collection tools from Week 6 | 第6週のデータ収集ツール
- Google Colab or spreadsheet software | Google Colabまたはスプレッドシートソフトウェア
- ML-101 Bot portal access | ML-101ボットポータルアクセス
- Optional: External AI chatbots (ChatGPT, Claude, Gemini) | オプション：外部AIチャットボット（ChatGPT、Claude、Gemini）

**Files/Datasets:**
- Week 11 trained model | 第11週訓練済みモデル
- Test data collection template | テストデータ収集テンプレート
- Evaluation metrics calculation worksheet | 評価メトリクス計算ワークシート
- Critical analysis template | 批判的分析テンプレート
- AI transparency log template | AI透明性ログテンプレート

**Reference Materials:**
- Evaluation metrics explained (accuracy, precision, recall) | 評価メトリクスの説明（精度、適合率、再現率）
- Confusion matrix guide | 混同行列ガイド
- AI ethics and bias considerations | AI倫理とバイアスの考慮事項
- Model interpretation best practices | モデル解釈のベストプラクティス

---

## AI Chatbot Usage for Activity | アクティビティのためのAIチャットボット使用

**Appropriate AI Assistance:**
- Asking AI to explain evaluation metrics | 評価メトリクスを説明するようAIに依頼
- Getting help understanding confusion matrix | 混同行列の理解を支援
- Learning about model interpretation techniques | モデル解釈技術について学ぶ
- Discussing AI ethics and bias concepts | AI倫理とバイアスのコンセプトを議論

**WARNING:** Do NOT use AI during the bot-conducted conversational assessment - responses must be your own understanding.
警告：ボット実施の会話的評価中にAIを使用しないでください - 回答はあなた自身の理解でなければなりません。

**REQUIRED Documentation:**
1. **Share all prompts used** | 使用したすべてのプロンプトを共有
   - Example: "What does precision mean in classification?"

2. **Share all AI responses** | すべてのAI応答を共有
   - Copy complete explanations

3. **Document verification process** | 検証プロセスを文書化
   - Did you verify AI's explanation against course materials?
   - Did you understand the concepts after AI explanation?

4. **Check for hallucinations** | 幻覚をチェック
   - Did AI provide accurate information about metrics?
   - Were evaluation concepts explained correctly?

---

## Activity Deliverables | アクティビティ成果物

**What to Submit:**

1. **Test Dataset (required) | テストデータセット（必須）**
   - CSV file with 5-10 new test companies | 5-10の新しいテスト企業を含むCSVファイル
   - Same feature structure as training data | 訓練データと同じ特徴量構造
   - True labels documented | 真のラベルが文書化されている
   - Format: CSV file | 形式：CSVファイル

2. **Prediction Results (required) | 予測結果（必須）**
   - Model predictions for all test companies | すべてのテスト企業のモデル予測
   - Comparison table: predictions vs true labels | 比較表：予測 vs 真のラベル
   - Confidence scores (if available) | 信頼度スコア（利用可能な場合）
   - Format: Excel/CSV or in report | 形式：Excel/CSVまたはレポート内

3. **Model Evaluation Report (required) | モデル評価レポート（必須）**
   - Evaluation metrics calculations (accuracy, confusion matrix) | 評価メトリクス計算（精度、混同行列）
   - Visualizations of results | 結果の可視化
   - Critical analysis of model performance | モデル性能の批判的分析
   - Discussion of strengths and limitations | 強みと限界の議論
   - Reflections on AI ethics and implications | AI倫理と影響についての考察
   - Format: Word/PDF | 形式：Word/PDF

4. **Conversational Assessment Record (required) | 会話的評価記録（必須）**
   - Bot assessment questions and your responses | ボット評価質問とあなたの回答
   - Bot feedback received | 受け取ったボットフィードバック
   - Format: Screenshot or text transcript | 形式：スクリーンショットまたはテキスト転写

5. **AI Transparency Log (if applicable) | AI透明性ログ（該当する場合）**
   - All AI prompts and responses | すべてのAIプロンプトと応答
   - Verification documentation | 検証文書
   - Statement confirming AI was NOT used during bot assessment | ボット評価中にAIが使用されなかったことを確認する声明
   - Format: Use provided template | 形式：提供されたテンプレートを使用

**Submission Format:**
- Submit via course portal | コースポータル経由で提出
- File naming: Week12_YourName_ModelEvaluation | ファイル命名：Week12_あなたの名前_ModelEvaluation

**Deadline:** End of Week 12 | 第12週末まで

---

## Assessment Criteria | 評価基準

**Completion Criteria (10 points total):**

- **Test Data and Predictions (2 points) | テストデータと予測（2ポイント）**
  - Appropriate test dataset collected (5-10 new companies) | 適切なテストデータセットが収集されている（5-10の新しい企業）
  - Predictions successfully generated | 予測が成功して生成されている
  - Results clearly documented | 結果が明確に文書化されている

- **Evaluation Metrics (2 points) | 評価メトリクス（2ポイント）**
  - Correct calculation of accuracy and confusion matrix | 精度と混同行列の正しい計算
  - Appropriate interpretation of metrics | メトリクスの適切な解釈
  - Clear presentation of results | 結果の明確な提示

- **Critical Analysis (3 points) | 批判的分析（3ポイント）**
  - Thoughtful analysis of model errors | モデルエラーの思慮深い分析
  - Clear understanding of model capabilities and limitations | モデルの能力と限界の明確な理解
  - Critical thinking about AI ethics and implications | AI倫理と影響に関する批判的思考
  - Practical suggestions for improvement | 改善のための実践的な提案

- **Conversational Assessment and AI Transparency (3 points) | 会話的評価とAI透明性（3ポイント）**
  - Meaningful participation in bot assessment | ボット評価への意味のある参加
  - Demonstrated understanding of key concepts | 主要なコンセプトの実証された理解
  - Complete AI transparency log if AI was used | AIを使用した場合の完全なAI透明性ログ
  - Confirmation of independent work during assessment | 評価中の独立した作業の確認

**Quality Expectations:**
- Evidence of genuine understanding, not memorization | 暗記ではなく真の理解の証拠
- Critical thinking applied to AI systems | AIシステムに適用された批判的思考
- Professional documentation and presentation | プロフェッショナルな文書化とプレゼンテーション
- Honest reflection on model performance | モデル性能に関する正直な考察
- Bilingual submissions welcome (either EN or JA is acceptable) | バイリンガル提出歓迎（ENまたはJAのいずれかが受け入れられます）

---

## Common Issues & Solutions | 一般的な問題と解決策

**Problem 1: Model accuracy is very low on test data | テストデータでモデルの精度が非常に低い**
- **Solution:** This happens! Possible reasons: (1) Small training data, (2) Test companies very different from training, (3) Classification task is genuinely hard. Don't panic - document and analyze WHY. This is valuable learning about ML limitations. | これは起こります！考えられる理由：（1）小さな訓練データ、（2）テスト企業が訓練と非常に異なる、（3）分類タスクが本当に難しい。パニックにならないでください - なぜかを文書化して分析してください。これはML限界に関する貴重な学習です。
- **Bot Assistance:** Bot helps analyze reasons for low accuracy and provides context | ボットは低精度の理由を分析し、コンテキストを提供するのを助けます

**Problem 2: Can't get model to make predictions on new data | 新しいデータでモデルに予測をさせることができない**
- **Solution:** Check: (1) Feature columns exactly match training data, (2) Data format is same as training (CSV), (3) No missing values in features, (4) Column names are identical. Try with just 1 test company first. | チェック：（1）特徴量列が訓練データと正確に一致、（2）データフォーマットが訓練と同じ（CSV）、（3）特徴量に欠損値がない、（4）列名が同一。まず1つのテスト企業で試してください。
- **Bot Assistance:** Bot provides troubleshooting checklist for prediction errors | ボットは予測エラーのトラブルシューティングチェックリストを提供

**Problem 3: Confused about what metrics mean | メトリクスが何を意味するかについて混乱している**
- **Solution:** Focus on accuracy first - simplest metric. "7 correct out of 10 = 70% accurate." For confusion matrix, think in categories: "How many interested companies did model correctly identify as interested?" Work through specific examples. | まず精度に焦点を当てる - 最もシンプルなメトリクス。「10のうち7が正しい = 70%正確」。混同行列の場合、カテゴリで考える：「モデルは興味のある企業のうちいくつを興味があると正しく特定しましたか？」具体的な例を通じて作業します。
- **Bot Assistance:** Bot explains metrics using specific examples from your data | ボットはあなたのデータからの具体的な例を使用してメトリクスを説明

**Problem 4: Model gets everything wrong or everything right | モデルがすべてを間違えるまたはすべてを正しく取得する**
- **Solution:** Everything wrong: Check if labels are reversed (0 vs 1 flipped). Everything right: Test set might be too easy or too similar to training. Try more diverse test cases. With small test sets, extreme results possible. | すべてが間違っている：ラベルが逆転しているかチェック（0 vs 1が反転）。すべてが正しい：テストセットが簡単すぎるか、訓練に似すぎている可能性があります。より多様なテストケースを試してください。小さなテストセットでは、極端な結果が可能です。
- **Bot Assistance:** Bot helps diagnose unusual results and suggests verification steps | ボットは異常な結果を診断し、検証ステップを提案するのを助けます

**Problem 5: Don't know what to write in critical analysis | 批判的分析に何を書くべきかわからない**
- **Solution:** Answer these questions: (1) Which companies were predicted wrong? Why might that be? (2) What does the model seem to understand well? (3) What does it miss? (4) Would you use this for real decisions? Why/why not? (5) How could it be improved? Be honest - there's no wrong answer. | これらの質問に答える：（1）どの企業が間違って予測されましたか？それはなぜかもしれません？（2）モデルは何をよく理解しているように見えますか？（3）何を見逃しますか？（4）実際の決定にこれを使用しますか？なぜ/なぜしないのか？（5）どのように改善できますか？正直に - 間違った答えはありません。
- **Bot Assistance:** Bot provides prompts and framework for critical analysis | ボットは批判的分析のためのプロンプトとフレームワークを提供

**Problem 6: Bot assessment questions are too hard | ボット評価質問が難しすぎる**
- **Solution:** Answer based on YOUR understanding and experience with YOUR project. There are no trick questions. If you don't know something, explain your thinking process. Bot values honest engagement over perfect answers. Take your time. | あなたの理解とあなたのプロジェクトでの経験に基づいて答えます。トリック質問はありません。何かがわからない場合は、あなたの思考プロセスを説明してください。ボットは完璧な答えよりも正直な関与を評価します。時間をかけてください。
- **Bot Assistance:** Bot adapts questions based on responses and provides guidance | ボットは回答に基づいて質問を適応させ、ガイダンスを提供

**When to Ask for Help:**
- Model predictions consistently failing | モデル予測が一貫して失敗している
- Confused about evaluation process | 評価プロセスについて混乱している
- Need help interpreting results | 結果の解釈の支援が必要
- Want feedback on critical analysis | 批判的分析に関するフィードバックが必要

**How to Ask:**
- During class time: Raise hand or ask instructor | クラス時間中：手を挙げるか、インストラクターに尋ねる
- Outside class: Email instructor or use course forum | クラス外：インストラクターにメールまたはコースフォーラムを使用
- Use bot for evaluation guidance and metric explanation | 評価ガイダンスとメトリクス説明にはボットを使用
- Share your results with bot for interpretation help | 解釈の支援のために結果をボットと共有

---

**Activity Designed for ML-101 Course**
**ML-101コース用に設計されたアクティビティ**

*Developer: Yuri Tijerino*
