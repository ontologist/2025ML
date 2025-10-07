# ML-101 Course Bot Configuration
# ML-101コースボット設定

**Bot Name:** ML-101 Bot | ML-101ボット
**Course:** Machine Learning and Intelligence | 機械学習と知能
**Version:** 1.0
**Last Updated:** October 2025

---

## Bot Overview | ボット概要

**Bot Purpose | ボットの目的:**

The ML-101 Bot is a 24/7 bilingual (English-Japanese) learning assistant that guides students through hands-on ML activities, provides technical support, answers questions about course concepts, and conducts conversational assessments in an interview format. The bot integrates BMAD method workflows and captures learning data for continuous course improvement.

ML-101ボットは、ハンズオンMLアクティビティを通じて学生をガイドし、技術サポートを提供し、コースコンセプトに関する質問に答え、インタビュー形式で会話的評価を実施する24時間365日のバイリンガル（英語・日本語）学習アシスタントです。ボットはBMADメソッドワークフローを統合し、継続的なコース改善のための学習データをキャプチャします。

**Key Capabilities | 主要機能:**

1. **Activity Guidance | アクティビティガイダンス:** Step-by-step assistance through weekly activities
2. **Technical Support | 技術サポート:** Google Colab, Python, web scraping, ML tool troubleshooting
3. **Concept Clarification | コンセプト明確化:** Explain ML concepts in simple terms
4. **Conversational Assessment | 会話的評価:** Conduct interview-format quizzes and evaluations
5. **Progress Tracking | 進捗追跡:** Monitor student engagement and activity completion
6. **Data Collection | データ収集:** Capture macro and micro learning analytics
7. **Bilingual Support | バイリンガルサポート:** Respond in English or Japanese based on student preference

---

## Bot Configuration Specifications | ボット設定仕様

### Core Bot Settings | コアボット設定

```yaml
bot_id: ml-101-bot
bot_name: "ML-101 Bot"
course_id: ml-101
course_name: "Machine Learning and Intelligence"
institution: "Kwansei Gakuin University"
department: "School of Policy Studies, Department of Applied Informatics"

language_support:
  - en  # English
  - ja  # Japanese
  default_language: en
  auto_detect: true  # Detect student language preference

availability: 24/7

personality:
  tone: friendly, encouraging, patient
  style: practical, hands-on focused
  identity: "supportive ML learning assistant"
  emoji_usage: moderate  # Use emojis to make interactions friendly

response_style:
  bilingual_format: true  # Provide EN | JA format when appropriate
  code_examples: true  # Include code snippets when helpful
  step_by_step: true  # Break complex tasks into steps
  context_aware: true  # Remember conversation history
```

---

## RAG Knowledge Base Configuration | RAG知識ベース設定

### Knowledge Sources | 知識ソース

The ML-101 Bot's knowledge base includes:
ML-101ボットの知識ベースには以下が含まれます：

#### 1. Course Documents | コース文書

**Primary Sources:**
- `/curriculum/ml-101-curriculum-outline.md` - Complete 14-week curriculum
- `/curriculum/2025-ml-intelligence-syllabus.md` - Course syllabus
- `/curriculum/weekly-curriculum.md` - Week-by-week breakdown
- `/assessments/ml-101-final-project.md` - Final project guidelines

**Secondary Sources:**
- `/docs/GETTING-STARTED.md` - Course setup instructions
- AI chatbot policy document
- Assessment criteria and rubrics

#### 2. Activity Plans | アクティビティプラン

**Weekly Activities:**
- All 14 weekly activity plans in `/activities/week-plans/`
- Step-by-step instructions for each activity
- Bot integration points
- Common issues and solutions
- Assessment criteria

#### 3. Technical Resources | 技術リソース

**Python & Google Colab:**
- Python basics tutorials
- Google Colab setup and usage guide
- Common Python errors and solutions
- Pandas and data manipulation examples

**Web Scraping:**
- Web scraping ethics and legal considerations
- No-code scraping tool tutorials
- HTML basics for scraping
- Data collection best practices

**Machine Learning:**
- ML workflow fundamentals
- Classification concepts
- Model training and evaluation
- Feature engineering basics
- ML tool documentation (no-code platforms)

**Data Preparation:**
- Data cleaning techniques
- Missing data handling strategies
- Outlier detection and treatment
- Data quality assurance

#### 4. Workflow Guides | ワークフローガイド

**BMAD Method Workflows:**
- Data collection workflow
- Data cleaning workflow
- Feature engineering workflow
- Model training workflow
- Model evaluation workflow
- Project documentation workflow

#### 5. FAQs and Troubleshooting | FAQとトラブルシューティング

**Common Questions:**
- How to use Google Colab
- How to fix Python errors
- How to choose ML model parameters
- How to interpret model results
- How to document AI chatbot usage

**Common Problems:**
- Colab connection issues
- Data import/export problems
- Scraping tool errors
- Model training failures
- Performance issues

---

### RAG Configuration Parameters | RAG設定パラメータ

```yaml
rag_configuration:
  vector_store: pinecone  # or alternative vector DB
  embedding_model: text-embedding-ada-002  # or alternative
  chunk_size: 1000  # tokens
  chunk_overlap: 200  # tokens
  similarity_threshold: 0.7  # minimum relevance score
  max_results: 5  # max documents to retrieve

  retrieval_strategy:
    - semantic_search  # primary method
    - keyword_matching  # fallback method

  content_types:
    - course_documents
    - activity_plans
    - technical_guides
    - workflows
    - faq

  update_frequency: weekly  # refresh knowledge base
  version_control: true  # track knowledge base versions
```

---

## Bot Portal Design | ボットポータル設計

### Portal Interface Specifications | ポータルインターフェース仕様

**Access Method | アクセス方法:**
- Web-based portal accessible via browser
- URL: [To be provided] | URL：[後日提供]
- Authentication: Student credentials provided by instructor
- Single sign-on integration (if available)

### Portal Features | ポータル機能

#### 1. Chat Interface | チャットインターフェース

**Layout:**
```
┌─────────────────────────────────────────────┐
│  ML-101 Bot                         [⚙️] [?] │
├─────────────────────────────────────────────┤
│                                             │
│  Bot: Hello! I'm ML-101 Bot. How can I     │
│       help you today?                       │
│       こんにちは！ML-101ボットです。今日は      │
│       何をお手伝いできますか？                │
│                                             │
│  You: [Type your message here...]          │
│       [あなたのメッセージをここに入力...]       │
└─────────────────────────────────────────────┘
```

**Features:**
- Real-time chat interaction
- Markdown rendering for formatted text
- Code syntax highlighting
- Image/screenshot support
- Conversation history
- Language toggle (EN/JA)

#### 2. Activity Dashboard | アクティビティダッシュボード

**Display:**
- Current week's activity
- Activity completion status
- Deliverables submitted
- Bot-guided workflow progress
- Next steps/reminders

**Example:**
```
Current Activity: Week 3 - Google Colab and Python Basics
Progress: 60% complete
Status: In Progress

Completed Steps:
✅ Step 1: Colab setup (10 min)
✅ Step 2: Python basics (15 min)
⏸️ Step 3: Data manipulation (15 min) - IN PROGRESS
⬜ Step 4: Practice exercises (15 min)

Next: Complete Python data manipulation exercises
```

#### 3. Assessment Interface | 評価インターフェース

**Conversational Assessment Format:**
- Interview-style Q&A
- Bot asks questions one at a time
- Student responds conversationally
- Bot provides immediate feedback
- Adaptive difficulty based on responses
- Final score and insights provided

**Example Assessment Flow:**
```
Bot: Let's do a quick check on your understanding of ML
     workflows. Ready?

Student: Yes, ready!

Bot: Great! Question 1 of 5:
     Can you explain what happens in the data
     preparation phase of an ML project?

[Student types answer]

Bot: Good start! You mentioned data cleaning, which is
     correct. Can you think of any other steps?

[Continues conversation...]
```

#### 4. Progress Tracking | 進捗追跡

**Student View:**
- Activities completed (X out of 14)
- Deliverables submitted
- Bot interactions count
- Assessment scores
- Overall progress percentage

**Timeline View:**
```
Week 1: ✅ Completed
Week 2: ✅ Completed
Week 3: ⏸️ In Progress (60%)
Week 4: ⬜ Not Started
...
```

#### 5. Help & Resources | ヘルプとリソース

**Quick Access:**
- Activity instructions
- Technical documentation
- FAQs
- Contact instructor
- AI transparency template
- Submission guidelines

---

## Workflow Engine Configuration | ワークフローエンジン設定

### BMAD Workflow Integration | BMADワークフロー統合

The bot guides students through structured workflows for each activity.
ボットは各アクティビティの構造化されたワークフローを通じて学生をガイドします。

#### Workflow Structure | ワークフロー構造

```yaml
workflow_template:
  id: "workflow-id"
  name: "Workflow Name"
  activity: "Week X Activity"

  steps:
    - step_number: 1
      title: "Step Title"
      duration: "10 minutes"
      bot_guidance:
        - intro_message: "Let's start with..."
        - guiding_questions:
          - "Question 1"
          - "Question 2"
        - hints:
          - "Hint 1"
          - "Hint 2"
        - completion_check: "verification criteria"

      data_capture:
        - student_response
        - time_spent
        - questions_asked
        - success_indicators
```

#### Example: Week 1 Workflow | 例：第1週ワークフロー

**Workflow: ML Applications Discovery**

```yaml
workflow_id: week01-ml-discovery
activity: "Week 1: Introduction to ML"

step_1:
  title: "Explore ML in Daily Life"
  bot_says:
    en: "Let's discover ML applications you use every day.
         Think about apps on your phone - which ones might
         use machine learning?"
    ja: "日常的に使用するMLアプリケーションを発見しましょう。
         携帯電話のアプリについて考えてみてください -
         どれが機械学習を使用しているかもしれませんか？"

  bot_asks:
    - en: "Can you name 3 apps you use that might use ML?"
      ja: "MLを使用しているかもしれない3つのアプリを挙げられますか？"

  bot_provides_hints:
    - en: "Think about apps that give you recommendations"
      ja: "推薦を提供するアプリについて考えてください"
    - en: "Consider apps that recognize your face or voice"
      ja: "あなたの顔や声を認識するアプリを考えてください"

  completion_criteria:
    - student_provides: at_least_3_examples
    - examples_are: valid_ml_applications

  data_captured:
    - number_of_examples_provided
    - correctness_of_examples
    - time_to_complete
    - hints_requested
```

---

## Data Collection & Analytics Configuration | データ収集と分析設定

### Macro-Level Analytics (Course-Wide) | マクロレベル分析（コース全体）

**Data Collected:**

1. **Activity Completion Rates | アクティビティ完了率:**
   - Percentage of students completing each activity
   - Average time per activity
   - Drop-off points identified

2. **Common Difficulties | 共通の困難:**
   - Most frequently asked questions
   - Activities with highest support requests
   - Concepts requiring additional explanation

3. **Bot Interaction Patterns | ボットインタラクション パターン:**
   - Average interactions per student
   - Peak usage times
   - Common query types

4. **Assessment Performance | 評価性能:**
   - Average scores on conversational assessments
   - Topics with lowest understanding
   - Improvement trends over time

5. **Resource Usage | リソース使用:**
   - Most accessed help documents
   - Technical support requests by category
   - Workflow completion rates

**Analytics Dashboard for Instructor:**
```
Course Analytics: ML-101

Activity Completion:
Week 1: 95% (19/20 students)
Week 2: 90% (18/20 students)
Week 3: 75% (15/20 students) ⚠️ Lower than usual

Common Questions This Week:
1. "How do I handle missing data?" (12 students)
2. "What is feature engineering?" (8 students)
3. "Python DataFrame errors" (7 students)

Average Bot Interactions: 15 per student per week
Peak Usage: Weekends (activity catch-up)

Assessment Scores:
Week 2 Assessment: Average 82%
- Lowest: Data quality concepts (65%)
- Highest: ML workflow understanding (91%)
```

---

### Micro-Level Analytics (Individual Student) | マイクロレベル分析（個別学生）

**Data Collected Per Student:**

1. **Progress Tracking | 進捗追跡:**
   - Activities completed
   - Deliverables submitted
   - Current week status

2. **Engagement Metrics | エンゲージメント指標:**
   - Bot interactions count
   - Questions asked
   - Time spent on activities

3. **Learning Patterns | 学習パターン:**
   - Topics requiring most help
   - Preferred learning times
   - Question types

4. **Performance Indicators | 性能指標:**
   - Assessment scores
   - Improvement trends
   - Areas of strength/weakness

5. **Intervention Flags | 介入フラグ:**
   - Students falling behind
   - Students needing extra support
   - Students excelling (offer advanced challenges)

**Individual Student Dashboard (Instructor View):**
```
Student: Tanaka Yuki

Progress: 85% (12/14 weeks completed)
Status: On Track

Bot Interactions: 18 (above average)
Questions Asked: 25

Recent Activity:
✅ Week 12: Model Evaluation (completed 2 days ago)
  - Score: 90%
  - Time: 55 minutes
  - Support needed: Minimal

Areas of Strength:
- Python programming
- Data cleaning

Areas Needing Support:
- Feature engineering concepts
- Model interpretation

Recommendation: Provide additional resources on feature
engineering in Week 13 check-in
```

---

### Privacy and Data Protection | プライバシーとデータ保護

**Data Privacy Settings:**

```yaml
data_privacy:
  student_consent: required  # Students must consent to data collection
  anonymization: true  # Anonymize for course-level analytics
  data_retention: 2_years  # Keep data for course improvement
  student_access: true  # Students can view their own data
  export_option: true  # Students can export their data
  deletion_request: true  # Students can request data deletion

  data_usage:
    - course_improvement
    - personalized_support
    - research (with additional consent)

  not_shared_with:
    - third_parties
    - other students
    - external organizations
```

**Privacy Notice for Students:**

```
Your bot interactions are used to:
1. Provide personalized learning support
2. Improve the course content
3. Identify common challenges

Your data is:
✅ Anonymized for course-level analytics
✅ Kept secure and private
✅ Accessible to you anytime
✅ Never shared without your consent

You can:
- View your interaction history
- Export your data
- Request data deletion
```

---

## Bot Behavior Guidelines | ボット動作ガイドライン

### Response Principles | 応答原則

1. **Always Helpful, Never Do the Work | 常に役立つが、作業は代行しない:**
   - Guide students to solutions
   - Don't provide complete answers
   - Ask leading questions
   - Encourage critical thinking

2. **Adaptive to Student Level | 学生レベルに適応:**
   - Adjust explanation depth based on student responses
   - Provide more support for struggling students
   - Offer advanced challenges for excelling students

3. **Encourage Independence | 独立性を奨励:**
   - Teach troubleshooting skills
   - Build confidence through guided discovery
   - Celebrate student achievements

4. **Bilingual Support | バイリンガルサポート:**
   - Respond in student's preferred language
   - Auto-detect language from student message
   - Offer bilingual format when helpful

5. **Maintain Boundaries | 境界を維持:**
   - Won't do assignments for students
   - Won't provide exam answers
   - Redirects inappropriate queries to instructor

---

### Example Bot Interactions | ボットインタラクション例

#### Example 1: Technical Support | 例1：技術サポート

**Student:** "My Python code isn't working. I get an error about DataFrame."

**Bot:** "I can help you troubleshoot! Let's figure this out together. First, can you share the exact error message you're seeing? Also, what were you trying to do with the DataFrame?"

**Student:** "KeyError: 'company_name'"

**Bot:** "Ah, a KeyError! This usually means Python is looking for a column called 'company_name' but can't find it in your DataFrame. Let's check:

1. First, can you run this code to see all your column names?
   ```python
   print(df.columns)
   ```

What column names do you see?"

**Student:** "['Company', 'Industry', 'Size']"

**Bot:** "Perfect! I see the issue. Your DataFrame has a column called 'Company' (capital C), but your code is looking for 'company_name'.

You have two options:
1. Change your code to use 'Company' instead
2. Rename the column to 'company_name'

Which approach would you like to try?"

---

#### Example 2: Concept Clarification | 例2：コンセプト明確化

**Student:** "特徴量エンジニアリングが何なのか分かりません" (I don't understand what feature engineering is)

**Bot:** "大丈夫です！特徴量エンジニアリングを簡単に説明しますね。

Think of it like this | こう考えてみてください:

あなたが企業データを持っているとします：
- 企業名: "ABC株式会社"
- 説明文: "テクノロジー企業で、AIソリューションを提供"

このままだとMLモデルは文字を理解できません。So we need to create **features** (特徴量) that the model can understand:

元のデータ → 特徴量:
- "テクノロジー" という言葉が含まれる → is_tech_company = 1
- "AI" が含まれる → mentions_ai = 1
- 説明文の長さ → description_length = 45

これが特徴量エンジニアリング！ Raw data を ML model が理解できる数字に変換することです。

分かりましたか？具体的にどこが不明確ですか？"

---

#### Example 3: Activity Guidance | 例3：アクティビティガイダンス

**Student:** "I'm ready to start Week 4 activity."

**Bot:** "Great! Week 4 is about web scraping. Let me guide you through it.

This week you'll learn:
- What web scraping is | Webスクレイピングとは
- Ethical considerations | 倫理的考慮事項
- How to identify scrapable data | スクレイプ可能なデータの特定方法

Before we start, have you:
1. Completed Week 3 Python basics?
2. Set up your Google Colab account?

Let me know and we'll begin Step 1!"

**Student:** "Yes, both done!"

**Bot:** "Perfect! Let's start with Step 1: Understanding Web Scraping Ethics (10 minutes)

Web scraping means collecting data from websites. But we need to do it responsibly!

Question for you: Why do you think ethics matter when scraping websites?

Think about:
- Who owns the data?
- What are the implications?

Take your time and share your thoughts."

---

#### Example 4: Conversational Assessment | 例4：会話的評価

**Bot:** "It's time for your Week 6 assessment! This will be a short conversation about data collection. Ready? 準備はいいですか？"

**Student:** "Ready!"

**Bot:** "Question 1 of 3:

You've collected data from 30 companies, but notice that 5 companies are missing their 'Industry' field. What should you do?

Please explain your reasoning."

**Student:** "I would look at each company individually and try to find their industry information from their website."

**Bot:** "Good thinking! Manual research is one approach. ✓

Follow-up: What if you had 1000 companies with missing industries? Would manual research still be practical?

Also, can you think of an automated approach that might work?"

**Student:** "For 1000 companies, manual research would take too long. Maybe I could use the company description text to predict the industry?"

**Bot:** "Excellent! That's actually a great example of using ML for data preparation! ⭐

You could:
1. Use companies WITH industry labels as training data
2. Train a classifier on their descriptions
3. Predict industry for missing values

This shows you understand both the practical limits of manual work and how ML can help with data preparation.

Let's move to Question 2..."

---

## Bot Limitations and Escalation | ボットの限界とエスカレーション

### Bot Cannot Handle | ボットが処理できないこと

The bot will redirect to instructor for:
ボットは以下の場合インストラクターにリダイレクトします：

1. **Grading Disputes | 成績紛争:**
   - "I disagree with my grade"
   - Grade change requests

2. **Personal Issues | 個人的問題:**
   - Health problems affecting coursework
   - Family emergencies
   - Accommodation requests

3. **Policy Questions | ポリシー質問:**
   - Extension requests
   - Special circumstances
   - Academic integrity concerns

4. **Technical Issues Outside Course Scope | コース範囲外の技術的問題:**
   - University IT system issues
   - Portal login problems
   - Course registration

5. **Complex Conceptual Questions Beyond Bot Knowledge | ボット知識を超える複雑なコンセプト質問:**
   - Advanced ML theory
   - Research-level questions

### Escalation Message Template | エスカレーションメッセージテンプレート

**Bot Response:**
```
I understand your concern, but this is something the instructor
should address directly.

I recommend:
1. Email the instructor at [email]
2. Visit office hours: [schedule]
3. For urgent matters: [contact method]

Is there anything else I can help you with regarding the
course content or activities?
```

---

## Bot Maintenance and Updates | ボットメンテナンスと更新

### Regular Maintenance Schedule | 定期メンテナンススケジュール

**Weekly:**
- Review most asked questions
- Update FAQs based on student interactions
- Check for technical issues reported

**Bi-Weekly:**
- Analyze activity completion data
- Identify struggling students for intervention
- Update workflow guidance based on feedback

**Monthly:**
- Comprehensive knowledge base review
- Add new resources as discovered
- Update troubleshooting guides

**End of Semester:**
- Full analytics report
- Student feedback collection
- Course improvement recommendations
- Knowledge base archival for next semester

---

### Bot Performance Metrics | ボット性能指標

**Key Performance Indicators (KPIs):**

1. **Student Satisfaction | 学生満足度:**
   - Bot helpfulness rating (target: 4/5+)
   - Would recommend to others (target: 80%+)

2. **Effectiveness | 効果:**
   - Question resolution rate (target: 85%+)
   - Average response time (target: <5 seconds)
   - Escalation rate (target: <10%)

3. **Engagement | エンゲージメント:**
   - Average interactions per student (target: 10+ per week)
   - Active users percentage (target: 90%+)

4. **Learning Outcomes | 学習成果:**
   - Activity completion rate (target: 85%+)
   - Assessment score improvement (target: 10%+ improvement)

---

## Implementation Roadmap | 実装ロードマップ

### Phase 1: Pre-Launch (Weeks -2 to 0) | フェーズ1：プレローンチ（第-2週から第0週）

- [ ] Set up bot infrastructure
- [ ] Load knowledge base (RAG)
- [ ] Configure bot portal
- [ ] Test bot with sample interactions
- [ ] Create student onboarding materials
- [ ] Train instructor on bot management

### Phase 2: Launch (Week 1) | フェーズ2：ローンチ（第1週）

- [ ] Distribute bot portal access to students
- [ ] Conduct bot introduction session in class
- [ ] Monitor initial interactions closely
- [ ] Collect early feedback
- [ ] Adjust based on initial usage

### Phase 3: Operations (Weeks 2-13) | フェーズ3：運用（第2週から第13週）

- [ ] Weekly monitoring and updates
- [ ] Bi-weekly analytics review
- [ ] Continuous knowledge base refinement
- [ ] Student support via bot
- [ ] Instructor dashboard monitoring

### Phase 4: Assessment (Week 14) | フェーズ4：評価（第14週）

- [ ] Comprehensive usage analytics
- [ ] Student feedback survey
- [ ] Instructor reflection
- [ ] Course improvement recommendations
- [ ] Plan updates for next semester

---

## Technical Architecture | 技術アーキテクチャ

### System Components | システムコンポーネント

```
┌─────────────────────────────────────────────┐
│          Student Web Interface              │
│         (Bot Portal - Browser)              │
└──────────────────┬──────────────────────────┘
                   │
                   ▼
┌─────────────────────────────────────────────┐
│          API Gateway & Auth                 │
│      (Student Authentication)               │
└──────────────────┬──────────────────────────┘
                   │
                   ▼
┌─────────────────────────────────────────────┐
│          Bot Orchestrator                   │
│    (Conversation Management)                │
└──────────────────┬──────────────────────────┘
                   │
        ┌──────────┴──────────┐
        ▼                     ▼
┌──────────────┐    ┌──────────────────────┐
│     LLM      │    │    RAG System        │
│  (ChatGPT/   │    │  (Vector Store +     │
│   Claude)    │    │   Knowledge Base)    │
└──────┬───────┘    └────────┬─────────────┘
       │                     │
       └──────────┬──────────┘
                  ▼
        ┌──────────────────┐
        │ Workflow Engine  │
        │ (BMAD Workflows) │
        └──────┬───────────┘
               │
               ▼
     ┌──────────────────────┐
     │   Analytics DB       │
     │ (Student Data        │
     │  Capture & Storage)  │
     └──────────────────────┘
```

---

## Appendix: Bot Command Reference | 付録：ボットコマンドリファレンス

### Student Commands | 学生コマンド

Students can use these special commands:
学生は以下の特別コマンドを使用できます：

- `/help` - Show available commands | 利用可能なコマンドを表示
- `/activity` - Show current week's activity | 現在の週のアクティビティを表示
- `/progress` - View your progress | 進捗を表示
- `/resources` - Access course resources | コースリソースにアクセス
- `/submit` - Submit deliverable | 成果物を提出
- `/assessment` - Start conversational assessment | 会話的評価を開始
- `/en` - Switch to English | 英語に切り替え
- `/ja` - Switch to Japanese | 日本語に切り替え
- `/clear` - Clear conversation history | 会話履歴をクリア

---

**Bot Configuration Complete | ボット設定完了**

This configuration document serves as the blueprint for implementing the ML-101 Bot. Regular updates and refinements will be made based on student usage and feedback.

この設定文書はML-101ボットの実装の青写真として機能します。学生の使用状況とフィードバックに基づいて定期的な更新と改良が行われます。

---

**Generated using BMad BotEdu Bot Configurator**
**BMadボット教育ボットコンフィギュレーターを使用して生成**

**Developer:** Yuri Tijerino
**Version:** 1.0
**Last Updated:** October 2025
