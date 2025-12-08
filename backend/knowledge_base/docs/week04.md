---
layout: default
title: Week 4 - Introduction to Web Scraping
description: Learn ethical web scraping fundamentals and HTML basics
---

# 🌐 Week 4: Introduction to Web Scraping
# 第4週：Webスクレイピング入門

[← Week 3](week03.md) | [Week 5 →](week05.md) | [Back to Course Overview](weeks-1-5.md)

---

## 🎯 Learning Objectives

By the end of this week, you will be able to:

- **Understand** what web scraping is and how it works
- **Recognize** the ethical and legal considerations of scraping
- **Identify** HTML structure and elements on web pages
- **Navigate** robots.txt files to check scraping permissions
- **Evaluate** websites as potential data sources for ML projects

学習目標：
- Webスクレイピングとは何か、どのように機能するかを理解する
- スクレイピングの倫理的および法的考慮事項を認識する
- Webページ上のHTML構造と要素を特定する
- スクレイピング許可を確認するためにrobots.txtファイルをナビゲートする
- MLプロジェクトの潜在的なデータソースとしてウェブサイトを評価する

---

## 📖 Topics Covered

### What is Web Scraping?
**Web Scraping = Automatically collecting data from websites**

**The Problem**:
- ML needs lots of data
- Not all data comes in downloadable files
- Manually copying data is slow and tedious

**The Solution**:
- Scraping automates data collection
- Organizes information for analysis
- Makes large-scale data gathering possible

### How Web Scraping Works
```
1. Send Request → Website
2. Receive HTML → Raw page code
3. Parse HTML → Extract data you need
4. Save Data → CSV, database, etc.
```

### Ethical & Legal Considerations
**Before You Scrape, Always Check**:
- ✅ **robots.txt** - Does the site allow scraping?
- ✅ **Terms of Service** - Are there restrictions?
- ✅ **Personal Data** - Avoid collecting private information
- ✅ **Rate Limiting** - Don't overload servers (be respectful!)

**Ethical Scraping Principles**:
- 🤝 Respect website resources (don't make too many requests)
- 📋 Follow robots.txt guidelines
- 🔒 Don't scrape personal/private data
- 💼 Give credit to data sources
- ⚖️ Understand copyright implications

### HTML Basics for Scraping
```html
<!-- HTML Structure -->
<div class="company">
  <h2>Acme Corporation</h2>
  <p class="industry">Technology</p>
  <span class="employees">500 employees</span>
</div>
```

**Key HTML Elements**:
- `<div>` - Containers/sections
- `<h1>`, `<h2>` - Headings
- `<p>` - Paragraphs
- `<span>` - Inline text
- `<a href="">` - Links
- `class` and `id` - Identifiers for styling and selection

---

## 📝 Materials & Links

### Lecture Slides
- 📊 [Week 4 Lecture: Introduction to Web Scraping](../lectures/week04-web-scraping-intro-slides.md)
- **Duration**: 15-20 minutes
- **Format**: Bilingual (English/Japanese)

### Activity Plan
- 🎮 [Week 4 Hands-On Activity: HTML & Ethical Scraping](../activities/week-plans/week04-web-scraping-intro-activity.md)
- **Duration**: 40-60 minutes
- **Guided by**: ML-101 Bot

### Assignment
- 📋 [Week 4 Assignment: Web Scraping Ethics & HTML Analysis](../assessments/week04-assignment.md)
- **Weight**: Part of 40% Weekly Activities grade
- **Due**: End of Week 4 class session

### Handouts & Resources
- 📖 [HTML Basics for Scraping](../resources/week04-materials/html-basics-for-scraping.md)
- 🤖 [Robots.txt Guide](../resources/week04-materials/robots-txt-guide.md)
- ✅ [Ethical Scraping Checklist](../resources/week04-materials/ethical-scraping-checklist.md)
- 📋 [Sample robots.txt Examples](../resources/week04-materials/sample-robots-txt-examples.md)

### Practice Files
- 🌐 [Sample Simple Web Page (HTML)](../resources/week04-materials/sample-simple-page.html)
- 🏢 [Sample Company Listing (HTML)](../resources/week04-materials/sample-company-listing.html)

---

## 🎮 Activity Details

### What You'll Do (40-60 minutes)

**With ML-101 Bot Guidance:**

1. **Understand Web Scraping Ethics** (15 min)
   - Review ethical scraping principles
   - Learn about robots.txt and Terms of Service
   - Discuss legal considerations and best practices
   - Complete ethical scenarios quiz

2. **Explore HTML Structure** (15 min)
   - View page source code in browser
   - Identify HTML elements (divs, headings, paragraphs)
   - Understand classes and IDs
   - Practice finding specific data in HTML

3. **Analyze robots.txt Files** (10 min)
   - Access and read robots.txt files
   - Understand Allow/Disallow rules
   - Identify which pages can be scraped
   - Check robots.txt for job boards

4. **Evaluate Scraping Targets** (15 min)
   - Identify potential sources for company data
   - Assess ethical and legal permissions
   - Analyze HTML structure complexity
   - Document findings using evaluation template

5. **Plan Project Scraping Strategy** (5 min)
   - Determine what company data to collect
   - Choose appropriate target websites
   - Create ethical scraping plan for project

---

## 📅 Due Dates

**Assignment Submission**: End of Week 4 class session

**What to Submit**:
1. **Ethical Scraping Analysis**
   - Review of 3 websites for scraping feasibility
   - robots.txt analysis for each
   - Ethical considerations documented
   - Recommendation: Scrapable or not?

2. **HTML Structure Analysis**
   - Analyze sample company listing HTML
   - Identify where key data is located (company name, industry, etc.)
   - Explain how to extract each piece of information
   - Visual annotations or descriptions

3. **Project Scraping Plan**
   - Target website(s) for company data
   - Data points to collect
   - Ethical compliance checklist completed
   - Anticipated challenges and solutions

**Format**: PDF or Word document with screenshots
**File naming**: `Week04_[YourName]_ScrapingEthics.pdf`
**Submit via**: ML-101 Bot Portal

---

## 🤖 ML-101 Bot Portal

**Access the ML-101 Bot**: [Bot Portal Link - To Be Provided]

**This Week's Bot Features**:
- 🤖 Explains robots.txt rules and permissions
- 🌐 Helps analyze HTML structure
- ⚖️ Discusses ethical scraping scenarios
- 🔍 Guides website evaluation for scraping
- 🗣️ Answers scraping questions in English or Japanese

**Bot Can Help With**:
- "Is it ethical to scrape this website?"
- "How do I read a robots.txt file?"
- "Where is the company name in this HTML?"
- "What does 'Disallow: /' mean in robots.txt?"

---

## 💡 Tips for Success

### Checking if Scraping is Allowed
```
Step 1: Check robots.txt
→ Add /robots.txt to website URL
→ Example: https://example.com/robots.txt

Step 2: Read the rules
Disallow: /private/  ← Don't scrape this section
Allow: /public/      ← OK to scrape this section

Step 3: Follow the rules!
→ Respect what the website allows
```

### Viewing HTML Source Code
**In Any Browser**:
- Right-click on page → "View Page Source"
- Or use keyboard shortcut: `Ctrl+U` (Windows) or `Cmd+Option+U` (Mac)
- Use "Inspect Element" to see specific section HTML

### Finding Data in HTML
**Look for patterns**:
```html
<!-- Company names often in headings -->
<h2 class="company-name">Acme Corp</h2>

<!-- Industry might be in specific class -->
<span class="industry">Technology</span>

<!-- Numbers might have data attributes -->
<div class="size" data-employees="500">500 employees</div>
```

### Common Ethical Questions
**Q**: Can I scrape publicly visible data?
**A**: Usually yes, BUT check robots.txt and Terms of Service first

**Q**: How many requests is too many?
**A**: Space requests 1-2 seconds apart minimum (respect the server!)

**Q**: Do I need permission to scrape?
**A**: Follow robots.txt. If unclear, contact website owner

---

## 🔗 Real-World Connection

**Why This Matters**:
Web scraping is how you'll collect data for the course project and many real-world ML applications:

- 🏢 **Job boards**: Collect company information (mynavi.jp, Indeed)
- 💼 **Market research**: Gather competitor data
- 📊 **Price monitoring**: Track product prices over time
- 📰 **News analysis**: Collect articles for sentiment analysis

**For the Course Project**:
You'll scrape company data from job sites to:
- Collect company descriptions
- Gather industry information
- Build your training dataset
- Create personalized company recommendations

**Ethical scraping = Sustainable scraping**. Do it right, and websites won't block you!

---

## 📚 Additional Resources

### Reference Guides
- [HTML Basics for Scraping](../resources/week04-materials/html-basics-for-scraping.md) - Essential HTML knowledge
- [Robots.txt Guide](../resources/week04-materials/robots-txt-guide.md) - How to read and follow robots.txt
- [Ethical Scraping Checklist](../resources/week04-materials/ethical-scraping-checklist.md) - Use before every scraping project

### Practice Files
- [Sample Simple Page](../resources/week04-materials/sample-simple-page.html) - Practice HTML analysis
- [Sample Company Listing](../resources/week04-materials/sample-company-listing.html) - Real-world example
- [robots.txt Examples](../resources/week04-materials/sample-robots-txt-examples.md) - Various scenarios

### External Resources (Optional)
- [W3Schools HTML Tutorial](https://www.w3schools.com/html/) - Learn more HTML
- [Google's robots.txt Specification](https://developers.google.com/search/docs/advanced/robots/intro)

---

## 🔗 Quick Navigation

| Previous Week | Next Week | All Weeks |
|--------------|-----------|-----------|
| [← Week 3: Python & Colab](week03.md) | [Week 5: No-Code Scraping →](week05.md) | [Course Overview](weeks-1-5.md) |

---

## ❓ Need Help?

**During Class**:
- Use ML-101 Bot to check ethical scenarios
- Ask instructor about specific websites you want to scrape
- Discuss HTML analysis with classmates

**Outside Class**:
- ML-101 Bot Portal (available 24/7)
- Email instructor: [To Be Provided]
- Office hours: [To Be Provided]

**Common Questions**:
- **Q**: Is it legal to scrape websites in Japan?
  **A**: Generally yes for public data, but always check Terms of Service and robots.txt

- **Q**: What if a site has no robots.txt file?
  **A**: No robots.txt ≠ unlimited scraping. Still be respectful and follow ToS

- **Q**: Can I scrape mynavi.jp for the project?
  **A**: Check their robots.txt first, then we'll discuss as a class

---

**🌐 Ready to Learn Ethical Scraping?**

1. Review the [lecture slides](../lectures/week04-web-scraping-intro-slides.md)
2. Read the [Ethical Scraping Checklist](../resources/week04-materials/ethical-scraping-checklist.md)
3. Practice with [sample HTML files](../resources/week04-materials/)
4. Complete the [ML-101 Bot activity](#)
5. Submit the [assignment](../assessments/week04-assignment.md)

**Remember**: Ethical scraping is ESSENTIAL. Respect websites, and they'll respect you back! ⚖️

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#week-4-introduction-to-web-scraping)
