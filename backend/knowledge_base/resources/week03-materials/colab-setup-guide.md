# Google Colab Setup Guide
# Google Colab セットアップガイド

**Week 3 Reference Material | 第3週参考資料**
**Course:** ML-101 Machine Learning and Intelligence

---

## What is Google Colab? | Google Colabとは？

**Google Colab = Free online Python programming environment**
**Google Colab = 無料のオンラインPythonプログラミング環境**

**Think of it as:**
**次のように考えてください:**
- Microsoft Word, but for Python code
  Microsoft Word、しかしPythonコード用
- No installation needed - runs in your web browser
  インストール不要 - ウェブブラウザで実行
- Free access to powerful computers (including GPUs!)
  強力なコンピュータへの無料アクセス（GPUを含む！）

---

## Why Use Google Colab? | なぜGoogle Colabを使用するのか？

✅ **Free** - No cost to use
   無料 - 使用に費用はかかりません

✅ **No setup** - Python and ML libraries already installed
   セットアップ不要 - PythonとMLライブラリがすでにインストール済み

✅ **Cloud-based** - Access from any computer
   クラウドベース - 任意のコンピュータからアクセス

✅ **Powerful** - Use Google's computers for heavy computations
   強力 - 重い計算にGoogleのコンピュータを使用

✅ **Share easily** - Collaborate like Google Docs
   簡単に共有 - Google Docsのように共同作業

✅ **Industry standard** - Used by professionals worldwide
   業界標準 - 世界中のプロフェッショナルが使用

---

## Prerequisites | 前提条件

**What you need:**
**必要なもの:**

✅ Google account (Gmail)
   Googleアカウント（Gmail）

✅ Web browser (Chrome, Firefox, Safari, or Edge)
   ウェブブラウザ（Chrome、Firefox、Safari、またはEdge）

✅ Internet connection
   インターネット接続

**That's it! No installation required.**
**それだけです！インストールは不要です。**

---

## Step 1: Accessing Google Colab | ステップ1：Google Colabへのアクセス

### Method 1: Direct URL (Easiest) | 方法1：直接URL（最も簡単）

1. **Open your web browser**
   ウェブブラウザを開く

2. **Go to:** `https://colab.research.google.com`
   移動：`https://colab.research.google.com`

3. **Sign in with your Google account**
   Googleアカウントでサインイン

4. **Done!** You'll see the Colab welcome screen
   完了！Colabウェルカム画面が表示されます

---

### Method 2: From Google Drive | 方法2：Google Driveから

1. **Go to Google Drive:** `https://drive.google.com`
   Google Driveに移動：`https://drive.google.com`

2. **Click "New" button** (top left)
   「新規」ボタンをクリック（左上）

3. **Select "More" → "Google Colaboratory"**
   「その他」→「Google Colaboratory」を選択

4. **If you don't see Colaboratory:**
   Colaboratoryが表示されない場合：
   - Click "Connect more apps"
     「アプリを追加」をクリック
   - Search for "Colaboratory"
     「Colaboratory」を検索
   - Click "Install"
     「インストール」をクリック
   - Then retry steps 2-3
     その後、ステップ2-3を再試行

---

## Step 2: Creating Your First Notebook | ステップ2：最初のノートブックの作成

### What is a Notebook? | ノートブックとは？

**Notebook = Document that combines:**
**ノートブック = 次を組み合わせたドキュメント:**
- Code (Python)
  コード（Python）
- Text explanations (Markdown)
  テキスト説明（Markdown）
- Output results (graphs, tables)
  出力結果（グラフ、テーブル）

**Like a lab notebook for programming!**
**プログラミング用の実験ノートのような！**

---

### Create New Notebook | 新しいノートブックを作成

**From Colab homepage:**
**Colabホームページから:**

1. **Click "File" → "New notebook"**
   「ファイル」→「新しいノートブック」をクリック

2. **A new notebook opens automatically**
   新しいノートブックが自動的に開きます

3. **Notebook is saved to your Google Drive in "Colab Notebooks" folder**
   ノートブックは「Colab Notebooks」フォルダのGoogle Driveに保存されます

---

### Rename Your Notebook | ノートブックの名前変更

1. **Click on "Untitled0.ipynb" at the top**
   上部の「Untitled0.ipynb」をクリック

2. **Type new name** (e.g., "Week3_Python_Practice")
   新しい名前を入力（例：「Week3_Python_Practice」）

3. **Press Enter**
   Enterを押す

4. **Notebook is auto-saved**
   ノートブックは自動保存されます

**File extension .ipynb = Interactive Python Notebook**
**ファイル拡張子 .ipynb = インタラクティブPythonノートブック**

---

## Step 3: Understanding the Interface | ステップ3：インターフェースの理解

### Colab Interface Layout | Colabインターフェースレイアウト

```
┌─────────────────────────────────────────────────────────┐
│  File  Edit  View  Insert  Runtime  Tools  Help         │  ← Menu bar
├─────────────────────────────────────────────────────────┤
│  Week3_Python_Practice.ipynb          [Connected ✓]     │  ← Title & Status
├─────────────────────────────────────────────────────────┤
│                                                          │
│  + Code    + Text                              [📁][⚙]│  ← Toolbar
│  ────────────────────────────────────────────────       │
│  │ Code cell 1                              [▶]│       │
│  │ print("Hello, World!")                      │       │  ← Code cell
│  └─────────────────────────────────────────────┘       │
│  Hello, World!                                           │  ← Output
│  ────────────────────────────────────────────────       │
│  │ Code cell 2                              [▶]│       │
│  │                                              │       │
│  └─────────────────────────────────────────────┘       │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

---

### Key Interface Elements | 主要なインターフェース要素

**Menu Bar (top):**
**メニューバー（上部）:**
- File, Edit, View, Insert, Runtime, Tools, Help
- Standard operations like save, copy, paste
  保存、コピー、ペーストなどの標準操作

**Connection Status (top right):**
**接続ステータス（右上）:**
- Shows if connected to Google's computers
  Googleのコンピュータに接続されているかを表示
- Click to connect/disconnect
  クリックして接続/切断

**Toolbar:**
**ツールバー:**
- `+ Code` - Add new code cell
  新しいコードセルを追加
- `+ Text` - Add new text cell
  新しいテキストセルを追加
- 📁 - File browser (access uploaded files)
  ファイルブラウザ（アップロードされたファイルにアクセス）
- ⚙ - Settings
  設定

---

## Step 4: Working with Cells | ステップ4：セルの操作

### Code Cells | コードセル

**Code cells = Where you write and run Python code**
**コードセル = Pythonコードを書いて実行する場所**

**Creating a code cell:**
**コードセルの作成:**

1. **Click "+ Code" button**
   「+ Code」ボタンをクリック

2. **Or hover between cells and click "+ Code" that appears**
   またはセル間にカーソルを合わせて表示される「+ Code」をクリック

3. **Or press `Ctrl+M B` (insert cell below)**
   または`Ctrl+M B`を押す（下にセルを挿入）

**Writing code:**
**コードの記述:**

```python
# Click inside the code cell and type:
print("Hello, World!")
```

**Running code:**
**コードの実行:**

**Method 1:** Click the ▶ play button on the left of the cell
方法1：セルの左側の▶再生ボタンをクリック

**Method 2:** Press `Shift + Enter` (run and move to next cell)
方法2：`Shift + Enter`を押す（実行して次のセルに移動）

**Method 3:** Press `Ctrl + Enter` (run and stay in same cell)
方法3：`Ctrl + Enter`を押す（実行して同じセルにとどまる）

**Output appears below the cell!**
**出力がセルの下に表示されます！**

---

### Text Cells | テキストセル

**Text cells = Add explanations, notes, headings**
**テキストセル = 説明、メモ、見出しを追加**

**Creating a text cell:**
**テキストセルの作成:**

1. **Click "+ Text" button**
   「+ Text」ボタンをクリック

2. **Type your text**
   テキストを入力

3. **Use Markdown for formatting:**
   フォーマットにMarkdownを使用：

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text**
*Italic text*

- Bullet point 1
- Bullet point 2

1. Numbered list
2. Item 2
```

**Execute the cell** (Shift+Enter or click outside) to see formatted text
**セルを実行**（Shift+Enterまたは外側をクリック）してフォーマットされたテキストを表示

---

### Cell Operations | セル操作

**Select a cell:**
**セルを選択:**
- Click on left side of cell
  セルの左側をクリック

**Delete a cell:**
**セルを削除:**
- Select cell, then click trash icon 🗑
  セルを選択してからゴミ箱アイコンをクリック
- Or press `Ctrl+M D`
  または`Ctrl+M D`を押す

**Move a cell:**
**セルを移動:**
- Select cell, then click ⬆ or ⬇ arrows
  セルを選択してから⬆または⬇矢印をクリック
- Or drag and drop the cell
  またはセルをドラッグアンドドロップ

**Copy a cell:**
**セルをコピー:**
- Select cell → Edit → Copy
  セルを選択 → 編集 → コピー
- Or `Ctrl+C`
  または`Ctrl+C`

**Paste a cell:**
**セルを貼り付け:**
- Edit → Paste
  編集 → 貼り付け
- Or `Ctrl+V`
  または`Ctrl+V`

---

## Step 5: Running Code | ステップ5：コードの実行

### Your First Code Example | 最初のコード例

**Try this in a code cell:**
**コードセルでこれを試してください:**

```python
# Simple greeting
print("Hello from Google Colab!")
print("機械学習は楽しい！")
```

**Click ▶ or press Shift+Enter**
**▶をクリックまたはShift+Enterを押す**

**Output:**
**出力:**
```
Hello from Google Colab!
機械学習は楽しい！
```

---

### Variables Persist Across Cells | 変数はセル間で持続

**Cell 1:**
```python
name = "Alice"
age = 25
```

**Cell 2:**
```python
print(f"{name} is {age} years old")
```

**Output:**
```
Alice is 25 years old
```

**Important:** Run cells in order (top to bottom) for variables to work correctly!
**重要:** 変数が正しく機能するようにセルを順番に（上から下に）実行してください！

---

### Running Multiple Cells | 複数のセルの実行

**Run all cells:**
**すべてのセルを実行:**
- Runtime → Run all
  ランタイム → すべて実行

**Run cells above current:**
**現在のセルより上のセルを実行:**
- Runtime → Run before
  ランタイム → 前を実行

**Run cells below current:**
**現在のセルより下のセルを実行:**
- Runtime → Run after
  ランタイム → 後を実行

**Restart runtime:**
**ランタイムを再起動:**
- Runtime → Restart runtime
  ランタイム → ランタイムを再起動
- Clears all variables and outputs
  すべての変数と出力をクリア

---

## Step 6: Uploading Files | ステップ6：ファイルのアップロード

### Why Upload Files? | なぜファイルをアップロードするのか？

**Common use cases:**
**一般的な使用例:**
- Upload CSV data files for analysis
  分析用のCSVデータファイルをアップロード
- Upload images for processing
  処理用の画像をアップロード
- Load datasets for ML training
  MLトレーニング用のデータセットをロード

---

### Method 1: Upload from Computer (Temporary) | 方法1：コンピュータからアップロード（一時的）

**Steps:**
**手順:**

1. **Click 📁 Files icon** in left sidebar
   左サイドバーの📁ファイルアイコンをクリック

2. **Click "Upload to session storage" button** (upload icon)
   「セッションストレージにアップロード」ボタンをクリック（アップロードアイコン）

3. **Select file from your computer**
   コンピュータからファイルを選択

4. **Wait for upload to complete**
   アップロードが完了するまで待つ

5. **File appears in file list**
   ファイルがファイルリストに表示されます

**⚠️ Warning:** Files uploaded this way are DELETED when you disconnect!
**⚠️ 警告:** この方法でアップロードされたファイルは、切断すると削除されます！

---

### Method 2: Upload via Code | 方法2：コード経由でアップロード

```python
from google.colab import files

# Upload file
uploaded = files.upload()

# The file is now accessible in your code
# ファイルがコードでアクセス可能になりました
```

**Browser will prompt you to select file**
**ブラウザがファイルを選択するように促します**

**Access uploaded file:**
**アップロードされたファイルにアクセス:**
```python
import pandas as pd

# Read uploaded CSV
df = pd.read_csv('companies.csv')
print(df.head())
```

---

### Method 3: Mount Google Drive (Persistent) | 方法3：Google Driveをマウント（永続的）

**Best for larger files or files you'll use repeatedly!**
**大きなファイルまたは繰り返し使用するファイルに最適！**

**Steps:**
**手順:**

1. **Run this code in a cell:**
   セルでこのコードを実行：

```python
from google.colab import drive
drive.mount('/content/drive')
```

2. **Click the link that appears**
   表示されるリンクをクリック

3. **Choose your Google account**
   Googleアカウントを選択

4. **Click "Allow" to grant permissions**
   「許可」をクリックして権限を付与

5. **Copy the authorization code**
   認証コードをコピー

6. **Paste code into Colab and press Enter**
   Colabにコードを貼り付けてEnterを押す

7. **Done! Google Drive is now accessible**
   完了！Google Driveがアクセス可能になりました

**Access your Drive files:**
**Driveファイルにアクセス:**
```python
# List files in Google Drive
!ls "/content/drive/MyDrive"

# Read file from Drive
df = pd.read_csv('/content/drive/MyDrive/companies.csv')
```

---

## Step 7: Downloading Results | ステップ7：結果のダウンロード

### Method 1: Download via File Browser | 方法1：ファイルブラウザ経由でダウンロード

1. **Click 📁 Files icon** in left sidebar
   左サイドバーの📁ファイルアイコンをクリック

2. **Find your file in the list**
   リストでファイルを見つける

3. **Click ⋮ (three dots) next to filename**
   ファイル名の横の⋮（3つのドット）をクリック

4. **Select "Download"**
   「ダウンロード」を選択

5. **File downloads to your computer**
   ファイルがコンピュータにダウンロードされます

---

### Method 2: Download via Code | 方法2：コード経由でダウンロード

```python
from google.colab import files

# Save your results
df.to_csv('results.csv', index=False)

# Download the file
files.download('results.csv')
```

**Browser automatically downloads the file**
**ブラウザが自動的にファイルをダウンロードします**

---

### Method 3: Save to Google Drive | 方法3：Google Driveに保存

```python
# Mount Drive first (see Step 6, Method 3)
from google.colab import drive
drive.mount('/content/drive')

# Save directly to Drive
df.to_csv('/content/drive/MyDrive/results.csv', index=False)

# File is now permanently saved in your Google Drive!
# ファイルがGoogle Driveに永久に保存されました！
```

**Advantage:** Files persist even after disconnecting
**利点:** 切断後もファイルが持続

---

## Step 8: Installing Libraries | ステップ8：ライブラリのインストール

### Pre-installed Libraries | プレインストールされたライブラリ

**Colab comes with popular libraries already installed:**
**Colabには人気のライブラリがすでにインストールされています:**

✅ pandas - Data analysis
   pandas - データ分析

✅ numpy - Numerical computing
   numpy - 数値計算

✅ matplotlib - Plotting
   matplotlib - プロット

✅ scikit-learn - Machine learning
   scikit-learn - 機械学習

✅ tensorflow - Deep learning
   tensorflow - ディープラーニング

**Just import and use!**
**インポートして使用するだけ！**

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
```

---

### Installing Additional Libraries | 追加ライブラリのインストール

**If you need a library that's not installed:**
**インストールされていないライブラリが必要な場合:**

```python
# Install using pip
!pip install beautifulsoup4

# Then import
from bs4 import BeautifulSoup
```

**Note the `!` before pip** - runs as shell command
**pipの前の`!`に注意** - シェルコマンドとして実行

**Libraries installed this way last only for current session**
**この方法でインストールされたライブラリは現在のセッションのみ有効**

---

## Common Troubleshooting | 一般的なトラブルシューティング

### Problem 1: Runtime Disconnected | 問題1：ランタイムが切断された

**Symptoms:**
**症状:**
- "Reconnect" button appears
  「再接続」ボタンが表示される
- Code cells won't run
  コードセルが実行されない

**Causes:**
**原因:**
- Idle for too long (~90 minutes)
  長時間アイドル状態（約90分）
- Internet connection lost
  インターネット接続が失われた
- Maximum session time exceeded (~12 hours)
  最大セッション時間を超過（約12時間）

**Solution:**
**解決策:**
1. Click "Reconnect" button
   「再接続」ボタンをクリック
2. Re-run all cells from top
   上からすべてのセルを再実行
3. Re-upload files if needed
   必要に応じてファイルを再アップロード

**Prevention:**
**予防:**
- Save work frequently
  作業を頻繁に保存
- Use Google Drive for important files
  重要なファイルにはGoogle Driveを使用
- Keep browser tab active
  ブラウザタブをアクティブに保つ

---

### Problem 2: File Not Found | 問題2：ファイルが見つからない

**Error message:**
**エラーメッセージ:**
```
FileNotFoundError: [Errno 2] No such file or directory: 'data.csv'
```

**Causes:**
**原因:**
- File not uploaded
  ファイルがアップロードされていない
- Wrong filename
  ファイル名が間違っている
- File in different folder
  ファイルが別のフォルダにある

**Solution:**
**解決策:**
1. Check file list (📁 Files icon)
   ファイルリストを確認（📁ファイルアイコン）
2. Verify exact filename (case-sensitive!)
   正確なファイル名を確認（大文字小文字を区別！）
3. Re-upload file if missing
   欠落している場合はファイルを再アップロード
4. Check file path if using Drive
   Driveを使用している場合はファイルパスを確認

---

### Problem 3: Code Takes Too Long | 問題3：コードが時間がかかりすぎる

**Symptoms:**
**症状:**
- Cell shows spinning icon indefinitely
  セルが無期限に回転アイコンを表示
- No output appears
  出力が表示されない

**Causes:**
**原因:**
- Infinite loop in code
  コード内の無限ループ
- Very large dataset
  非常に大きなデータセット
- Heavy computation
  重い計算

**Solution:**
**解決策:**
1. **Stop execution:** Runtime → Interrupt execution
   **実行を停止:** ランタイム → 実行を中断
2. Check code for infinite loops
   無限ループのコードを確認
3. Use smaller data sample for testing
   テスト用に小さなデータサンプルを使用
4. Add print statements to see progress
   進捗を確認するためにprint文を追加

---

### Problem 4: Out of Memory | 問題4：メモリ不足

**Error message:**
**エラーメッセージ:**
```
RuntimeError: CUDA out of memory
```
or
```
MemoryError
```

**Causes:**
**原因:**
- Dataset too large
  データセットが大きすぎる
- Too many variables stored
  保存されている変数が多すぎる

**Solution:**
**解決策:**
1. **Restart runtime:** Runtime → Restart runtime
   **ランタイムを再起動:** ランタイム → ランタイムを再起動
2. Use smaller data sample
   小さなデータサンプルを使用
3. Delete unnecessary variables
   不要な変数を削除
4. Process data in chunks
   データをチャンクで処理

---

### Problem 5: Import Error | 問題5：インポートエラー

**Error message:**
**エラーメッセージ:**
```
ModuleNotFoundError: No module named 'xyz'
```

**Solution:**
**解決策:**
```python
# Install the missing library
!pip install xyz

# Then import
import xyz
```

---

## Keyboard Shortcuts | キーボードショートカット

### Essential Shortcuts | 必須ショートカット

| Action | Shortcut | 動作 |
|--------|----------|------|
| **Run cell** | `Shift + Enter` | セルを実行 |
| **Run cell (stay)** | `Ctrl + Enter` | セルを実行（とどまる） |
| **Insert cell below** | `Ctrl + M B` | 下にセルを挿入 |
| **Insert cell above** | `Ctrl + M A` | 上にセルを挿入 |
| **Delete cell** | `Ctrl + M D` | セルを削除 |
| **Convert to code** | `Ctrl + M Y` | コードに変換 |
| **Convert to text** | `Ctrl + M M` | テキストに変換 |
| **Command palette** | `Ctrl + Shift + P` | コマンドパレット |
| **Find & replace** | `Ctrl + H` | 検索と置換 |
| **Comment/uncomment** | `Ctrl + /` | コメント/コメント解除 |

**View all shortcuts:** Tools → Keyboard shortcuts
**すべてのショートカットを表示:** ツール → キーボードショートカット

---

## Best Practices | ベストプラクティス

### Organization | 組織化

✅ **Use descriptive notebook names**
   説明的なノートブック名を使用
   - Good: "Week3_Company_Data_Analysis"
     良い：「Week3_Company_Data_Analysis」
   - Bad: "Untitled0"
     悪い：「Untitled0」

✅ **Add text cells for explanations**
   説明用のテキストセルを追加
   - Explain what each section does
     各セクションが何をするかを説明
   - Document your thought process
     思考プロセスを文書化

✅ **Use headings to organize sections**
   見出しを使用してセクションを整理
   ```markdown
   # Data Loading
   ## Read CSV files
   ## Check for missing values

   # Data Cleaning
   ## Remove duplicates
   ## Handle missing values
   ```

---

### Code Quality | コード品質

✅ **Add comments in code**
   コードにコメントを追加
   ```python
   # Load company data
   df = pd.read_csv('companies.csv')

   # Remove companies with missing employees data
   df = df.dropna(subset=['Employees'])
   ```

✅ **One operation per cell (when learning)**
   1つのセルに1つの操作（学習時）
   - Easier to debug
     デバッグが簡単
   - Clear outputs
     明確な出力

✅ **Print intermediate results**
   中間結果を印刷
   ```python
   df = pd.read_csv('data.csv')
   print(f"Loaded {len(df)} rows")

   df = df.dropna()
   print(f"After cleaning: {len(df)} rows")
   ```

---

### Data Management | データ管理

✅ **Use Google Drive for important files**
   重要なファイルにはGoogle Driveを使用
   - Files persist after disconnection
     切断後もファイルが持続

✅ **Download results regularly**
   結果を定期的にダウンロード
   - Don't lose your work!
     作業を失わないでください！

✅ **Name output files clearly**
   出力ファイルに明確な名前を付ける
   - Good: "cleaned_companies_2025-11-01.csv"
     良い：「cleaned_companies_2025-11-01.csv」
   - Bad: "output.csv"
     悪い：「output.csv」

---

### Sharing & Collaboration | 共有とコラボレーション

✅ **Share notebooks like Google Docs**
   Google Docsのようにノートブックを共有
   1. Click "Share" button (top right)
      「共有」ボタンをクリック（右上）
   2. Add collaborators by email
      メールで共同作業者を追加
   3. Set permissions (view/edit)
      権限を設定（表示/編集）

✅ **Share via link**
   リンク経由で共有
   1. File → Share → Get link
      ファイル → 共有 → リンクを取得
   2. Set "Anyone with link can view"
      「リンクを知っている全員が閲覧可」を設定
   3. Copy and share link
      リンクをコピーして共有

✅ **Make a copy for yourself**
   自分用にコピーを作成
   - File → Save a copy in Drive
     ファイル → Driveにコピーを保存
   - Useful when using shared notebooks
     共有ノートブックを使用する場合に便利

---

## Practice Exercise | 練習課題

**Try this complete workflow:**
**この完全なワークフローを試してください:**

1. **Create new notebook** named "Practice_Colab"
   「Practice_Colab」という名前の新しいノートブックを作成

2. **Add text cell** with heading "# My First Colab Notebook"
   「# My First Colab Notebook」という見出しのテキストセルを追加

3. **Add code cell** and run:
   コードセルを追加して実行:
   ```python
   print("Hello, Colab!")
   ```

4. **Import pandas:**
   pandasをインポート:
   ```python
   import pandas as pd
   print(pd.__version__)
   ```

5. **Create sample data:**
   サンプルデータを作成:
   ```python
   data = {
       'Company': ['Toyota', 'Sony', 'Nintendo'],
       'Industry': ['Automotive', 'Electronics', 'Gaming'],
       'Founded': [1937, 1946, 1889]
   }
   df = pd.DataFrame(data)
   print(df)
   ```

6. **Save to CSV:**
   CSVに保存:
   ```python
   df.to_csv('my_first_data.csv', index=False)
   ```

7. **Download the file** using file browser
   ファイルブラウザを使用してファイルをダウンロード

**Congratulations! You've completed your first Colab workflow!**
**おめでとうございます！最初のColabワークフローを完了しました！**

---

## Quick Reference Card | クイックリファレンスカード

### Access Colab | Colabにアクセス
```
URL: https://colab.research.google.com
```

### Create Notebook | ノートブックを作成
```
File → New notebook
```

### Add Cells | セルを追加
```
+ Code  - Add code cell
+ Text  - Add text cell
```

### Run Code | コードを実行
```
Shift + Enter  - Run and go to next
Ctrl + Enter   - Run and stay
```

### Upload Files | ファイルをアップロード
```
📁 Files icon → Upload button
```

### Mount Google Drive | Google Driveをマウント
```python
from google.colab import drive
drive.mount('/content/drive')
```

### Download Files | ファイルをダウンロード
```python
from google.colab import files
files.download('filename.csv')
```

### Install Library | ライブラリをインストール
```python
!pip install library_name
```

---

*Created for ML-101: Week 3*
*ML-101用に作成：第3週*
