# BMad BotEdu Knowledge Base | BMadボット教育知識ベース

## Core Principles | コアプリンシプル

### Hands-On Learning Philosophy | ハンズオン学習哲学

**Short Lectures + Extended Activities | 短い講義 + 長めのアクティビティ**

- **10-20 minute lectures:** Introduce key concepts only | **10-20分の講義：** 主要コンセプトのみ紹介
- **40-60 minute activities:** Learning by doing | **40-60分のアクティビティ：** 実践による学習
- **Ratio:** 1:3 or 1:4 (lecture:activity) | **比率：** 1:3または1:4（講義:アクティビティ）

**Why This Works | なぜ効果があるか:**
- Students retain more through practice | 学生は実践を通じてより多く保持
- Immediate application of concepts | コンセプトの即時適用
- Bot guidance during practice | 実践中のボットガイダンス
- Real skills development | 実際のスキル開発

### Bot-Enhanced Learning | ボット強化学習

**Course-Specific Bots | コース固有のボット:**
- One LLM+RAG bot per course | コースごとに1つのLLM+RAGボット
- RAG retrieves course-specific content | RAGがコース固有のコンテンツを検索
- LLM provides conversational guidance | LLMが会話ガイダンスを提供
- Bilingual EN-JA responses | バイリンガル英日応答

**BMAD Workflow Integration | BMADワークフロー統合:**
- Bots follow structured workflows | ボットは構造化されたワークフローに従う
- Step-by-step student guidance | ステップバイステップの学生ガイダンス
- Adaptive based on responses | 応答に基づく適応
- Data capture for analytics | 分析のためのデータキャプチャ

### Project-Based Assessment | プロジェクトベース評価

**No Final Exams | 最終試験なし:**
- Authentic, real-world projects | 真正な実世界のプロジェクト
- Individual OR group options | 個人またはグループオプション
- Application of course concepts | コースコンセプトの応用
- Builds portfolio work | ポートフォリオ作品を構築

**Why No Exams | なぜ試験がないか:**
- Real-world doesn't have exams | 実世界には試験がない
- Projects demonstrate actual competency | プロジェクトは実際の能力を示す
- More engaging and meaningful | より魅力的で意味がある
- Better learning outcomes | より良い学習成果

### AI Transparency Policy | AI透明性ポリシー

**Encouraged Usage | 使用奨励:**
- Use AI chatbots freely for learning | 学習のためにAIチャットボットを自由に使用
- Code assistance, writing, research | コード支援、執筆、調査
- Problem-solving and exploration | 問題解決と探求

**Required Transparency | 必須の透明性:**
1. Share ALL prompts used | 使用したすべてのプロンプトを共有
2. Share ALL AI responses | すべてのAI応答を共有
3. Document verification process | 検証プロセスを文書化
4. Explain hallucination checks | 幻覚チェックを説明

**Exception | 例外:**
- No AI in formal assessments | 正式評価でのAI使用不可
- Students work independently | 学生は独立して作業

## Bilingual Format Standards | バイリンガル形式標準

### Required Format | 必須形式

All student-facing content MUST use:
すべての学生向けコンテンツは以下を使用する必要があります：

```
English text | 日本語テキスト
```

### Application Examples | 応用例

**Learning Objectives | 学習目標:**
```
Students will be able to create a web scraper | 学生はWebスクレイパーを作成できるようになります
Students will understand machine learning concepts | 学生は機械学習のコンセプトを理解します
```

**Activity Instructions | アクティビティ指示:**
```
Step 1: Download the starter code | ステップ1：スターターコードをダウンロード
Step 2: Open the project in your editor | ステップ2：エディタでプロジェクトを開く
Step 3: Run the application | ステップ3：アプリケーションを実行
```

**Assessment Criteria | 評価基準:**
```
Technical Quality (30%): Code functions correctly | 技術的品質（30％）：コードが正しく機能する
Documentation (20%): Clear comments and README | 文書化（20％）：明確なコメントとREADME
Creativity (20%): Innovative features | 創造性（20％）：革新的な機能
```

### What Requires Bilingual | バイリンガルが必要なもの

**MUST be bilingual | バイリンガルである必要があります:**
- Learning objectives | 学習目標
- Activity instructions | アクティビティ指示
- Lecture slides text | 講義スライドのテキスト
- Assessment questions | 評価質問
- Project guidelines | プロジェクトガイドライン
- Rubrics | ルーブリック
- Examples and demonstrations | 例とデモンストレーション
- Bot prompts and responses | ボットプロンプトと応答
- Handouts and worksheets | 配布資料とワークシート

**Can be English-only | 英語のみ可:**
- Code and programming syntax | コードとプログラミング構文
- Configuration files (YAML, JSON) | 設定ファイル（YAML、JSON）
- Internal agent instructions | 内部エージェント指示
- Technical documentation (optional) | 技術文書（オプション）

## BMAD Workflow Patterns | BMADワークフローパターン

### Basic Linear Workflow | 基本線形ワークフロー

```yaml
steps:
  - step_1:
      prompt: "Let's start... | 始めましょう..."
      action: student_input
      next: step_2

  - step_2:
      prompt: "Now try... | 次は..."
      action: student_practice
      validation: check_output
      next: step_3

  - step_3:
      prompt: "Excellent! Final step... | 素晴らしい！最後のステップ..."
      action: finalize
      next: complete
```

### Adaptive Branching Workflow | 適応分岐ワークフロー

```yaml
steps:
  - check_understanding:
      prompt: "Do you understand X? | Xを理解していますか？"
      action: assess_response
      branches:
        - if: confident
          next: advanced_practice
        - if: uncertain
          next: scaffolded_practice
        - if: confused
          next: reteach

  - scaffolded_practice:
      prompt: "Let's break it down... | 分解しましょう..."
      support: high
      next: check_again

  - advanced_practice:
      prompt: "Challenge yourself... | 自分に挑戦..."
      support: minimal
      next: complete
```

### Error Recovery Pattern | エラー回復パターン

```yaml
steps:
  - attempt_task:
      prompt: "Try this task... | このタスクを試してみてください..."
      max_attempts: 3
      on_error: provide_hint

  - provide_hint:
      attempts:
        1: "Small hint... | 小さなヒント..."
        2: "Bigger hint... | より大きなヒント..."
        3: "Let's solve together... | 一緒に解決しましょう..."
      next: attempt_task
```

### Data Capture Pattern | データキャプチャパターン

```yaml
data_collection:
  at_each_step:
    - timestamp
    - student_response
    - time_spent
    - attempts_count
    - bot_interventions

  at_completion:
    - total_time
    - success_status
    - difficulty_level
    - help_requests
    - learning_patterns
```

## Bot Configuration Guidelines | ボット設定ガイドライン

### Bot Persona | ボットペルソナ

**Characteristics | 特性:**
- Encouraging and supportive | 励ましとサポート
- Patient and never judgmental | 忍耐強く決して批判的でない
- Provides guidance, not answers | ガイダンスを提供し、答えは与えない
- Bilingual EN-JA responses | バイリンガル英日応答
- Adaptive to student needs | 学生のニーズに適応

**Tone Examples | トーンの例:**
- "Great start! Let's build on that... | 素晴らしいスタート！それを基に構築しましょう..."
- "I notice you're having trouble with X. Let's try... | Xで困っているようですね。試してみましょう..."
- "You're making good progress! | 良い進歩をしていますね！"

### RAG Knowledge Base | RAG知識ベース

**Include | 含める:**
- Course syllabus | コースシラバス
- Lecture materials | 講義資料
- Activity instructions | アクティビティ指示
- Common FAQs | よくある質問
- Troubleshooting guides | トラブルシューティングガイド
- Example solutions | 解決例
- Reference documentation | 参考文書

**Chunking Strategy | チャンキング戦略:**
- Chunk size: 500-1000 tokens
- Overlap: 50-100 tokens
- Metadata: source, topic, difficulty_level

### Guardrails | ガードレール

**Bot MUST NOT | ボットは以下してはいけません:**
- Provide direct answers to assessments | 評価への直接の答えを提供
- Complete assignments for students | 学生のために課題を完了
- Encourage academic dishonesty | 学術的不誠実を奨励

**Bot SHOULD | ボットは以下すべきです:**
- Guide through questions | 質問を通じてガイド
- Encourage exploration | 探求を奨励
- Provide hints and scaffolding | ヒントと足場掛けを提供
- Celebrate small wins | 小さな成功を祝う

## Data Collection & Analytics | データ収集と分析

### Macro Level (Course) | マクロレベル（コース）

**Metrics to Track | 追跡するメトリクス:**
- Course completion rate | コース完了率
- Average time per activity | アクティビティあたりの平均時間
- Common difficulty points | 共通の困難ポイント
- Bot intervention frequency | ボット介入頻度
- Student satisfaction | 学生満足度
- Learning outcome achievement | 学習成果達成

**Use Cases | ユースケース:**
- Identify activities needing improvement | 改善が必要なアクティビティを特定
- Adjust curriculum pacing | カリキュラムのペースを調整
- Refine bot workflows | ボットワークフローを改善
- Update learning materials | 学習教材を更新

### Micro Level (Student) | マイクロレベル（学生）

**Metrics to Track | 追跡するメトリクス:**
- Individual progress through course | コースを通じての個別進捗
- Time spent per activity | アクティビティごとの所要時間
- Help requests and interventions | 助け要請と介入
- Error patterns | エラーパターン
- Learning pace | 学習ペース
- Engagement level | エンゲージメントレベル

**Use Cases | ユースケース:**
- Identify struggling students early | 苦労している学生を早期に特定
- Provide personalized support | 個別サポートを提供
- Adapt content difficulty | コンテンツ難易度を適応
- Offer targeted interventions | 対象を絞った介入を提供

## Best Practices Summary | ベストプラクティスまとめ

### Curriculum Design | カリキュラム設計

1. **Start with outcomes** - Define what students will achieve | **成果から始める** - 学生が達成するものを定義
2. **Backward design** - Design final project first | **逆向き設計** - 最終プロジェクトを最初に設計
3. **Short lectures** - Max 20 minutes for concepts | **短い講義** - コンセプトは最大20分
4. **Extended practice** - 40-60 minutes hands-on | **長めの実践** - 40-60分のハンズオン
5. **Bot integration** - Plan workflow touchpoints | **ボット統合** - ワークフロータッチポイントを計画

### Activity Design | アクティビティ設計

1. **Clear objectives** - Students know what they're learning | **明確な目標** - 学生は何を学んでいるか知っている
2. **Step-by-step** - Break complex tasks into steps | **ステップバイステップ** - 複雑なタスクをステップに分解
3. **Bot guidance** - Integrate workflow touchpoints | **ボットガイダンス** - ワークフロータッチポイントを統合
4. **Real-world** - Connect to authentic applications | **実世界** - 真正な応用に接続
5. **Deliverable** - Students produce something | **成果物** - 学生が何かを生産

### Bot Workflow Design | ボットワークフロー設計

1. **Small steps** - Break into manageable pieces | **小さなステップ** - 管理可能な部分に分解
2. **Guidance not answers** - Teach problem-solving | **答えではなくガイダンス** - 問題解決を教える
3. **Adaptive branches** - Respond to student needs | **適応分岐** - 学生のニーズに応答
4. **Data capture** - Log meaningful interactions | **データキャプチャ** - 意味のあるインタラクションをログ
5. **Bilingual** - All prompts in EN-JA | **バイリンガル** - すべてのプロンプトを英日で

### Assessment Design | 評価設計

1. **Authentic projects** - Real-world applications | **真正なプロジェクト** - 実世界での応用
2. **Clear rubrics** - Students know expectations | **明確なルーブリック** - 学生は期待を知っている
3. **Flexible options** - Individual or group | **柔軟なオプション** - 個人またはグループ
4. **AI transparency** - Document all AI use | **AI透明性** - すべてのAI使用を文書化
5. **No final exam** - Project only | **最終試験なし** - プロジェクトのみ

---

**This knowledge base guides all bmad-botedu agents and workflows.**
**この知識ベースはすべてのbmad-boteduエージェントとワークフローをガイドします。**
