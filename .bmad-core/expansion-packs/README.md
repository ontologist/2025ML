# BMad BotEdu Expansion Pack | BM

adボット教育拡張パック

**Version | バージョン:** 1.0.0
**Author | 著者:** Yuri Tijerino
**License | ライセンス:** MIT

## Overview | 概要

**BMad BotEdu** is a comprehensive bilingual (English-Japanese) education expansion pack for curriculum development with integrated course-specific LLM+RAG bots. It enables hands-on, activity-based learning with bot-guided workflows, learning data capture, and project-based assessment (no final exams).

**BMad BotEdu**は、コース固有のLLM+RAGボットを統合したカリキュラム開発のための包括的なバイリンガル（英語・日本語）教育拡張パックです。ボットガイドワークフロー、学習データキャプチャ、プロジェクトベース評価（最終試験なし）を備えたハンズオン、アクティビティベースの学習を可能にします。

## Key Features | 主な機能

### 🎓 Comprehensive Curriculum Development | 包括的なカリキュラム開発
- Design curriculum, syllabus, and lesson plans for ANY course | 任意のコースのカリキュラム、シラバス、レッスンプランを設計
- All student materials in bilingual EN-JA format | すべての学生教材をバイリンガル英日形式で
- Supports any technology or technical course | あらゆる技術または技術的なコースをサポート

### 🤖 Bot-Enhanced Learning | ボット強化学習
- Course-specific LLM+RAG bots for each course | 各コース用のコース固有LLM+RAGボット
- BMAD method workflows guide student activities | BMADメソッドワークフローが学生アクティビティをガイド
- Bot portal integration for data capture | データキャプチャのためのボットポータル統合
- Macro (course) and micro (student) level analytics | マクロ（コース）およびマイクロ（学生）レベル分析

### 👐 Hands-On Pedagogy | ハンズオン教育
- Short lectures (10-20 min) introduce concepts | 短い講義（10-20分）がコンセプトを紹介
- Extended hands-on activities for learning by doing | 実践による学習のための長めのハンズオンアクティビティ
- Bot workflows scaffold practice and exploration | ボットワークフローが実践と探求を足場掛け

### 📊 Project-Based Assessment | プロジェクトベース評価
- NO final exams - final projects instead | 最終試験なし - 代わりに最終プロジェクト
- Individual or group project options | 個人またはグループプロジェクトオプション
- Authentic, real-world applications | 真正な実世界での応用

### 🤝 AI Transparency Policy | AI透明性ポリシー
- AI chatbot use is ENCOURAGED | AIチャットボット使用は奨励されます
- Students must share prompts and AI responses | 学生はプロンプトとAI応答を共有する必要があります
- Document verification and hallucination checks | 検証と幻覚チェックを文書化
- AI tools NOT allowed in formal assessments | 正式評価でのAIツール使用不可

## Supported Course Examples | サポートされるコース例

While this pack supports **ANY course**, here are 5 reference examples:
このパックは**任意のコース**をサポートしますが、以下は5つの参考例です：

1. **Web and Society | Webと社会**
   - Student presentations on current events | 時事問題に関する学生プレゼンテーション
   - Influential people, companies, technology news | 影響力のある人々、企業、技術ニュース

2. **Introduction to Machine Learning | 機械学習入門**
   - Tool-based (no programming required) | ツールベース（プログラミング不要）
   - Web scraper project for job search | 就職活動用Webスクレイパープロジェクト

3. **Beginner Game Development (JavaScript) | 初心者ゲーム開発（JavaScript）**
   - JavaScript, HTML5, CSS3, Canvas2D
   - Basic 2D game project | 基本的な2Dゲームプロジェクト

4. **Basic 3D Game Development | 基本的な3Dゲーム開発**
   - Unity3D or Godot engines | Unity3DまたはGodotエンジン
   - Blender3D for asset development | アセット開発のためのBlender3D

5. **Modern Human-Machine Interaction | 現代のヒューマンマシンインタラクション**
   - AI integration, chatbots, mobile platforms | AI統合、チャットボット、モバイルプラットフォーム
   - Accessibility and modern HCI concepts | アクセシビリティと現代のHCIコンセプト

## Architecture | アーキテクチャ

### Core Components | コアコンポーネント

```
bmad-botedu/
├── agents/                    # 6 specialized bilingual agents | 6つの専門バイリンガルエージェント
│   ├── curriculum-architect.md
│   ├── activity-designer.md
│   ├── bot-workflow-designer.md
│   ├── assessment-specialist.md
│   ├── lecture-material-creator.md
│   └── course-bot-configurator.md
├── templates/                 # Curriculum & activity templates | カリキュラムとアクティビティテンプレート
│   ├── curriculum-outline-tmpl.yaml
│   ├── activity-plan-tmpl.yaml
│   ├── final-project-tmpl.yaml
│   ├── bot-workflow-tmpl.yaml
│   └── bot-config-tmpl.yaml
├── tasks/                     # Task workflows | タスクワークフロー
│   └── create-doc.md
├── workflows/                 # BMAD workflows for common processes | 共通プロセスのためのBMADワークフロー
├── bot-configs/              # Course-specific bot configurations | コース固有のボット設定
├── course-templates/         # Reference course templates | 参照コーステンプレート
├── data/                     # Supporting knowledge | サポート知識
├── checklists/               # Quality assurance | 品質保証
└── config.yaml              # Pack configuration | パック設定
```

### Agent Roles | エージェントの役割

1. **Curriculum Architect | カリキュラムアーキテクト** 🎓
   - Designs overall course structure | 全体的なコース構造を設計
   - Creates syllabus and weekly schedule | シラバスと週次スケジュールを作成
   - Integrates bot workflows into curriculum | ボットワークフローをカリキュラムに統合

2. **Activity Designer | アクティビティデザイナー** 🎨
   - Creates hands-on learning activities | ハンズオン学習アクティビティを作成
   - Designs learning-by-doing exercises | 実践による学習演習を設計
   - Integrates bot guidance into activities | ボットガイダンスをアクティビティに統合

3. **Bot Workflow Designer | ボットワークフローデザイナー** 🤖
   - Designs BMAD method workflows for bots | ボットのためのBMADメソッドワークフローを設計
   - Creates bot-guided learning sequences | ボットガイド学習シーケンスを作成
   - Maps data capture points | データキャプチャポイントをマップ

4. **Assessment Specialist | 評価スペシャリスト** ✅
   - Designs project-based assessments | プロジェクトベース評価を設計
   - Creates final project guidelines | 最終プロジェクトガイドラインを作成
   - Develops rubrics for evaluation | 評価用ルーブリックを開発

5. **Lecture Material Creator | 講義資料クリエーター** 📚
   - Creates short concept introduction materials | 短いコンセプト紹介資料を作成
   - Develops presentation slides | プレゼンテーションスライドを開発
   - Prepares students for hands-on activities | 学生をハンズオンアクティビティに準備

6. **Course Bot Configurator | コースボットコンフィギュレーター** 🤖
   - Configures course-specific LLM+RAG bots | コース固有のLLM+RAGボットを設定
   - Sets up bot portal integration | ボットポータル統合を設定
   - Configures data collection and analytics | データ収集と分析を設定

## Quick Start | クイックスタート

### Installation | インストール

```bash
# Install BMAD-METHOD if not already installed
npm install bmad-method

# Or if already installed, update
git pull
npm run install:bmad
```

The bmad-botedu expansion pack is included in the main BMAD-METHOD repository.
bmad-botedu拡張パックはBMAD-METHODメインリポジトリに含まれています。

### Creating a New Course Curriculum | 新しいコースカリキュラムの作成

1. **Activate Curriculum Architect | カリキュラムアーキテクトを起動**

```
Load agent: curriculum-architect
```

2. **Create Curriculum Outline | カリキュラムアウトラインを作成**

```
*create-curriculum
```

3. **Follow the interactive workflow | インタラクティブワークフローに従う**

The agent will guide you through creating:
エージェントは以下の作成をガイドします：
- Course description | コース説明
- Learning outcomes | 学習成果
- Weekly schedule | 週次スケジュール
- Bot integration strategy | ボット統合戦略
- Assessment structure | 評価構造
- AI usage policy | AI使用ポリシー

All materials will be generated in bilingual EN-JA format automatically.
すべての教材は自動的にバイリンガル英日形式で生成されます。

### Creating Activities | アクティビティの作成

1. **Activate Activity Designer | アクティビティデザイナーを起動**

```
Load agent: activity-designer
```

2. **Create Activity Plan | アクティビティプランを作成**

```
*create-activity
```

3. **Integrate Bot Workflow | ボットワークフローを統合**

```
*design-bot-workflow
```

### Configuring Course Bot | コースボットの設定

1. **Activate Course Bot Configurator | コースボットコンフィギュレーターを起動**

```
Load agent: course-bot-configurator
```

2. **Configure Bot | ボットを設定**

```
*configure-bot
```

3. **Setup RAG Knowledge Base | RAG知識ベースを設定**

```
*setup-rag
```

## Teaching Philosophy | 教育哲学

### Hands-On First | ハンズオン第一

- **10-20 minute lectures** introduce key concepts | **10-20分の講義**が主要コンセプトを紹介
- **40-60 minute activities** provide practice | **40-60分のアクティビティ**が実践を提供
- Learning by doing, not just listening | 聞くだけでなく実践による学習

### Bot-Guided Workflows | ボットガイドワークフロー

- Bots follow BMAD method workflows | ボットはBMADメソッドワークフローに従う
- Step-by-step guidance during activities | アクティビティ中のステップバイステップガイダンス
- Adaptive scaffolding based on student responses | 学生の応答に基づく適応的足場掛け

### AI Transparency | AI透明性

**Encouraged | 奨励:**
- Use AI chatbots for reports, code, research | レポート、コード、調査にAIチャットボットを使用
- AI as learning tool and assistant | 学習ツールおよびアシスタントとしてのAI

**Required | 必須:**
- Share all prompts used | 使用したすべてのプロンプトを共有
- Share all AI responses | すべてのAI応答を共有
- Document verification process | 検証プロセスを文書化
- Explain hallucination checks | 幻覚チェックを説明

**Exception | 例外:**
- No AI in formal assessments | 正式評価でのAI使用不可

### Project-Based Assessment | プロジェクトベース評価

- NO final exams | 最終試験なし
- Real-world, authentic projects | 実世界の真正なプロジェクト
- Individual OR group options | 個人またはグループオプション
- Focus on application, not memorization | 暗記ではなく応用に焦点

## Bot Integration Architecture | ボット統合アーキテクチャ

### Course-Specific LLM+RAG Bot | コース固有のLLM+RAGボット

Each course has its own bot with:
各コースには以下を備えた独自のボットがあります：

- **LLM:** Language model for conversations | 会話のための言語モデル
- **RAG:** Retrieval-Augmented Generation for course content | コースコンテンツのための検索拡張生成
- **Workflows:** BMAD method sequences for guided learning | ガイド付き学習のためのBMADメソッドシーケンス
- **Bilingual:** English-Japanese responses | 英語・日本語応答

### Bot Portal | ボットポータル

Central portal for all bot interactions:
すべてのボットインタラクションのための中央ポータル：

- Captures all student-bot conversations | すべての学生・ボット会話をキャプチャ
- Tracks learning progress | 学習進捗を追跡
- Collects macro/micro analytics | マクロ・マイクロ分析を収集
- Enables curriculum adaptation | カリキュラム適応を可能にする

### Data Collection | データ収集

**Macro Level (Course) | マクロレベル（コース):**
- Course success rates | コース成功率
- Common difficulty points | 共通の困難ポイント
- Activity effectiveness | アクティビティ有効性
- Curriculum adaptation needs | カリキュラム適応ニーズ

**Micro Level (Student) | マイクロレベル（学生):**
- Individual progress tracking | 個別進捗追跡
- Learning patterns | 学習パターン
- Intervention needs | 介入ニーズ
- Personalized support | 個別サポート

## Bilingual Requirements | バイリンガル要件

### Format | 形式

All student-facing materials use this format:
すべての学生向け教材は次の形式を使用します：

```
English text | 日本語テキスト
```

### Applies To | 適用対象

- Learning objectives | 学習目標
- Activity instructions | アクティビティ指示
- Lecture materials | 講義資料
- Assessment criteria | 評価基準
- Bot prompts and responses | ボットプロンプトと応答
- Project guidelines | プロジェクトガイドライン
- Rubrics | ルーブリック
- Examples | 例

### Exceptions | 例外

- Configuration files (YAML) - English only | 設定ファイル（YAML） - 英語のみ
- Code/technical implementation - As appropriate | コード・技術実装 - 適宜
- Internal agent instructions - English only | 内部エージェント指示 - 英語のみ

## Best Practices | ベストプラクティス

### Curriculum Design | カリキュラム設計

1. Start with learning outcomes | 学習成果から始める
2. Design final project first (backward design) | 最終プロジェクトを最初に設計（逆向き設計）
3. Plan activities that build toward project | プロジェクトに向けて構築するアクティビティを計画
4. Keep lectures short (10-20 min max) | 講義を短く保つ（最大10-20分）
5. Maximize hands-on practice time | ハンズオン実践時間を最大化

### Activity Design | アクティビティ設計

1. Clear objectives for each activity | 各アクティビティの明確な目標
2. Step-by-step instructions | ステップバイステップ指示
3. Bot workflow integration points | ボットワークフロー統合ポイント
4. Real-world context and relevance | 実世界のコンテキストと関連性
5. Deliverables students can showcase | 学生が紹介できる成果物

### Bot Workflow Design | ボットワークフロー設計

1. Break complex tasks into small steps | 複雑なタスクを小さなステップに分解
2. Provide guidance, don't give answers | ガイダンスを提供し、答えは与えない
3. Include decision points for adaptation | 適応のための決定ポイントを含める
4. Capture meaningful learning data | 意味のある学習データをキャプチャ
5. Bilingual prompts and responses | バイリンガルプロンプトと応答

### Assessment Design | 評価設計

1. Authentic, real-world projects | 真正な実世界のプロジェクト
2. Clear rubrics shared in advance | 事前に共有される明確なルーブリック
3. Individual or group options | 個人またはグループオプション
4. Require AI transparency documentation | AI透明性文書化を要求
5. No final exams - project only | 最終試験なし - プロジェクトのみ

## Support | サポート

### Documentation | ドキュメント

- [BMAD-METHOD User Guide](../../docs/user-guide.md)
- [Expansion Packs Guide](../../docs/expansion-packs.md)
- [Agent Documentation](./agents/)
- [Template Reference](./templates/)

### Community | コミュニティ

- [Discord Community](https://discord.gg/gk8jAdXWmj)
- [GitHub Discussions](https://github.com/bmadcode/bmad-method/discussions)
- [Issue Tracker](https://github.com/bmadcode/bmad-method/issues)

## Contributing | 貢献

We welcome contributions to improve this expansion pack!
この拡張パックの改善への貢献を歓迎します！

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
ガイドラインについては[CONTRIBUTING.md](../../CONTRIBUTING.md)を参照してください。

## License | ライセンス

MIT License - see [LICENSE](../../LICENSE) for details.
MITライセンス - 詳細は[LICENSE](../../LICENSE)を参照してください。

## Trademark Notice | 商標通知

BMAD™ and BMAD-METHOD™ are trademarks of BMad Code, LLC. All rights reserved.
BMAD™およびBMAD-METHOD™はBMad Code, LLCの商標です。すべての権利は留保されています。

---

**Built with ❤️ for hands-on, bot-enhanced education**
**ハンズオン、ボット強化教育のために❤️で構築**

**Version | バージョン:** 1.0.0
**Last Updated | 最終更新:** 2025-01-07
