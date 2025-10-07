<!-- Powered by BMAD™ Core -->

# Create Document from Template (YAML Driven) | テンプレートからドキュメントを作成（YAML駆動）

## ⚠️ CRITICAL EXECUTION NOTICE | 重要な実行通知 ⚠️

**THIS IS AN EXECUTABLE WORKFLOW - NOT REFERENCE MATERIAL**
**これは実行可能なワークフローです - 参考資料ではありません**

When this task is invoked | このタスクが呼び出されたとき:

1. **DISABLE ALL EFFICIENCY OPTIMIZATIONS** - This workflow requires full user interaction
   **すべての効率化最適化を無効にする** - このワークフローには完全なユーザーインタラクションが必要です
2. **MANDATORY STEP-BY-STEP EXECUTION** - Each section must be processed sequentially with user feedback
   **必須のステップバイステップ実行** - 各セクションはユーザーフィードバックとともに順次処理する必要があります
3. **ELICITATION IS REQUIRED** - When `elicit: true`, you MUST use the 1-9 format and wait for user response
   **引き出しが必須** - `elicit: true`の場合、1-9形式を使用してユーザー応答を待つ必要があります
4. **BILINGUAL REQUIREMENT** - All student-facing content MUST be in "English | 日本語" format
   **バイリンガル要件** - すべての学生向けコンテンツは「English | 日本語」形式である必要があります

## Critical: Template Discovery | 重要：テンプレート発見

If a YAML Template has not been provided, list all templates from expansion-packs/bmad-botedu/templates or ask the user to provide another.

YAMLテンプレートが提供されていない場合は、expansion-packs/bmad-botedu/templatesからすべてのテンプレートをリストするか、ユーザーに別のテンプレートの提供を依頼してください。

## CRITICAL: Mandatory Elicitation Format | 重要：必須の引き出し形式

**When `elicit: true`, this is a HARD STOP requiring user interaction:**
**`elicit: true`の場合、これはユーザーインタラクションを必要とするハードストップです：**

**YOU MUST | あなたは必ず：**

1. Present section content | セクションコンテンツを提示
2. Provide detailed rationale (explain trade-offs, assumptions, decisions made)
   詳細な理論的根拠を提供（トレードオフ、仮定、行われた決定を説明）
3. **STOP and present numbered options 1-9:**
   **停止して番号付きオプション1-9を提示：**
   - **Option 1:** Always "Proceed to next section" | 常に「次のセクションに進む」
   - **Options 2-9:** Select 8 methods from data/elicitation-methods
   - End with: "Select 1-9 or just type your question/feedback:"
   「1-9を選択するか、質問やフィードバックを入力してください：」で終わる
4. **WAIT FOR USER RESPONSE** - Do not proceed until user selects option or provides feedback
   **ユーザー応答を待つ** - ユーザーがオプションを選択するかフィードバックを提供するまで進まない

**BILINGUAL CONTENT REQUIREMENT | バイリンガルコンテンツ要件:**

When generating student-facing content, ALWAYS use format:
学生向けコンテンツを生成する際は、常に次の形式を使用：

```
English text | 日本語テキスト
```

This applies to | これは以下に適用されます:
- Learning objectives | 学習目標
- Instructions | 指示
- Activity descriptions | アクティビティの説明
- Assessment criteria | 評価基準
- Examples | 例
- All student-facing materials | すべての学生向け教材

## Processing Flow | 処理フロー

1. **Parse YAML template** - Load template metadata and sections
   **YAMLテンプレートを解析** - テンプレートメタデータとセクションをロード
2. **Set preferences** - Show current mode (Interactive), confirm output file
   **設定を設定** - 現在のモード（インタラクティブ）を表示し、出力ファイルを確認
3. **Process each section | 各セクションを処理:**
   - Skip if condition unmet | 条件が満たされない場合はスキップ
   - Check agent permissions (owner/editors) | エージェント権限を確認（所有者・編集者）
   - Draft content using section instruction | セクション指示を使用してコンテンツをドラフト
   - **ENSURE BILINGUAL FORMAT for student content** | 学生向けコンテンツのバイリンガル形式を確保
   - Present content + detailed rationale | コンテンツ+詳細な理論的根拠を提示
   - **IF elicit: true** → MANDATORY 1-9 options format | **elicit: trueの場合** → 必須の1-9オプション形式
   - Save to file if possible | 可能であればファイルに保存
4. **Continue until complete | 完了するまで続ける**

## YOLO Mode | ヨーロモード

User can type `#yolo` to toggle to YOLO mode (process all sections at once).
ユーザーは`#yolo`を入力してヨーロモードに切り替えることができます（すべてのセクションを一度に処理）。

## CRITICAL REMINDERS | 重要なリマインダー

**❌ NEVER | 決して行わないこと:**

- Ask yes/no questions for elicitation | 引き出しにyes/no質問をする
- Use any format other than 1-9 numbered options | 1-9の番号付きオプション以外の形式を使用する
- Forget bilingual format for student content | 学生向けコンテンツのバイリンガル形式を忘れる

**✅ ALWAYS | 常に行うこと:**

- Use exact 1-9 format when elicit: true | elicit: trueの場合は正確な1-9形式を使用
- Include bilingual format "English | 日本語" for all student materials | すべての学生教材に「English | 日本語」のバイリンガル形式を含める
- Provide detailed rationale explaining decisions | 決定を説明する詳細な理論的根拠を提供
- End with "Select 1-9 or just type your question/feedback:" | 「1-9を選択するか、質問やフィードバックを入力してください：」で終わる
