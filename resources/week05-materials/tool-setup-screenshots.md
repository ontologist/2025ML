# No-Code Scraping Tools Setup Guide
# ノーコードスクレイピングツールセットアップガイド

**ML-101: Week 5 Supporting Material**

---

## Introduction | イントロダクション

This guide provides detailed setup instructions for three popular no-code web scraping tools: Octoparse, ParseHub, and Web Scraper (browser extension). Each tool offers a user-friendly interface for data collection without requiring programming knowledge.

このガイドは、3つの人気のあるノーコードWebスクレイピングツール（Octoparse、ParseHub、Web Scraper（ブラウザ拡張機能））の詳細なセットアップ手順を提供します。各ツールは、プログラミング知識を必要とせずにデータ収集のためのユーザーフレンドリーなインターフェースを提供します。

**Important Note**: This guide uses screenshot descriptions since actual images cannot be embedded. When you follow these steps, your screen should match the descriptions provided.

**重要な注意**: このガイドは、実際の画像を埋め込むことができないため、スクリーンショットの説明を使用します。これらの手順に従うと、画面は提供された説明と一致するはずです。

---

## Tool 1: Octoparse

### Overview | 概要

Octoparse is a powerful visual web scraping tool with both free and paid versions. It offers cloud-based scraping, automatic data extraction, and scheduled tasks.

Octoparseは、無料版と有料版の両方を持つ強力なビジュアルWebスクレイピングツールです。クラウドベースのスクレイピング、自動データ抽出、スケジュールされたタスクを提供します。

**Best For**: E-commerce, news websites, social media data
**Difficulty Level**: Beginner to Intermediate
**Free Tier**: Yes (limited features, local scraping only)

---

### A. Installation and Access | インストールとアクセス

#### Where to Download
- Official Website: https://www.octoparse.com
- Supported Platforms: Windows, macOS

#### Steps:

1. Navigate to the Octoparse homepage
   - Octoparseホームページに移動

**[SCREENSHOT 1: Octoparse Homepage]**
You should see a clean homepage with the Octoparse logo (blue octopus) in the top left corner. The main headline reads "Web Scraping Tool & Free Web Crawler" in large text. There are two prominent buttons in the center: "Download" (blue button) and "Start Free Trial" (white button with blue border). Below the buttons, you'll see text indicating "Windows & macOS supported."

青いタコのロゴが左上隅に表示されたクリーンなホームページが表示されます。メインの見出しには「Web Scraping Tool & Free Web Crawler」と大きなテキストで書かれています。中央に2つの目立つボタンがあります：「Download」（青いボタン）と「Start Free Trial」（青い境界線のある白いボタン）。ボタンの下には「Windows & macOS supported」というテキストが表示されます。

2. Click the blue "Download" button in the top right corner
   - 右上隅の青い「Download」ボタンをクリック

3. Select your operating system (Windows or macOS)
   - オペレーティングシステム（WindowsまたはmacOS）を選択

**[SCREENSHOT 2: Download Selection Page]**
The page displays two large download options side by side. On the left, you see a Windows icon with "Download for Windows" and minimum requirements (Windows 7 or later). On the right, a macOS icon with "Download for Mac" and requirements (macOS 10.13 or later). Each option has a large download button below it.

ページには2つの大きなダウンロードオプションが並んで表示されます。左側にはWindowsアイコンと「Download for Windows」および最小要件（Windows 7以降）が表示されます。右側には、macOSアイコンと「Download for Mac」および要件（macOS 10.13以降）が表示されます。各オプションの下に大きなダウンロードボタンがあります。

4. Open the downloaded installer file (OctoparseSetup.exe or OctoparseSetup.dmg)
   - ダウンロードしたインストーラーファイルを開く

5. Follow the installation wizard:
   - インストールウィザードに従う：
   - Accept the license agreement
   - Choose installation directory (default recommended)
   - Click "Install"
   - Wait for installation to complete (2-3 minutes)

#### System Requirements:

**Windows:**
- Windows 7/8/10/11 (64-bit)
- 2GB RAM minimum (4GB recommended)
- 500MB free disk space

**macOS:**
- macOS 10.13 or later
- 2GB RAM minimum (4GB recommended)
- 500MB free disk space

---

### B. Account Creation | アカウント作成

After installing Octoparse, you need to create a free account.

Octoparseをインストールした後、無料アカウントを作成する必要があります。

#### Steps:

1. Launch Octoparse application
   - Octoparseアプリケーションを起動

**[SCREENSHOT 3: Login/Registration Screen]**
The first screen you see shows the Octoparse logo at the top center. Below it are two tabs: "Sign In" and "Sign Up" (the Sign Up tab should be highlighted in blue). The form contains fields for:
- Email address (text input with envelope icon)
- Password (text input with lock icon)
- Confirm Password (text input with lock icon)
- A checkbox for "I agree to the Terms of Service and Privacy Policy"
- A large blue "Create Account" button at the bottom

最初に表示される画面には、上部中央にOctoparseロゴが表示されます。その下には2つのタブがあります：「Sign In」と「Sign Up」（Sign Upタブが青で強調表示されているはずです）。フォームには次のフィールドが含まれています：
- メールアドレス（封筒アイコン付きのテキスト入力）
- パスワード（ロックアイコン付きのテキスト入力）
- パスワードの確認（ロックアイコン付きのテキスト入力）
- 「利用規約とプライバシーポリシーに同意する」のチェックボックス
- 下部に大きな青い「Create Account」ボタン

2. Click the "Sign Up" tab
   - 「Sign Up」タブをクリック

3. Enter your email address
   - メールアドレスを入力

4. Create a strong password (minimum 8 characters)
   - 強力なパスワードを作成（最低8文字）

5. Confirm your password
   - パスワードを確認

6. Check the box to agree to Terms of Service
   - 利用規約に同意するボックスにチェック

7. Click "Create Account"
   - 「Create Account」をクリック

8. Check your email for verification link
   - 確認リンクのメールを確認

**[SCREENSHOT 4: Email Verification Prompt]**
After clicking Create Account, you'll see a confirmation screen with a green checkmark icon and text that reads "Verification Email Sent!" Below it states "Please check your inbox and click the verification link to activate your account." There's also a "Resend Email" link if needed.

Create Accountをクリックした後、緑色のチェックマークアイコンと「Verification Email Sent!」というテキストが表示された確認画面が表示されます。その下には「メールの受信トレイを確認し、確認リンクをクリックしてアカウントを有効にしてください」と記載されています。必要に応じて「Resend Email」リンクもあります。

9. Click the verification link in your email
   - メールの確認リンクをクリック

10. Return to Octoparse and sign in with your credentials
    - Octoparseに戻り、認証情報でサインイン

---

### C. First Project Setup | 最初のプロジェクトセットアップ

Now let's create your first scraping project.

最初のスクレイピングプロジェクトを作成しましょう。

#### Steps:

1. After signing in, you'll see the Octoparse main dashboard
   - サインイン後、Octoparseメインダッシュボードが表示されます

**[SCREENSHOT 5: Main Dashboard - New Project]**
The dashboard has a left sidebar showing:
- "Home" (house icon)
- "Task List" (list icon)
- "Data" (database icon)
- "Schedule" (clock icon)
At the top center is a large search bar with placeholder text "Enter a URL to start scraping..." and a green "Start" button on the right. Below are quick-start templates showing icons for popular sites like Amazon, eBay, Google, etc.

ダッシュボードには左側のサイドバーがあり、以下が表示されます：
- 「Home」（家のアイコン）
- 「Task List」（リストアイコン）
- 「Data」（データベースアイコン）
- 「Schedule」（時計アイコン）
上部中央には、プレースホルダーテキスト「Enter a URL to start scraping...」を持つ大きな検索バーと、右側に緑色の「Start」ボタンがあります。下には、Amazon、eBay、Googleなどの人気サイトのアイコンを示すクイックスタートテンプレートがあります。

2. In the URL bar at the top, enter the website you want to scrape
   - 上部のURLバーに、スクレイピングしたいWebサイトを入力

3. Click the green "Start" button
   - 緑色の「Start」ボタンをクリック

**[SCREENSHOT 6: URL Input Dialog]**
After clicking Start, a dialog box appears titled "Create Task." It contains:
- A text field labeled "Task Name" (auto-filled with the website domain)
- The URL you entered (editable)
- A dropdown for "Scraping Mode" with options: Auto-detect, Advanced Mode, Smart Mode
- Two buttons at the bottom: "Cancel" (gray) and "Create" (green)

Startをクリックした後、「Create Task」というタイトルのダイアログボックスが表示されます。含まれるもの：
- 「Task Name」というラベルの付いたテキストフィールド（Webサイトドメインで自動入力）
- 入力したURL（編集可能）
- 「Scraping Mode」のドロップダウン、オプション：Auto-detect、Advanced Mode、Smart Mode
- 下部に2つのボタン：「Cancel」（グレー）と「Create」（緑）

4. Give your task a meaningful name (e.g., "Book Price Data")
   - タスクに意味のある名前を付ける（例：「Book Price Data」）

5. Select "Auto-detect" mode for beginners
   - 初心者向けに「Auto-detect」モードを選択

6. Click "Create"
   - 「Create」をクリック

7. Octoparse will load the webpage in a built-in browser
   - Octoparseは組み込みブラウザでWebページを読み込みます

**[SCREENSHOT 7: Web Page Loaded in Scraper]**
The interface is split into two main sections:
LEFT SIDE: Shows the actual webpage loaded in a browser-like view with a green overlay highlighting clickable elements
RIGHT SIDE: Shows a "Tips" panel with workflow steps and an empty "Data Preview" panel showing column headers
BOTTOM: A workflow panel showing boxes connected by arrows (Workflow visualization)
TOP TOOLBAR: Contains buttons for "Save," "Run," "Export," and workflow controls

インターフェースは2つの主要なセクションに分かれています：
左側：クリック可能な要素を強調表示する緑色のオーバーレイを持つブラウザのようなビューで読み込まれた実際のWebページを表示
右側：ワークフローステップを含む「Tips」パネルと、列ヘッダーを表示する空の「Data Preview」パネルを表示
下部：矢印で接続されたボックスを表示するワークフローパネル（ワークフローの視覚化）
上部ツールバー：「Save」、「Run」、「Export」、およびワークフローコントロールのボタンを含む

8. Click on data elements you want to extract (Octoparse will highlight them in green)
   - 抽出したいデータ要素をクリック（Octoparseは緑色で強調表示）

9. Octoparse auto-detects similar elements and suggests extraction patterns
   - Octoparseは類似の要素を自動検出し、抽出パターンを提案

10. Review the data preview on the right side
    - 右側のデータプレビューを確認

---

### D. Interface Overview | インターフェース概要

Understanding the main components of Octoparse's interface:

Octoparseのインターフェースの主要コンポーネントを理解する：

**[SCREENSHOT 8: Main Interface with Annotations]**
The complete interface with numbered annotations:

1. **TOP MENU BAR** (showing File, Edit, View, Tools, Help menus)
2. **TOOLBAR** with icons and labels:
   - Save (floppy disk icon)
   - Run (green play button)
   - Export (download icon)
   - Settings (gear icon)
3. **LEFT PANEL - WEB PAGE VIEW**
   - Browser-like display of target website
   - Green highlight overlays on scrapable elements
   - Navigation controls at top
4. **RIGHT PANEL - TOP SECTION**
   - "Tips" tab showing step-by-step guidance
   - "Action" tab for workflow customization
5. **RIGHT PANEL - BOTTOM SECTION**
   - "Data Preview" showing extracted data in table format
   - Columns: title, price, rating, etc.
6. **BOTTOM PANEL - WORKFLOW**
   - Visual workflow with connected boxes
   - Steps: "Open Web Page" → "Loop Item" → "Extract Data" → "Export"

番号付き注釈付きの完全なインターフェース：

1. **上部メニューバー**（File、Edit、View、Tools、Helpメニューを表示）
2. **ツールバー**アイコンとラベル付き：
   - Save（フロッピーディスクアイコン）
   - Run（緑色の再生ボタン）
   - Export（ダウンロードアイコン）
   - Settings（歯車アイコン）
3. **左パネル - Webページビュー**
   - ターゲットWebサイトのブラウザのような表示
   - スクレイピング可能な要素の緑色の強調表示オーバーレイ
   - 上部のナビゲーションコントロール
4. **右パネル - 上部セクション**
   - ステップバイステップのガイダンスを示す「Tips」タブ
   - ワークフローカスタマイズ用の「Action」タブ
5. **右パネル - 下部セクション**
   - テーブル形式で抽出されたデータを表示する「Data Preview」
   - 列：title、price、ratingなど
6. **下部パネル - ワークフロー**
   - 接続されたボックスを持つビジュアルワークフロー
   - ステップ：「Open Web Page」→「Loop Item」→「Extract Data」→「Export」

#### Key Components Explained:

- **Web Page View**: Interactive browser showing the target site
  - Webページビュー：ターゲットサイトを表示するインタラクティブブラウザ
- **Tips Panel**: Step-by-step guidance for building your scraper
  - Tipsパネル：スクレイパー構築のステップバイステップガイダンス
- **Data Preview**: Real-time preview of extracted data
  - データプレビュー：抽出されたデータのリアルタイムプレビュー
- **Workflow Panel**: Visual representation of scraping logic
  - ワークフローパネル：スクレイピングロジックの視覚的表現
- **Toolbar**: Quick access to save, run, and export functions
  - ツールバー：保存、実行、エクスポート機能への迅速なアクセス

---

## Tool 2: ParseHub

### Overview | 概要

ParseHub is a free web scraping tool that handles JavaScript-heavy websites well. It uses machine learning to identify patterns in web pages.

ParseHubは、JavaScriptの多いWebサイトをうまく処理する無料のWebスクレイピングツールです。Webページのパターンを識別するために機械学習を使用します。

**Best For**: JavaScript-heavy sites, complex pagination, AJAX content
**Difficulty Level**: Beginner to Intermediate
**Free Tier**: Yes (up to 5 projects, 200 pages per run)

---

### A. Installation and Access | インストールとアクセス

#### Where to Download
- Official Website: https://www.parsehub.com
- Supported Platforms: Windows, macOS, Linux (Web-based version also available)

#### Steps:

1. Visit https://www.parsehub.com
   - https://www.parsehub.comにアクセス

**[SCREENSHOT 9: ParseHub Homepage]**
The homepage features the ParseHub logo (a purple circular icon) in the top left. The main headline reads "Turn Any Website Into Spreadsheet" in large bold text. Below is explanatory text: "ParseHub is a free web scraper that works on any website." Two buttons are centered: "Get Started Free" (purple) and "Download App" (white with purple border). Below shows "No credit card required" text.

ホームページには、左上にParseHubロゴ（紫色の円形アイコン）があります。メインの見出しには「Turn Any Website Into Spreadsheet」と大きな太字で書かれています。下には説明文：「ParseHub is a free web scraper that works on any website.」があります。2つのボタンが中央に配置されています：「Get Started Free」（紫）と「Download App」（紫の境界線のある白）。下には「No credit card required」というテキストが表示されます。

2. Click "Download App" button
   - 「Download App」ボタンをクリック

3. Choose your operating system
   - オペレーティングシステムを選択

**[SCREENSHOT 10: Download Page]**
Three download options displayed horizontally:
- LEFT: Windows icon, "Download for Windows," minimum Windows 7
- CENTER: macOS icon, "Download for Mac," minimum macOS 10.10
- RIGHT: Linux icon, "Download for Linux," Ubuntu/Debian packages
Each has a large download button beneath. At the bottom: "Or use our Web App" link.

3つのダウンロードオプションが横に表示されます：
- 左：Windowsアイコン、「Download for Windows」、最小Windows 7
- 中央：macOSアイコン、「Download for Mac」、最小macOS 10.10
- 右：Linuxアイコン、「Download for Linux」、Ubuntu/Debianパッケージ
それぞれの下に大きなダウンロードボタンがあります。下部：「Or use our Web App」リンク。

4. Install the application:
   - アプリケーションをインストール：
   - Open the downloaded file
   - Follow installation prompts
   - Accept license agreement
   - Installation takes 1-2 minutes

#### System Requirements:

**Windows:**
- Windows 7 or later
- 1GB RAM minimum
- 200MB free disk space

**macOS:**
- macOS 10.10 (Yosemite) or later
- 1GB RAM minimum
- 200MB free disk space

---

### B. Account Creation | アカウント作成

#### Steps:

1. Launch ParseHub application
   - ParseHubアプリケーションを起動

**[SCREENSHOT 11: ParseHub Sign Up Screen]**
The screen shows the ParseHub logo at top center. Below are two options displayed as large cards:
LEFT CARD: "Sign up with Google" - shows Google logo, text "Quick sign up with your Google account"
RIGHT CARD: "Sign up with Email" - shows email icon, form fields for:
- Name (text input)
- Email (text input)
- Password (text input)
- Blue "Create Account" button
Bottom text: "Already have an account? Sign in"

画面の上部中央にParseHubロゴが表示されます。下には大きなカードとして表示される2つのオプションがあります：
左カード：「Sign up with Google」 - Googleロゴを表示、テキスト「Quick sign up with your Google account」
右カード：「Sign up with Email」 - メールアイコンを表示、フォームフィールド：
- Name（テキスト入力）
- Email（テキスト入力）
- Password（テキスト入力）
- 青い「Create Account」ボタン
下部テキスト：「Already have an account? Sign in」

2. Choose sign-up method:
   - サインアップ方法を選択：
   - **Option A**: Sign up with Google (easier, one click)
   - **Option B**: Sign up with email

3. If using email:
   - メールを使用する場合：
   - Enter your full name
   - Enter email address
   - Create a password (minimum 6 characters)
   - Click "Create Account"

4. Verify your email address (check inbox)
   - メールアドレスを確認（受信トレイを確認）

5. Complete the welcome survey (optional but recommended)
   - ウェルカムアンケートを完了（オプションですが推奨）

**[SCREENSHOT 12: Welcome Survey]**
A friendly survey screen with the title "Tell us about yourself" and three questions:
1. "What do you want to scrape?" - Dropdown menu (E-commerce, News, Social Media, Other)
2. "How much data do you need?" - Radio buttons (Small < 1000 rows, Medium 1000-10000, Large > 10000)
3. "Experience level?" - Radio buttons (Beginner, Intermediate, Advanced)
Buttons at bottom: "Skip" (gray) and "Continue" (purple)

「Tell us about yourself」というタイトルの親しみやすいアンケート画面と3つの質問：
1. 「What do you want to scrape?」 - ドロップダウンメニュー（E-commerce、News、Social Media、Other）
2. 「How much data do you need?」 - ラジオボタン（Small < 1000 rows、Medium 1000-10000、Large > 10000）
3. 「Experience level?」 - ラジオボタン（Beginner、Intermediate、Advanced）
下部のボタン：「Skip」（グレー）と「Continue」（紫）

---

### C. First Project Setup | 最初のプロジェクトセットアップ

#### Steps:

1. From the main dashboard, click "New Project"
   - メインダッシュボードから「New Project」をクリック

**[SCREENSHOT 13: New Project Dialog]**
A clean dialog box with:
- Title: "Create New Project"
- Large text input field labeled "Enter URL to scrape"
- Placeholder text: "https://example.com"
- Checkbox: "Enable JavaScript rendering" (checked by default)
- Two buttons: "Cancel" (white) and "Start Project" (purple)

クリーンなダイアログボックス：
- タイトル：「Create New Project」
- 「Enter URL to scrape」というラベルの大きなテキスト入力フィールド
- プレースホルダーテキスト：「https://example.com」
- チェックボックス：「Enable JavaScript rendering」（デフォルトでチェック）
- 2つのボタン：「Cancel」（白）と「Start Project」（紫）

2. Enter the URL of the website you want to scrape
   - スクレイピングしたいWebサイトのURLを入力

3. Keep "Enable JavaScript rendering" checked (recommended)
   - 「Enable JavaScript rendering」をチェックしたままにする（推奨）

4. Click "Start Project"
   - 「Start Project」をクリック

5. ParseHub loads the webpage
   - ParseHubがWebページを読み込む

**[SCREENSHOT 14: ParseHub Project Interface]**
The interface shows:
TOP: Toolbar with project name, "Run" button (green), "Get Data" button, "Save" button
LEFT SIDEBAR: Selection tools panel showing:
- "Select" tool (cursor icon) - selected
- "Relative Select" tool
- "Click" tool
- "Extract" tool
Each tool has a small icon and description text
CENTER: The target webpage rendered in a browser view
RIGHT SIDEBAR: "Selection List" panel (empty initially) and "Data Preview" panel below

インターフェースを表示：
上部：プロジェクト名、「Run」ボタン（緑）、「Get Data」ボタン、「Save」ボタンを含むツールバー
左サイドバー：選択ツールパネル、表示内容：
- 「Select」ツール（カーソルアイコン） - 選択済み
- 「Relative Select」ツール
- 「Click」ツール
- 「Extract」ツール
各ツールには小さなアイコンと説明テキストがあります
中央：ブラウザビューでレンダリングされたターゲットWebページ
右サイドバー：「Selection List」パネル（初期は空）と下の「Data Preview」パネル

6. Use the "Select" tool to click on data you want to extract
   - 「Select」ツールを使用して、抽出したいデータをクリック

7. ParseHub automatically selects similar elements (highlighted in green)
   - ParseHubは類似の要素を自動的に選択（緑色で強調表示）

8. Name your selection (e.g., "product_name")
   - 選択に名前を付ける（例：「product_name」）

9. Continue selecting additional data fields
   - 追加のデータフィールドを選択し続ける

---

### D. Interface Overview | インターフェース概要

**[SCREENSHOT 15: ParseHub Interface Components Annotated]**

1. **PROJECT TOOLBAR** (top of screen)
   - Project name (editable by clicking)
   - "Run" button - executes scraping
   - "Get Data" button - retrieves completed scrapes
   - "Save" button - saves current configuration
   - "Schedule" button - automate scraping

2. **LEFT TOOLS PANEL**
   - **Select Tool**: Click elements to extract
   - **Relative Select**: Select based on position
   - **Click Tool**: Simulate clicks (for pagination)
   - **Extract Tool**: Define extraction rules

3. **CENTER WEB VIEW**
   - Live rendering of target website
   - Selected elements highlighted in bright green
   - Interactive - can scroll and navigate

4. **RIGHT PANEL - SELECTIONS**
   - List of all selections made
   - Shows selection name and type
   - Can rename, edit, or delete selections

5. **RIGHT PANEL - DATA PREVIEW**
   - Table showing extracted data
   - Updates in real-time as you add selections
   - Shows field names and sample values

6. **BOTTOM STATUS BAR**
   - Shows number of items selected
   - Displays any warnings or errors

---

## Tool 3: Web Scraper (Browser Extension)

### Overview | 概要

Web Scraper is a browser extension for Chrome and Firefox. It's lightweight and perfect for simple scraping tasks directly in your browser.

Web Scraperは、ChromeとFirefox用のブラウザ拡張機能です。軽量で、ブラウザで直接行う簡単なスクレイピングタスクに最適です。

**Best For**: Quick scraping tasks, learning web scraping, simple data extraction
**Difficulty Level**: Beginner
**Free Tier**: Yes (completely free, but cloud scraping is paid)

---

### A. Installation and Access | インストールとアクセス

#### Where to Download
- Chrome Web Store: Search "Web Scraper"
- Firefox Add-ons: Search "Web Scraper"
- Official Site: https://webscraper.io

#### Steps for Chrome:

1. Open Google Chrome browser
   - Google Chromeブラウザを開く

2. Go to Chrome Web Store
   - Chrome Web Storeに移動

3. Search for "Web Scraper - Free Web Scraping"
   - 「Web Scraper - Free Web Scraping」を検索

**[SCREENSHOT 16: Chrome Web Store - Web Scraper]**
The Chrome Web Store page shows:
- Extension name: "Web Scraper - Free Web Scraping"
- Developer: webscraper.io
- Rating: 4.5 stars (with ~2000 reviews)
- Large blue "Add to Chrome" button in top right
- Screenshots of the extension interface
- Description: "Web Scraper extension can extract data from web pages..."
- Permission warnings listed below

Chrome Web Storeページを表示：
- 拡張機能名：「Web Scraper - Free Web Scraping」
- 開発者：webscraper.io
- 評価：4.5つ星（約2000件のレビュー）
- 右上の大きな青い「Add to Chrome」ボタン
- 拡張機能インターフェースのスクリーンショット
- 説明：「Web Scraper extension can extract data from web pages...」
- 下に記載された権限警告

4. Click "Add to Chrome" button
   - 「Add to Chrome」ボタンをクリック

5. Confirm by clicking "Add extension" in the popup
   - ポップアップで「Add extension」をクリックして確認

**[SCREENSHOT 17: Permission Confirmation Popup]**
A small popup window appears with:
- Title: "Add 'Web Scraper - Free Web Scraping'?"
- Text: "It can:"
  - Read and change all your data on the websites you visit
  - Display notifications
- Two buttons: "Cancel" (left) and "Add extension" (right, blue)

小さなポップアップウィンドウが表示されます：
- タイトル：「Add 'Web Scraper - Free Web Scraping'?」
- テキスト：「It can:」
  - 訪問したWebサイトのすべてのデータを読み取り、変更する
  - 通知を表示する
- 2つのボタン：「Cancel」（左）と「Add extension」（右、青）

6. Wait for installation (5-10 seconds)
   - インストールを待つ（5〜10秒）

7. You'll see a confirmation message "Web Scraper has been added to Chrome"
   - 「Web Scraper has been added to Chrome」という確認メッセージが表示されます

8. Pin the extension to your toolbar (recommended):
   - 拡張機能をツールバーにピン留め（推奨）：
   - Click the puzzle piece icon in Chrome toolbar
   - Find "Web Scraper" in the list
   - Click the pin icon next to it

---

### B. Account Creation | アカウント作成

**Good news**: Web Scraper browser extension doesn't require an account for basic use!
**良いニュース**: Web Scraperブラウザ拡張機能は、基本的な使用にアカウントは必要ありません！

However, if you want cloud scraping features:

ただし、クラウドスクレイピング機能が必要な場合：

1. Visit https://cloud.webscraper.io
2. Click "Sign Up"
3. Enter email and password
4. Verify email

For this course, the free browser extension (no account needed) is sufficient.

このコースでは、無料のブラウザ拡張機能（アカウント不要）で十分です。

---

### C. First Project Setup | 最初のプロジェクトセットアップ

#### Steps:

1. Navigate to the website you want to scrape
   - スクレイピングしたいWebサイトに移動

2. Open Chrome Developer Tools:
   - Chrome開発者ツールを開く：
   - Press F12, or
   - Right-click → "Inspect", or
   - Menu → More Tools → Developer Tools

**[SCREENSHOT 18: Opening Web Scraper Panel]**
The Chrome Developer Tools panel opens at the bottom or side of the browser. At the top of this panel, you'll see multiple tabs: "Elements," "Console," "Sources," "Network," etc. Scroll to the right to find "Web Scraper" tab (it may have a small icon next to it). The tab might be hidden in the ">>" overflow menu if your window is narrow.

Chrome開発者ツールパネルがブラウザの下部または側面に開きます。このパネルの上部には、複数のタブが表示されます：「Elements」、「Console」、「Sources」、「Network」など。右にスクロールして「Web Scraper」タブを見つけます（隣に小さなアイコンがある場合があります）。ウィンドウが狭い場合、タブは「>>」オーバーフローメニューに隠れている可能性があります。

3. Click on the "Web Scraper" tab
   - 「Web Scraper」タブをクリック

4. Click "Create new sitemap"
   - 「Create new sitemap」をクリック

**[SCREENSHOT 19: Create Sitemap Dialog]**
A form appears with:
- Title: "Create Sitemap"
- Field 1: "Sitemap name" (text input) - required
- Field 2: "Start URL(s)" (text area) - pre-filled with current page URL
- Note: "Add one URL per line for multiple start URLs"
- Two buttons at bottom: "Cancel" (gray) and "Create Sitemap" (green)

フォームが表示されます：
- タイトル：「Create Sitemap」
- フィールド1：「Sitemap name」（テキスト入力） - 必須
- フィールド2：「Start URL(s)」（テキストエリア） - 現在のページURLで事前入力
- 注意：「Add one URL per line for multiple start URLs」
- 下部に2つのボタン：「Cancel」（グレー）と「Create Sitemap」（緑）

5. Enter a name for your sitemap (e.g., "BookStore_Scraper")
   - サイトマップの名前を入力（例：「BookStore_Scraper」）

6. The start URL is automatically filled (current page)
   - 開始URLは自動的に入力されます（現在のページ）

7. Click "Create Sitemap"
   - 「Create Sitemap」をクリック

8. You'll see the sitemap editor interface
   - サイトマップエディターインターフェースが表示されます

**[SCREENSHOT 20: Sitemap Editor - Initial State]**
The Web Scraper panel now shows:
TOP: Sitemap name "BookStore_Scraper" with buttons: "Sitemap," "Selectors," "Scrape," "Browse," "Edit Metadata," "Export," "Delete"
LEFT SIDE: "Selectors" section showing:
- A tree structure with "_root" as the only item
- "Add new selector" button (green) at bottom
RIGHT SIDE: Currently empty, will show selector configuration when you add one

Web Scraperパネルに表示されます：
上部：サイトマップ名「BookStore_Scraper」、ボタン：「Sitemap」、「Selectors」、「Scrape」、「Browse」、「Edit Metadata」、「Export」、「Delete」
左側：「Selectors」セクションを表示：
- 唯一の項目として「_root」を含むツリー構造
- 下部に「Add new selector」ボタン（緑）
右側：現在は空、セレクターを追加すると、セレクター構成が表示されます

9. Click "Add new selector" to start defining what to scrape
   - 「Add new selector」をクリックして、スクレイピング対象の定義を開始

---

### D. Interface Overview | インターフェース概要

**[SCREENSHOT 21: Web Scraper Interface - Fully Annotated]**

The Web Scraper panel integrated into Chrome DevTools:

Chrome DevToolsに統合されたWeb Scraperパネル：

1. **TOP NAVIGATION TABS**
   - **Sitemap**: View/edit sitemap structure
   - **Selectors**: Define what data to extract
   - **Scrape**: Run the scraper
   - **Browse**: Preview scraping results
   - **Edit Metadata**: Configure sitemap settings
   - **Export**: Download data or sitemap config
   - **Delete**: Remove sitemap

2. **LEFT PANEL - SELECTOR TREE**
   - Hierarchical view of selectors
   - "_root" is the starting point
   - Child selectors appear as nested items
   - Can drag to reorder

3. **RIGHT PANEL - SELECTOR CONFIGURATION**
   Shows when a selector is selected:
   - **Id**: Unique name for this selector
   - **Type**: Dropdown (Text, Link, Image, Element, etc.)
   - **Selector**: CSS selector input field
   - **Multiple**: Checkbox (select multiple elements)
   - **Parent selectors**: Which selector this belongs to
   - **Save selector** button (green)
   - **Delete selector** button (red)

4. **ELEMENT SELECTION MODE**
   When configuring a selector:
   - Webpage becomes interactive with red highlighting
   - Click elements to select them
   - Selected elements show in green
   - "Done selecting" button appears

5. **DATA PREVIEW TABLE**
   After scraping:
   - Shows extracted data in tabular format
   - Column headers match selector IDs
   - Can sort and filter
   - Export button for CSV/JSON

---

## Common Installation Issues and Solutions | 一般的なインストールの問題と解決策

### Issue 1: Octoparse won't install on macOS
**Problem**: "Cannot install from unidentified developer"
**Solution**:
1. Go to System Preferences → Security & Privacy
2. Click "Open Anyway" for Octoparse
3. Retry installation

**問題**: 「未確認の開発者からインストールできません」
**解決策**:
1. システム環境設定→セキュリティとプライバシーに移動
2. Octoparseの「とにかく開く」をクリック
3. インストールを再試行

---

### Issue 2: ParseHub shows "Connection Error"
**Problem**: Cannot connect to ParseHub servers
**Solution**:
1. Check your internet connection
2. Disable VPN temporarily
3. Check firewall settings (allow ParseHub)
4. Try using the web-based version at cloud.parsehub.com

**問題**: ParseHubサーバーに接続できません
**解決策**:
1. インターネット接続を確認
2. VPNを一時的に無効にする
3. ファイアウォール設定を確認（ParseHubを許可）
4. cloud.parsehub.comでWebベースのバージョンを試す

---

### Issue 3: Web Scraper extension not appearing
**Problem**: Installed but can't find the Web Scraper tab
**Solution**:
1. Reload the webpage (F5)
2. Close and reopen Developer Tools
3. Look for ">>" button in DevTools tabs - Web Scraper might be hidden there
4. Uninstall and reinstall the extension

**問題**: インストールされていますが、Web Scraperタブが見つかりません
**解決策**:
1. Webページをリロード（F5）
2. 開発者ツールを閉じて再度開く
3. DevToolsタブの「>>」ボタンを探す - Web Scraperがそこに隠れている可能性があります
4. 拡張機能をアンインストールして再インストール

---

### Issue 4: All tools - Cannot scrape certain websites
**Problem**: Scraping fails or blocks access
**Solution**:
1. Check website's robots.txt file
2. Respect rate limits (don't scrape too fast)
3. Some sites actively block scrapers - this is normal
4. Try with a different website for practice
5. **Important**: Always review Terms of Service

**問題**: スクレイピングが失敗するか、アクセスがブロックされます
**解決策**:
1. WebサイトのBots.txtファイルを確認
2. レート制限を尊重（速すぎるスクレイピングを避ける）
3. 一部のサイトはスクレイパーを積極的にブロック - これは正常です
4. 練習用に別のWebサイトを試す
5. **重要**: 常に利用規約を確認

---

## Quick Start Checklist | クイックスタートチェックリスト

Use this checklist to verify your setup:

このチェックリストを使用してセットアップを確認します：

### Octoparse:
- [ ] Downloaded and installed application
- [ ] Created and verified account
- [ ] Opened application and logged in
- [ ] Created a test project with any URL
- [ ] Can see webpage loaded in scraper view
- [ ] Successfully selected at least one element

### ParseHub:
- [ ] Downloaded and installed application (or using web version)
- [ ] Created account (Google or email)
- [ ] Opened application and logged in
- [ ] Created a new project
- [ ] Can see selection tools on left panel
- [ ] Successfully selected at least one element

### Web Scraper:
- [ ] Installed browser extension in Chrome/Firefox
- [ ] Can see Web Scraper tab in Developer Tools
- [ ] Created a test sitemap
- [ ] Added at least one selector
- [ ] Can see element selection mode working
- [ ] Ran a test scrape with small data

---

## Recommended First Projects | 推奨される最初のプロジェクト

Practice with these beginner-friendly sites:

これらの初心者に優しいサイトで練習します：

1. **Books to Scrape** (練習用サイト)
   - URL: http://books.toscrape.com
   - Data: Book titles, prices, ratings
   - Why: Designed for scraping practice

2. **Quotes to Scrape** (引用練習サイト)
   - URL: http://quotes.toscrape.com
   - Data: Quotes, authors, tags
   - Why: Simple structure, good for beginners

3. **Simple Product List** (簡単な商品リスト)
   - Create your own or use test e-commerce sites
   - Data: Product names, prices
   - Why: Common use case

---

## Links to Official Documentation | 公式ドキュメントへのリンク

### Octoparse:
- User Manual: https://helpcenter.octoparse.com
- Video Tutorials: https://www.octoparse.com/tutorial
- Community Forum: https://community.octoparse.com

### ParseHub:
- Help Center: https://www.parsehub.com/docs
- Video Tutorials: https://www.youtube.com/c/ParseHub
- Community: https://community.parsehub.com

### Web Scraper:
- Documentation: https://webscraper.io/documentation
- Video Tutorials: https://webscraper.io/tutorials
- Forum: https://forum.webscraper.io

---

## Support and Troubleshooting | サポートとトラブルシューティング

If you encounter issues:

問題が発生した場合：

1. **Check official documentation** - Most common issues are documented
   - 公式ドキュメントを確認 - ほとんどの一般的な問題が文書化されています

2. **Search community forums** - Others may have faced similar issues
   - コミュニティフォーラムを検索 - 他の人が同様の問題に直面している可能性があります

3. **Update your tool** - Make sure you're using the latest version
   - ツールを更新 - 最新バージョンを使用していることを確認

4. **Contact course instructor** - Bring questions to office hours
   - コースインストラクターに連絡 - オフィスアワーに質問を持参

5. **Try alternative tools** - If one doesn't work, try another
   - 代替ツールを試す - 1つが機能しない場合は、別のツールを試す

---

**Created for ML-101: Week 5**
*This guide supports your learning in Week 5's web scraping and data collection topics.*

**Remember**: Practice with legal, ethical scraping. Always check a website's Terms of Service and robots.txt file before scraping. When in doubt, ask for permission!
