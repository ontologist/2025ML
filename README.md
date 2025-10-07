# Machine Learning and Intelligence Course
## Kwansei Gakuin University - Spring 2025

[![Course Status](https://img.shields.io/badge/Status-In%20Development-yellow.svg)](https://github.com/your-repo/2025ML)
[![Python Version](https://img.shields.io/badge/Python-3.13.7-blue.svg)](https://python.org)
[![License](https://img.shields.io/badge/License-Educational-green.svg)](LICENSE)

### Course Overview

This repository contains the complete curriculum, materials, and AI-powered tutoring system for the **Machine Learning and Intelligence** course at Kwansei Gakuin University's School of Policy Studies, Department of Applied Informatics.

The course provides a hands-on introduction to machine learning workflows, from data collection to working classifiers, with a special focus on real-world applications using Japanese job market data from mynavi.jp.

### 🎯 Course Objectives

By the end of this course, students will be able to:

1. **Understand ML Fundamentals**: Master core machine learning concepts and algorithms
2. **Data Pipeline Mastery**: Collect, clean, preprocess, and explore datasets effectively  
3. **Model Development**: Build, train, and evaluate various ML models
4. **Text Mining Skills**: Extract features from text data and perform classification
5. **Real-world Application**: Apply ML techniques to solve practical problems
6. **AI Interaction**: Effectively use conversational AI for learning and assessment

### 🏗️ Project Structure

```
2025ML/
├── .bmad-core/                 # BMad framework configuration
│   ├── agents/                # AI agent definitions
│   ├── workflows/             # Development workflows
│   ├── checklists/            # Course development checklists
│   └── core-config.yml        # Core configuration
├── curriculum/                # Course curriculum and syllabus
├── lectures/                  # Lecture materials and slides
├── activities/                # Hands-on exercises and skeleton code
├── resources/                 # Additional learning resources
├── assessments/               # Assessment materials and rubrics
├── bot-config/               # AI tutoring bot configuration
└── README.md                 # This file
```

### 📚 Course Content

#### 12-Week Curriculum

| Week | Topic | Key Focus |
|------|-------|-----------|
| 1 | Introduction to ML & Environment Setup | Foundations & Tools |
| 2 | Python for Data Science | Programming fundamentals |
| 3 | Data Collection & Web Scraping | mynavi.jp scraper development |
| 4 | Data Preprocessing & EDA | Data cleaning & exploration |
| 5 | Supervised Learning - Classification | ML algorithms |
| 6 | Text Mining & Feature Extraction | NLP techniques |
| 7 | Model Evaluation & Selection | Performance metrics |
| 8 | Advanced Classification Techniques | Ensemble methods |
| 9 | Midterm Project | Integration & presentation |
| 10 | Final Project - Data Collection | mynavi.jp data gathering |
| 11 | Final Project - Model Training | Classifier development |
| 12 | Final Project - Evaluation & Presentation | Results & insights |

#### Special Features

- **🤖 AI Tutoring Bot**: 24/7 conversational AI assistant
- **📝 Skeleton Code Approach**: Fill-in-the-blank templates for all exercises
- **🌐 Real-world Project**: mynavi.jp job preference classifier
- **📊 Interactive Assessments**: AI-conducted quizzes and evaluations
- **🎓 Personalized Learning**: Adaptive content based on student progress

### 🚀 Getting Started

#### Prerequisites

- Python 3.13.7 or higher
- Conda package manager
- Basic programming knowledge (Python recommended)
- Web browser for AI bot interaction

#### Environment Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/2025ML.git
   cd 2025ML
   ```

2. **Create and activate the conda environment**:
   ```bash
   conda create --name 2025ml python=3.13.7 -y
   conda activate 2025ml
   ```

3. **Install required packages**:
   ```bash
   pip install pandas numpy scikit-learn matplotlib seaborn requests beautifulsoup4 jupyter
   ```

4. **Verify installation**:
   ```bash
   python activities/week1_environment_setup.py
   ```

#### Using the AI Tutoring Bot

The course includes a sophisticated AI tutoring bot that provides:

- **24/7 Learning Support**: Always available for questions and guidance
- **Interactive Assessments**: Conversational quizzes and evaluations
- **Code Assistance**: Help with debugging and optimization
- **Personalized Feedback**: Adaptive learning based on your progress

Access the bot through the course portal or integrated development environment.

### 📖 Learning Approach

#### Skeleton Code Philosophy

All programming exercises use a **skeleton code approach**:

- ✅ Complete code structure provided
- ✅ Comprehensive comments and documentation
- ✅ Fill-in-the-blank exercises for key concepts
- ✅ Focus on understanding rather than syntax
- ✅ Gradual complexity increase

#### Example Skeleton Code

```python
def extract_company_info(soup):
    """
    Extract company information from a company page.
    TODO: Complete this function by filling in the blanks.
    """
    company_info = {}
    
    # TODO: Extract company name
    name_element = soup.find('h1', class_='company-name')
    if name_element:
        company_info['company_name'] = name_element.get_text(strip=True)
    else:
        company_info['company_name'] = "Unknown"
    
    # TODO: Extract company description
    # Your code here...
    
    return company_info
```

### 🎯 Final Project: mynavi.jp Job Classifier

The culminating project involves:

1. **Data Collection**: Scraping company information from mynavi.jp
2. **Manual Classification**: Labeling a subset of companies based on student preferences
3. **Feature Extraction**: Using text mining to extract meaningful features
4. **Model Training**: Building a classifier to predict job preferences
5. **Evaluation**: Testing the model on new company descriptions

This real-world project demonstrates the complete ML workflow while providing practical value for students' career planning.

### 📊 Assessment Framework

#### Assessment Types

- **Weekly Assignments** (25%): Hands-on exercises with skeleton code
- **Midterm Project** (20%): Integration of concepts learned
- **Final Project** (30%): mynavi.jp classifier development
- **Participation & AI Interactions** (15%): Engagement with AI tutor
- **Quizzes & Assessments** (10%): AI-conducted evaluations

#### AI-Enhanced Assessment

The AI tutoring bot conducts assessments through:

- **Interactive Quizzes**: Adaptive difficulty based on performance
- **Code Review**: Automated feedback on implementations
- **Conversational Exams**: Natural language evaluation
- **Progress Tracking**: Continuous learning analytics

### 🛠️ Development Framework

This course is developed using the **BMad Method**, a framework for agentic planning and context-aware development:

- **Structured Workflows**: Systematic course development process
- **AI Agent Integration**: Intelligent tutoring and assessment
- **Quality Assurance**: Comprehensive testing and validation
- **Continuous Improvement**: Regular updates based on feedback

### 🤝 Contributing

This course is designed for educational use. Contributions are welcome in the following areas:

- **Content Improvements**: Enhanced explanations and examples
- **Skeleton Code**: Additional exercises and templates
- **AI Bot Enhancement**: Improved tutoring capabilities
- **Assessment Tools**: New evaluation methods
- **Documentation**: Better guides and resources

### 📄 License

This project is licensed under an Educational License - see the [LICENSE](LICENSE) file for details.

### 🏫 Institution Information

- **University**: Kwansei Gakuin University
- **School**: School of Policy Studies
- **Department**: Applied Informatics
- **Semester**: Spring 2025
- **Credits**: 3

### 📞 Support

For technical support or questions:

- **AI Tutoring Bot**: Available 24/7 through the course portal
- **Instructor Office Hours**: Weekly scheduled sessions
- **Course Forum**: Collaborative discussion platform
- **Technical Support**: Course-specific help desk

### 🙏 Acknowledgments

- Kwansei Gakuin University for supporting this innovative course
- BMad Method framework for structured development approach
- Open source ML libraries (scikit-learn, pandas, numpy, etc.)
- mynavi.jp for providing real-world data source
- Students and instructors for valuable feedback

---

**Ready to start your machine learning journey?** 

Begin with the environment setup in `activities/week1_environment_setup.py` and let the AI tutoring bot guide you through this comprehensive learning experience!

*Last updated: January 2025*