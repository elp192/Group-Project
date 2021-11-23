# Machine-Learning

## Problem
The hotels need to confirm booking reservations to customers keeping in mind, the ascertainity of the rooms being booked for actual reservation as well as the reservation status being cancelled when a customer cancels or rather doesn't get onboard with no-show.
Booking cancellations negatively contribute to hotel revenue and accurate 

In this project, we are trying to predict the probability of a booked reservation being cancelled using the historic data collected of the hotel reservations.
There are 2 outcomes expected(0 or 1) initially, with 2 attributes into account, which are mainly the "hotel" and "reservation_status".

## Preprocessing
The preprocessing of the data includes:
<li>Removal of the observations with null values in any attribute</li>
<li>Conversion of nominal and ordinal variables to integers</li>
<li>Removal of the features with highest null value observations</li>

## Model Selection with the probable attributes used as Input to the model
### 1. Logistic Regression (Regression) - Fields: ["arrival_date_week_number", "arrival_date_month", "deposit_type"]
Logistic regression is a type of supervised learning classification algorithm which is used for predicting the probability of a target variable. The nature of target or dependent variable is binary, which means there can be only two classes. The variable"deposit_type" contains two types of observations - which is either "no deposit" or "non-refundable".

#### Splitting Data into Training (70%) and Test (30%) Sets
We make training and test sets to make sure that after we train our classification algorithm, it is able to generalize well to new data

     from sklearn.model_selection import train_test_split
     X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0, test_size=0.3)

#### Import the model you want to use
from sklearn.linear_model import LogisticRegression

#### Make an instance of the Model
classifier = LogisticRegression()

#### Applying Recursive Feature Elimination (RFE)
The RFE function is used for eliminating the less important features which do not contribute towards the context of the prediction.

import statsmodels.api as sm
from sklearn.feature_selection import RFE
rfe = RFE(classifier, 20)
rfe = rfe.fit(X, y.values.ravel())

#### Training the model on the data, storing the information learned from the data
classifier.fit(X_train, y_train)

#### Making predictions on the test data
predictions = classifier.predict(X_test)
pd.DataFrame({"Prediction": predictions, "Actual": y_test})

#### Measuring Model Performance
from sklearn.metrics import accuracy_score
accuracy_score(y_test, predictions)

#### Conclusion:
The model performance initially came out to be 98%, proving to be overfitting, therefore, after making effective use of the model with recursive feature elimination, made the model come down to approxiamately 91%, which was neither overfitting nor under-fitting.

### 2. Random Forest (Tree-based) - Fields: ["total_of_special_requests", "deposit_type", "lead_time"]
Random Forest is a machine learning algorithm which is used to solve problems related to regression and classification. It use the Ensemble learning technique which solves complexity of the problems by the combination of classifiers, thus, improving the accuracy.

This model establishes the outcome based on the predictions of the decision trees by calculating the average or mean of the output from different decision trees. It works on the principle which inculcates that the precision of the model outcome is directly proportional to the number of decision trees, thus reduces the overfitting of datasets. It also provides an effective method to deal with missing data.

### 3. Ensemble classifier (Ensemble) - Fields: ["deposit_type", "lead_time", "adr"(Average Daily Rate)]
Ensemble classifier is a machine learning technique that utilizes the combination of various ML models in order to generate a most robust and optimal prediction model. 

## Conclusion
Hence, the cancellation of hotel bookings can be predicted with utmost precision using the models listed above.
The features of these models namely average daily rate (adr) and arrival_date are taken as key factors for our evaluation.

