---
layout: default
title: Weeks 6-14 - Advanced ML & Project Development
description: Complete guide to advanced machine learning topics and final project
---

# ML-101: Weeks 6-14 Overview
# ML-101：第6-14週概要

**Advanced Topics & Project Development**
**高度なトピックとプロジェクト開発**

---

## Course Arc: Weeks 6-14

### Phase 1: Data to Features (Weeks 6-9)
**Goal:** Transform raw company data into ML-ready features
**目標:** 生の企業データをML対応の特徴に変換

- **Week 6**: [Text Mining & Feature Extraction](week06.md) - Transform text to numbers
- **Week 7**: [Data Cleaning & Preparation](week07.md) - Handle quality issues
- **Week 8**: [Missing Data Handling](week08.md) - Deal with incomplete data
- **Week 9**: [Feature Engineering](week09.md) - Create powerful features

### Phase 2: Features to Models (Weeks 10-12)
**Goal:** Train, optimize, and evaluate classification models
**目標:** 分類モデルを訓練、最適化、評価

- **Week 10**: [Classification Concepts](week10.md) - Implement classifiers
- **Week 11**: [Model Training & Optimization](week11.md) - Tune for performance
- **Week 12**: [Model Evaluation & Interpretation](week12.md) - Understand results

### Phase 3: Integration & Presentation (Weeks 13-14)
**Goal:** Build complete system and present results
**目標:** 完全なシステムを構築して結果を発表

- **Week 13**: [Final Project Development](week13.md) - Integrate everything
- **Week 14**: [Final Presentations](week14.md) - Share your work

---

## Weekly Structure

Each week follows the same format:
各週は同じ形式に従います：

### 📚 Short Lecture (15-20 minutes)
- Introduce key concepts
- Provide theoretical foundation
- Connect to real-world applications
- Preview hands-on activity

### 💻 Long Activity (40-60 minutes)
- Guided by ML-101 Bot
- Hands-on implementation
- Apply concepts to your company dataset
- Build toward final project

### 📝 Weekly Assignment
- Document your work
- Demonstrate understanding
- Receive automated feedback
- Track progress

---

## Learning Path

### Technical Skills You'll Master

**Data Processing:**
- Text preprocessing and tokenization
- Missing data imputation
- Outlier detection and treatment
- Feature scaling and encoding
- Feature engineering and selection

**Machine Learning:**
- Classification algorithms (Logistic Regression, Decision Trees, SVM)
- Model training and validation
- Hyperparameter optimization
- Cross-validation techniques
- Performance evaluation metrics

**Software Engineering:**
- Building ML pipelines
- Code documentation
- Version control best practices
- Reusable and modular code
- Professional project structure

**Communication:**
- Technical writing
- Data visualization
- Presentation skills
- Explaining ML to non-technical audiences

---

## Your Final Project

### The Complete ML System

By Week 14, you will have built:

**1. Data Collection Module**
```
Web scraping → Raw company data
```

**2. Preprocessing Pipeline**
```
Raw data → Cleaned data → Features
```

**3. ML Model**
```
Features + Labels → Trained classifier
```

**4. Prediction Interface**
```
New company → Recommendation (Interested/Not Interested)
```

### Real-World Application

Your system can help with actual job searches:
- Collect companies from job boards
- Classify based on your career preferences
- Get recommendations for where to apply
- Save time in job search process

---

## Week-by-Week Details

### Week 6: Text Mining & Feature Extraction
**Focus:** Convert company descriptions to numerical features

**Key Topics:**
- Text preprocessing pipeline
- Bag of Words and TF-IDF
- Japanese text processing (MeCab/Janome)
- Feature extraction with sklearn

**Deliverables:**
- Preprocessed dataset with TF-IDF features
- Text processing code
- Feature analysis report

**Why It Matters:** Text features are the primary input for classifying companies by industry/type.

---

### Week 7: Data Cleaning & Preparation
**Focus:** Handle data quality issues

**Key Topics:**
- Missing data detection
- Outlier identification
- Feature scaling (standardization, normalization)
- Categorical encoding

**Deliverables:**
- Clean dataset
- Preprocessing pipeline
- Data quality report

**Why It Matters:** Clean data leads to better model performance.

---

### Week 8: Missing Data Handling
**Focus:** Advanced imputation techniques

**Key Topics:**
- Missing data mechanisms (MCAR, MAR, MNAR)
- Simple imputation (mean, median, mode)
- Advanced imputation (KNN, iterative)
- Impact analysis

**Deliverables:**
- Imputed dataset
- Comparison of imputation methods
- Impact on model performance

**Why It Matters:** Real-world data is always incomplete - you must handle it properly.

---

### Week 9: Feature Engineering
**Focus:** Create powerful features for classification

**Key Topics:**
- Feature creation (interaction, polynomial)
- Feature transformation (log, power)
- Feature selection (filter, wrapper, embedded)
- Domain-specific features

**Deliverables:**
- Engineered features
- Feature importance analysis
- Final feature set for modeling

**Why It Matters:** Good features often matter more than algorithm choice.

---

### Week 10: Classification Concepts
**Focus:** Understand and implement classifiers

**Key Topics:**
- Logistic Regression
- Decision Trees
- Support Vector Machines
- Evaluation metrics (accuracy, precision, recall, F1)

**Deliverables:**
- Multiple classifiers implemented
- Performance comparison
- Best algorithm selection

**Why It Matters:** Different algorithms have different strengths - choose wisely.

---

### Week 11: Model Training & Optimization
**Focus:** Optimize model performance

**Key Topics:**
- Hyperparameter tuning (Grid Search, Random Search)
- Cross-validation
- Regularization (L1, L2)
- Overfitting prevention

**Deliverables:**
- Optimized model
- Tuning results
- Cross-validation scores

**Why It Matters:** Default parameters rarely give best performance.

---

### Week 12: Model Evaluation & Interpretation
**Focus:** Understand what your model learned

**Key Topics:**
- Comprehensive evaluation metrics
- Confusion matrix analysis
- Feature importance
- Error analysis

**Deliverables:**
- Evaluation report
- Feature importance visualization
- Misclassification analysis

**Why It Matters:** You must understand and explain your model's decisions.

---

### Week 13: Final Project Development
**Focus:** Integrate all components

**Key Topics:**
- End-to-end pipeline integration
- Code organization and documentation
- Testing and validation
- Presentation preparation

**Deliverables:**
- Complete ML system
- Project report
- Presentation slides

**Why It Matters:** Real ML projects require integration of many components.

---

### Week 14: Final Presentations
**Focus:** Share your work

**Activities:**
- 10-15 minute presentations
- Live system demonstrations
- Q&A sessions
- Peer feedback
- Course reflection

**Deliverables:**
- Presentation
- Final report
- Code repository
- Learning reflection essay

**Why It Matters:** Communication is a critical ML skill.

---

## Grading Breakdown

### Weekly Activities (40%)
- Weeks 6-12: Assignments and deliverables
- Completion and quality of work
- Bot interactions and engagement

### Bot Assessments (15%)
- Conversational quizzes
- Concept understanding checks
- Progress tracking

### Final Project (35%)
- Technical implementation (40%)
- Presentation (30%)
- Documentation (20%)
- Reflection (10%)

### Participation (10%)
- Class engagement
- Questions and discussion
- Peer collaboration

---

## Success Strategies

### Technical Excellence
✅ **Start early** on assignments
✅ **Test incrementally** - don't write all code at once
✅ **Use version control** (Git) for your code
✅ **Document as you go** - don't wait until the end
✅ **Ask questions** when stuck - bot and instructor are here to help

### Learning Deeply
✅ **Understand concepts** not just code
✅ **Experiment** with different approaches
✅ **Analyze results** critically
✅ **Connect theory** to practice
✅ **Reflect** on what you learn

### Project Management
✅ **Track progress** weekly
✅ **Build iteratively** - improve over time
✅ **Keep backups** of data and code
✅ **Plan presentation** early
✅ **Practice demo** multiple times

---

## Resources

### Course Materials
- [Week 6 Materials](week06.md) - Text mining resources
- [Week 7 Materials](week07.md) - Data cleaning guides
- [Week 8 Materials](week08.md) - Missing data techniques
- [Week 9 Materials](week09.md) - Feature engineering examples
- [Week 10 Materials](week10.md) - Classification tutorials
- [Week 11 Materials](week11.md) - Optimization guides
- [Week 12 Materials](week12.md) - Evaluation resources
- [Week 13 Materials](week13.md) - Project templates
- [Week 14 Materials](week14.md) - Presentation guidelines

### External Resources

**Python & ML Libraries:**
- scikit-learn documentation
- pandas documentation
- NumPy documentation
- Matplotlib/Seaborn tutorials

**Japanese Text Processing:**
- MeCab documentation
- Janome tutorials
- Japanese NLP resources

**ML Learning:**
- Kaggle Learn courses
- Google ML Crash Course
- Fast.ai practical ML
- Andrew Ng's Coursera course

---

## Common Questions

**Q: Is the course too technical for beginners?**
A: No! We start from basics and build up gradually. The bot provides 24/7 support.

**Q: Do I need to be good at programming?**
A: Basic Python knowledge helps, but we provide code examples and skeleton code.

**Q: Can I use my own dataset instead of companies?**
A: Discuss with instructor - the key is applying classification to text data.

**Q: What if I fall behind?**
A: Contact instructor early. The bot can help you catch up. Late policies are flexible for valid reasons.

**Q: How much time per week?**
A: 2-3 hours in class + 2-3 hours outside class for assignments.

**Q: Can I work in groups?**
A: Discuss ideas together, but code and deliverables must be individual work.

---

## Looking Ahead

### After ML-101

**Skills You'll Have:**
- Build complete ML systems from scratch
- Process and prepare real-world data
- Train and evaluate classification models
- Present technical projects professionally
- Continue learning ML independently

**Next Steps:**
- Advanced ML courses (deep learning, reinforcement learning)
- Kaggle competitions for practice
- Apply ML to your research or work
- Contribute to ML open source projects
- Attend ML conferences and meetups

**Career Opportunities:**
- Data Scientist
- ML Engineer
- Data Analyst
- Research positions with ML components
- Consulting roles

---

## Need Help?

### During Weeks 6-14

**Technical Issues:**
- ML-101 Bot (24/7 support)
- Office hours
- Email instructor

**Conceptual Questions:**
- Ask in class
- Bot explanations
- Study groups

**Project Guidance:**
- Bot project feedback
- Instructor consultations
- Peer review sessions

---

## Final Thoughts

Weeks 6-14 represent the core ML journey:
- Transform data into features
- Train models to make predictions
- Evaluate and interpret results
- Build complete systems
- Communicate findings

**Remember:**
- Learning ML is iterative - mistakes are part of the process
- Focus on understanding, not just completing assignments
- Your final project should reflect YOUR interests and preferences
- The skills you build here extend far beyond this course

**Let's build amazing ML systems together!**

---

[← Back to Weeks 1-5](weeks-1-5.md) | [Start Week 6 →](week06.md)

---

*Generated for ML-101: Machine Learning and Intelligence*
*Course by Yuri Tijerino • Built with BMad BotEdu Method*

[↑ Back to Top](#ml-101-weeks-6-14-overview)
