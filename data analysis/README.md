### Data Analysis
This folder contains the code needed to create the training and testing datasets for the logistic regression algorithms.

`analyze_harm.ipynb`
- read the generated data in /datasets/cms_processed_full and /datasets/cms_random for training data
    - generate training and testing dataset for regression

After it reads the dataset, we explore potential features in the ICD codes and the summary file to use in the feature set.

We then generate a feedable array that contain features as well as its result. After splitting between positive classification and negative classification, we train and compare the different regression methods within sklearn:

- Logistic Regression
- Random Forest
- Extreme Gradient Boosting Machine (XGB)
- Deep Neural Network

The most current models are in `all_models.ipynb `

