# Week 1: Introduction to Machine Learning
# 第1週：機械学習入門

**Course:** Machine Learning and Intelligence | 機械学習と知能
**Instructor:** Yuri Tijerino
**Duration:** 15-20 minutes

---

## Slide 1: Welcome to ML-101!
## スライド1：ML-101へようこそ！

**Topic:** Machine Learning and Intelligence Course
**トピック:** 機械学習と知能コース

**Today's Objectives | 今日の目標:**
- Understand what machine learning is | 機械学習とは何かを理解する
- Discover ML in your daily life | 日常生活でMLを発見する
- Preview our course project | コースプロジェクトをプレビューする
- Get started with the ML-101 Bot | ML-101ボットを使い始める

---

## Slide 2: What is Machine Learning?
## スライド2：機械学習とは？

**Definition | 定義:**
**Machine Learning = Teaching computers to learn from data**
**機械学習 = コンピュータにデータから学習させること**

### Traditional Programming vs Machine Learning
### 従来のプログラミング vs 機械学習

**Traditional Programming | 従来のプログラミング:**
```
Rules + Data → Answer
ルール + データ → 答え
```
You tell the computer EXACTLY what to do
コンピュータに正確に何をすべきか指示する

**Machine Learning | 機械学習:**
```
Data + Answer → Rules (learned patterns)
データ + 答え → ルール（学習されたパターン）
```
The computer LEARNS patterns from examples
コンピュータが例からパターンを学習する

---

## Slide 3: ML is Already in Your Life!
## スライド3：MLはすでにあなたの生活に！

### Examples You Use Every Day | 毎日使用する例

📱 **Face Unlock on Your Phone**
- Learns your face from thousands of angles
- スマートフォンの顔認証
- 何千もの角度からあなたの顔を学習

🎬 **Netflix Recommendations**
- Learns what you like to watch
- Netflix推薦
- あなたが見たいものを学習

🎵 **Spotify Playlists**
- Learns your music taste
- Spotifyプレイリスト
- あなたの音楽の好みを学習

🔍 **Google Search**
- Learns which results are most relevant
- Google検索
- どの結果が最も関連性が高いかを学習

🛒 **Amazon Product Recommendations**
- Learns from your browsing and purchase history
- Amazon製品推薦
- 閲覧と購入履歴から学習

---

## Slide 4: Three Main Types of ML
## スライド4：MLの3つの主なタイプ

### 1. Supervised Learning | 教師あり学習
**"Learning from examples with answers"**
**「答え付きの例から学習」**

Example: Email spam detection
例：メールスパム検出
- Show computer: "This is spam, this is not spam"
- コンピュータに示す：「これはスパム、これはスパムではない」
- Computer learns to identify spam on its own
- コンピュータが自分でスパムを識別することを学習

### 2. Unsupervised Learning | 教師なし学習
**"Finding patterns without labels"**
**「ラベルなしでパターンを見つける」**

Example: Customer grouping
例：顧客グループ化
- Computer finds similar groups of customers
- コンピュータが類似した顧客グループを見つける
- No one tells it what groups to find
- どのグループを見つけるべきか誰も指示しない

### 3. Reinforcement Learning | 強化学習
**"Learning by trial and error"**
**「試行錯誤による学習」**

Example: Game AI
例：ゲームAI
- Computer tries actions, gets rewards
- コンピュータがアクションを試し、報酬を得る
- Learns which actions lead to winning
- どのアクションが勝利につながるかを学習

---

## Slide 5: Why ML Matters Today
## スライド5：なぜMLが今日重要か

### ML is Transforming Everything | MLはすべてを変革している

**In Business | ビジネスで:**
- 🎯 Personalized marketing | パーソナライズドマーケティング
- 🤖 Process automation | プロセス自動化
- 📊 Data-driven decisions | データ駆動型意思決定

**In Daily Life | 日常生活で:**
- 🗣️ Voice assistants (Siri, Alexa) | 音声アシスタント
- 🌐 Real-time translation | リアルタイム翻訳
- 🚗 Self-driving cars | 自動運転車

**In Your Career | あなたのキャリアで:**
- 💼 Job matching platforms | 求人マッチングプラットフォーム
- 📈 Career path recommendations | キャリアパス推薦
- 🎓 Personalized learning | パーソナライズド学習

---

## Slide 6: Course Project Preview
## スライド6：コースプロジェクトプレビュー

### What You'll Build This Semester
### 今学期構築するもの

**🏢 Company Recommendation System**
**企業推薦システム**

**The Goal | 目標:**
Build an ML system that recommends companies based on YOUR career interests
あなたのキャリアの興味に基づいて企業を推薦するMLシステムを構築する

**How It Works | どのように機能するか:**
1. **Collect Data** → Scrape company information from mynavi.jp
   データ収集 → mynavi.jpから企業情報をスクレイピング

2. **Label Data** → You classify companies as "Interested" or "Not Interested"
   データラベル付け → 企業を「興味あり」または「興味なし」に分類

3. **Train Model** → ML learns YOUR preferences
   モデル訓練 → MLがあなたの好みを学習

4. **Make Predictions** → System recommends new companies for you
   予測実行 → システムがあなたのために新しい企業を推薦

**Real-World Application:** Use this for your actual job search! | 実際の就職活動に使用！

---

## Slide 7: The ML Workflow
## スライド7：MLワークフロー

### Four Main Steps | 4つの主なステップ

```
1. COLLECT DATA    →    2. PREPARE DATA    →    3. TRAIN MODEL    →    4. MAKE PREDICTIONS
   データ収集              データ準備              モデル訓練              予測実行

📊 Gather info      🧹 Clean & organize    🤖 Teach computer    ✨ Get results
```

**We'll Learn Each Step This Semester | 今学期各ステップを学びます:**

- **Weeks 1-5:** Data collection and preparation | データ収集と準備
- **Weeks 6-9:** Model training basics | モデル訓練基礎
- **Weeks 10-12:** Advanced ML and final project | 高度なMLと最終プロジェクト
- **Weeks 13-14:** Presentations and reflection | プレゼンテーションと振り返り

---

## Slide 8: Meet Your ML-101 Bot
## スライド8：ML-101ボットに会おう

### Your AI Learning Assistant | あなたのAI学習アシスタント

**What the Bot Does | ボットがすること:**

✅ **Guides hands-on activities** step-by-step
   ステップバイステップでハンズオンアクティビティをガイド

✅ **Answers questions** 24/7 in English or Japanese
   24時間365日英語または日本語で質問に答える

✅ **Provides feedback** on your work
   あなたの作業にフィードバックを提供

✅ **Tracks progress** through the course
   コースを通じて進捗を追跡

✅ **Assesses understanding** through conversations
   会話を通じて理解を評価

**Important Note | 重要な注意:**
The bot is a learning tool, not a replacement for thinking!
ボットは学習ツールであり、思考の代替ではありません！

---

## Slide 9: Course Structure
## スライド9：コース構造

### How Each Week Works | 各週の進め方

**📚 Short Lecture (15-20 minutes)**
- Introduce key concepts | 主要コンセプトを紹介
- Connect to real-world examples | 実世界の例に関連付け
- Preview the activity | アクティビティをプレビュー

**💻 Long Hands-On Activity (40-60 minutes)**
- Work with the ML-101 Bot | ML-101ボットと作業
- Apply concepts through practice | 実践を通じてコンセプトを適用
- Build your project step-by-step | プロジェクトをステップバイステップで構築

**📝 Weekly Deliverables**
- Document your work | 作業を文書化
- Submit through bot portal | ボットポータルから提出
- Receive automated feedback | 自動フィードバックを受け取る

---

## Slide 10: Grading and Assessment
## スライド10：評価と査定

### How You'll Be Evaluated | 評価方法

**40% - Weekly Activities | 週次アクティビティ**
- Hands-on exercises and documentation | ハンズオン演習と文書化
- Completion and quality of work | 作業の完了と品質

**15% - Bot Assessments | ボット査定**
- Conversational quizzes through the bot | ボットを通じた会話形式のクイズ
- Understanding of key concepts | 主要コンセプトの理解

**35% - Final Project | 最終プロジェクト**
- Company recommendation system | 企業推薦システム
- Presentation and documentation | プレゼンテーションと文書化

**10% - Participation | 参加**
- Engagement in activities | アクティビティへの取り組み
- Questions and collaboration | 質問と協力

**No Final Exam! | 期末試験なし！**
All assessment is practical and project-based
すべての評価は実践的でプロジェクトベース

---

## Slide 11: Today's Activity Preview
## スライド11：今日のアクティビティプレビュー

### What You'll Do Today | 今日すること

**40-60 Minute Hands-On Activity:**

1. **Set Up Bot Portal** (10 min)
   - Log in to ML-101 Bot system
   - ボットポータルセットアップ

2. **Discover ML in Daily Life** (15 min)
   - Identify 5-7 ML applications you use
   - 日常生活でMLを発見

3. **Categorize ML Applications** (10 min)
   - Learn different types of ML tasks
   - MLアプリケーションを分類

4. **Connect to Course Project** (10 min)
   - Understand how ML applies to career decisions
   - コースプロジェクトに関連付け

5. **Reflect and Document** (10 min)
   - Write about your discoveries
   - 振り返りと文書化

**The ML-101 Bot will guide you every step!**
**ML-101ボットが各ステップでガイドします！**

---

## Slide 12: Key Takeaways
## スライド12：重要なポイント

### Remember | 覚えておいてください

✅ **ML = learning from data**
   機械学習 = データからの学習

✅ **ML is everywhere** in modern life
   MLは現代生活のどこにでもある

✅ **You'll build a real ML system** this semester
   今学期実際のMLシステムを構築します

✅ **Short lectures + long activities** = hands-on learning
   短い講義 + 長いアクティビティ = ハンズオン学習

✅ **The bot is your guide** through the course
   ボットがコースを通じてあなたのガイドです

---

## Slide 13: Let's Get Started!
## スライド13：始めましょう！

**"Now let's discover ML in your daily life through hands-on exploration!"**
**「では、ハンズオン探索を通じて日常生活でMLを発見しましょう！」**

### Next Steps | 次のステップ

1. Open the ML-101 Bot portal
   ML-101ボットポータルを開く

2. Begin Week 1 Activity
   第1週アクティビティを開始

3. Follow bot guidance
   ボットのガイダンスに従う

4. Ask questions anytime!
   いつでも質問してください！

**Remember:** Learning happens during the activity, not just the lecture!
**覚えておいてください:** 学習は講義だけでなくアクティビティ中に起こります！

---

## Notes for Instructor | インストラクター向けメモ

### Delivery Tips

- **Timing:** 15-20 minutes maximum - keep it concise!
- **Energy:** Build excitement for the hands-on activity
- **Examples:** Use familiar apps students actually use (LINE, Instagram, TikTok)
- **Interaction:** Ask "Who uses Netflix? Spotify? Face unlock?" to engage students
- **Transition:** Emphasize that real learning happens in the activity

### Common Questions

Q: "Do I need to be good at programming?"
A: "Not at all! We'll learn what we need step-by-step. Today doesn't involve any coding."

Q: "Is this course difficult?"
A: "It's hands-on and practical. If you follow along and complete the activities, you'll do well."

Q: "Can I really build an ML system with no experience?"
A: "Absolutely! That's the whole point. We start from zero and build up gradually."

### After Lecture

- Immediately transition to hands-on activity
- Students work with bot guidance
- Circulate to help with technical issues (login, access)
- Bot handles most conceptual guidance

### AI Transparency

- Remind students to document AI interactions if required by institutional policy
- Explain that bot interactions are part of the learning process
- Model good practices for working with AI tools

---

**End of Week 1 Lecture Slides**
**第1週講義スライド終了**

*Generated for ML-101 Course*
*ML-101コース用に生成*
