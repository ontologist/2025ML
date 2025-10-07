# Week 1: Environment Setup and Verification
# Machine Learning and Intelligence Course
# Fill in the blanks to complete this environment verification script

import sys
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

def verify_environment():
    """
    Verify that all required packages are installed and working.
    TODO: Complete this function by adding print statements to verify each package.
    """
    
    # TODO 1: Print Python version
    print("Python version:", sys.version)
    
    # TODO 2: Print pandas version
    print("Pandas version:", pd.__version__)
    
    # TODO 3: Print numpy version
    print("NumPy version:", np.__version__)
    
    # TODO 4: Print matplotlib version
    print("Matplotlib version:", plt.matplotlib.__version__)
    
    # TODO 5: Print seaborn version
    print("Seaborn version:", sns.__version__)
    
    # TODO 6: Print scikit-learn version
    print("Scikit-learn version:", sklearn.__version__)

def test_basic_functionality():
    """
    Test basic functionality of key libraries.
    TODO: Complete the test cases below.
    """
    
    # TODO 7: Create a simple numpy array with values [1, 2, 3, 4, 5]
    test_array = np.array([1, 2, 3, 4, 5])
    print("NumPy array:", test_array)
    
    # TODO 8: Create a pandas DataFrame with two columns: 'A' and 'B'
    # Column 'A' should have values [1, 2, 3]
    # Column 'B' should have values [4, 5, 6]
    test_df = pd.DataFrame({
        'A': [1, 2, 3],
        'B': [4, 5, 6]
    })
    print("Pandas DataFrame:")
    print(test_df)
    
    # TODO 9: Load the iris dataset from sklearn
    iris = datasets.load_iris()
    print("Iris dataset loaded successfully")
    print("Features shape:", iris.data.shape)
    print("Target shape:", iris.target.shape)

def test_ml_basic_example():
    """
    Test a basic machine learning example.
    TODO: Complete the machine learning pipeline below.
    """
    
    # Load iris dataset
    iris = datasets.load_iris()
    X = iris.data
    y = iris.target
    
    # TODO 10: Split the data into training and testing sets
    # Use 80% for training and 20% for testing
    # Set random_state=42 for reproducibility
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42
    )
    
    # TODO 11: Create a LogisticRegression model
    model = LogisticRegression(random_state=42)
    
    # TODO 12: Train the model using the training data
    model.fit(X_train, y_train)
    
    # TODO 13: Make predictions on the test data
    y_pred = model.predict(X_test)
    
    # TODO 14: Calculate and print the accuracy score
    accuracy = accuracy_score(y_test, y_pred)
    print(f"Model accuracy: {accuracy:.4f}")
    
    return model, accuracy

def main():
    """
    Main function to run all verification tests.
    TODO: Call all the verification functions in the correct order.
    """
    
    print("=== Environment Verification ===")
    
    # TODO 15: Call verify_environment function
    verify_environment()
    
    print("\n=== Basic Functionality Test ===")
    
    # TODO 16: Call test_basic_functionality function
    test_basic_functionality()
    
    print("\n=== Machine Learning Test ===")
    
    # TODO 17: Call test_ml_basic_example function
    model, accuracy = test_ml_basic_example()
    
    print("\n=== Verification Complete ===")
    print("If you see this message without errors, your environment is ready!")
    
    return model, accuracy

# TODO 18: Add the standard Python main guard
if __name__ == "__main__":
    model, accuracy = main()
