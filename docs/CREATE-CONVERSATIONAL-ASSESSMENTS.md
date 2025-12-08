# Creating Conversational Assessments for Your Course

## Overview

Conversational assessments are interview-style quizzes where the bot asks questions conversationally, evaluates responses, provides immediate feedback, and adapts follow-up questions based on student answers.

## How It Works

1. **Student initiates assessment** (or instructor assigns one)
2. **Bot conducts structured interview** with questions
3. **Student responds** naturally in conversation
4. **Bot evaluates** response and provides feedback
5. **Bot asks follow-ups** based on understanding level
6. **Assessment results** are recorded and analyzed

---

## Quick Start: Create an Assessment

### Option 1: Simple Conversation-Based (Current System)

**Use the existing chat interface** with a structured prompt. The bot will conduct the assessment conversationally.

**Example: Start a Week 6 Assessment**

Ask the bot:
```
"Let's do a Week 6 assessment. Please ask me questions about data collection and missing data. Start with 3 questions and give me feedback on each answer."
```

The bot will:
- Ask questions conversationally
- Evaluate your responses
- Provide feedback
- Ask follow-up questions

### Option 2: Create Assessment Templates (Recommended)

Create assessment question files that the bot can use.

---

## Creating Assessment Question Files

### Step 1: Create Assessment Directory Structure

```
assessments/
├── conversational/
│   ├── week01-foundations.yaml
│   ├── week02-data-types.yaml
│   ├── week06-data-collection.yaml
│   └── week12-model-evaluation.yaml
└── templates/
    └── assessment-template.yaml
```

### Step 2: Create Assessment YAML File

**Example: `assessments/conversational/week06-data-collection.yaml`**

```yaml
assessment:
  id: week06-data-collection
  title: "Week 6: Data Collection Assessment"
  description: "Assessment on data collection, web scraping, and handling missing data"
  duration_minutes: 15
  difficulty: intermediate
  
questions:
  - id: q1
    type: scenario-based
    question: |
      You've collected data from 30 companies, but notice that 5 companies 
      are missing their 'Industry' field. What should you do?
    expected_concepts:
      - data quality
      - missing data handling
      - data collection strategies
    follow_up_if_partial: |
      What if you had 1000 companies with missing industries? 
      Would manual research still be practical?
    follow_up_if_correct: |
      Can you think of an automated approach that might work?
    evaluation_criteria:
      - mentions checking data quality
      - considers scalability
      - suggests automated solutions
      - understands practical limitations
    
  - id: q2
    type: open-ended
    question: |
      Explain the difference between structured, semi-structured, 
      and unstructured data. Give an example of each.
    expected_concepts:
      - structured data (CSV, databases)
      - semi-structured data (JSON, XML)
      - unstructured data (text, images)
    evaluation_criteria:
      - clear definitions
      - accurate examples
      - understanding of use cases
    
  - id: q3
    type: practical
    question: |
      You're scraping data from a website and notice that some pages 
      have different HTML structure. How would you handle this?
    expected_concepts:
      - web scraping robustness
      - error handling
      - data validation
      - fallback strategies
    evaluation_criteria:
      - mentions error handling
      - suggests validation checks
      - considers edge cases
      - proposes fallback methods

feedback:
  excellent: |
    Excellent work! You demonstrate strong understanding of data collection 
    principles and practical problem-solving skills.
  good: |
    Good understanding! You've covered the main concepts. Consider exploring 
    automated solutions and scalability more deeply.
  needs_improvement: |
    You're on the right track! I recommend reviewing the course materials on 
    data collection and missing data handling. Let's discuss specific areas.
```

### Step 3: Add Assessment to Knowledge Base

Copy the assessment file to your knowledge base:

```powershell
Copy-Item "assessments\conversational\week06-data-collection.yaml" `
    -Destination "backend\knowledge_base\assessments\week06-data-collection.yaml"
```

Then reload the knowledge base:
```powershell
cd backend
.\venv\Scripts\Activate.ps1
python scripts\load_knowledge_base.py
```

### Step 4: Use the Assessment

**Start the assessment via chat:**

Ask the bot:
```
"I'd like to take the Week 6 data collection assessment. 
Please conduct it as a conversational interview."
```

The bot will:
1. Load the assessment questions from the knowledge base
2. Ask questions one at a time
3. Evaluate responses
4. Provide feedback
5. Ask follow-ups based on understanding

---

## Assessment Question Types

### 1. Scenario-Based Questions

**Best for:** Practical problem-solving assessment

```yaml
- type: scenario-based
  question: "You have [situation]. How would you handle it?"
  expected_concepts: [concept1, concept2]
  evaluation_criteria:
    - mentions key approach
    - considers alternatives
    - understands trade-offs
```

### 2. Open-Ended Questions

**Best for:** Conceptual understanding

```yaml
- type: open-ended
  question: "Explain [concept] and provide an example."
  expected_concepts: [concept1, concept2]
  evaluation_criteria:
    - clear definition
    - accurate example
    - practical application
```

### 3. Multiple Choice (via conversation)

**Best for:** Quick concept checks

```yaml
- type: multiple-choice
  question: "Which is best for [purpose]?"
  options:
    - option1
    - option2
    - option3
  correct: option2
  explanation: "Why option2 is correct..."
```

### 4. Code/Practical Questions

**Best for:** Technical skill assessment

```yaml
- type: practical
  question: "How would you implement [feature]?"
  expected_concepts: [code_pattern, algorithm]
  evaluation_criteria:
    - correct approach
    - code quality considerations
    - edge case handling
```

---

## Using Assessments in Your Bot

### Method 1: Direct Chat Request

Simply ask the bot to conduct an assessment:

**Student message:**
```
"Let's do a Week 6 assessment"
```

**Bot response:**
```
"Great! I'll conduct a conversational assessment on Week 6 topics: 
data collection, web scraping, and handling missing data.

Question 1 of 3:

You've collected data from 30 companies, but notice that 5 companies 
are missing their 'Industry' field. What should you do?

Please explain your reasoning."
```

### Method 2: Structured Assessment Prompt

Create a system prompt that includes assessment instructions:

**Example prompt:**
```
You are conducting a Week 6 assessment. Ask the following questions one at a time:

1. [Question 1]
2. [Question 2]
3. [Question 3]

For each answer:
- Evaluate understanding
- Provide feedback
- Ask follow-up if needed
- Move to next question

Start with Question 1.
```

### Method 3: Add Assessment Endpoint (Future Enhancement)

For a more structured approach, you could add a dedicated assessment endpoint to the backend (see implementation guide below).

---

## Best Practices

### 1. Question Design

✅ **Do:**
- Ask clear, specific questions
- Include real-world scenarios
- Allow for multiple valid answers
- Focus on understanding, not memorization

❌ **Don't:**
- Ask yes/no questions without follow-ups
- Use overly technical jargon
- Make questions too long or complex
- Focus only on memorized facts

### 2. Feedback

✅ **Do:**
- Provide immediate feedback
- Explain why answers are correct/incorrect
- Suggest resources for improvement
- Celebrate correct answers

❌ **Don't:**
- Just say "correct" or "incorrect"
- Skip explanations
- Be discouraging
- Move on too quickly

### 3. Follow-up Questions

✅ **Do:**
- Ask follow-ups based on understanding level
- Probe deeper if answer is partial
- Challenge with advanced questions if answer is excellent
- Clarify misunderstandings

❌ **Don't:**
- Always ask the same follow-ups
- Skip follow-ups entirely
- Make follow-ups too difficult
- Repeat the same question

---

## Example Assessment Workflow

### Week 6 Assessment Example

**Student:** "I'm ready for the Week 6 assessment"

**Bot:** "Great! This assessment covers data collection, web scraping, and handling missing data. It will take about 15 minutes. Ready to start?"

**Student:** "Yes"

**Bot:** "Question 1 of 3:

You've collected data from 30 companies, but notice that 5 companies are missing their 'Industry' field. What should you do?

Please explain your reasoning."

**Student:** "I would check each company's website to find their industry information."

**Bot:** "Good thinking! Manual research is one approach. ✓

Follow-up: What if you had 1000 companies with missing industries? Would manual research still be practical? Also, can you think of an automated approach?"

**Student:** "For 1000 companies, manual would take too long. Maybe I could use the company description to predict the industry?"

**Bot:** "Excellent! That's a great example of using ML for data preparation! ⭐

You could:
1. Use companies WITH industry labels as training data
2. Train a classifier on their descriptions
3. Predict industry for missing values

This shows you understand both practical limits and how ML can help.

Moving to Question 2..."

---

## Assessment Templates

### Quick Assessment Template

```yaml
assessment:
  id: [assessment-id]
  title: "[Assessment Title]"
  description: "[Description]"
  duration_minutes: 15

questions:
  - id: q1
    type: [scenario-based|open-ended|practical]
    question: "[Your question]"
    expected_concepts: [concept1, concept2]
    evaluation_criteria:
      - [criterion 1]
      - [criterion 2]
```

### Full Assessment Template

See `assessments/templates/assessment-template.yaml` (create this file if needed)

---

## Advanced: Custom Assessment System

For more control, you can implement a dedicated assessment system:

1. **Backend Assessment Service** - Handles assessment logic
2. **Assessment API Endpoints** - Start/continue/complete assessments
3. **Frontend Assessment UI** - Dedicated assessment interface
4. **Progress Tracking** - Store assessment results

See `docs/IMPLEMENT-ASSESSMENT-SYSTEM.md` for implementation guide.

---

## Tips for Creating Effective Assessments

1. **Start Simple** - Begin with 3-5 questions per assessment
2. **Test with Students** - Try assessments yourself first
3. **Iterate** - Refine questions based on student responses
4. **Use RAG** - Ensure assessment questions are in your knowledge base
5. **Be Flexible** - Allow for multiple valid approaches
6. **Focus on Understanding** - Test concepts, not memorization

---

## Resources

- **Assessment Workflow:** `.bmad-core/workflows/student-assessment.md`
- **Bot Configuration:** `bot-config/ml-101-bot-configuration.md`
- **Example Assessments:** `assessments/` directory

---

**Need help?** The bot can help you create assessment questions! Just ask:
```
"Help me create assessment questions for Week 6 on data collection"
```

