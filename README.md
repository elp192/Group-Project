In progress
# Prediction of canceling hotel reservations
## Overview of the Project
Annually hotels experience several cancellations, which has adverse impacts on hotel business and industry. In this project, factors influencing the hotel cancellations will be determined. Also, the prediction model predicts how many customers will cancel their reservations.<br>
The outcome of this project can be used by hotel owners. In the following, there are examples to reveal the applications of this project.<br>
- The model can improve the resource management of hotels.<br>
- The model helps the finance department in estimation for hotel revenue.<br>

## Tools and Resources
- [Data](https://github.com/elp192/Hotel-Reservation/blob/d47b91009c9f1c52add774d48e8972680fc33d43/hotel_reservations.csv): Data consists of 119391 rows (instances) and 32 columns which includes but not limited to:<br>
```hotel```, ```is_canceled```(the hotel is canceled or not),```lead_time``` (the number of days that the hotel booked in advance), ```arrival_date_year```,```arrival_date_month```, ```arrival_date_week_number
```, ```arrival_date_day_of_month```,```stays_in_weekend_nights```,```stays_in_week_nights```, ```adults``` (number of adults), ```market_segment```(categories: TA (travel agents) and TO (tour operations), ```distribution_channel```(categories: TA and TO), ```adr```(average daily rate) and etc., 

- Tools:
  - Language: Python - codes are written in Jupyter Notebook.
  - Libraries: Pandas, Matplotlib, Sckiti-learn, TensorFlow (probably).
  - Database: PostgreSQL.
  - Machine learning: Supervised learning, Logistic regression, Random Forest, Deep learning (probably).
  - Dashboard: Tableau.
<br>

## E-R Diagram
<br>

## Data Processing (Extract, Transform, Load)

- used PGadmin and postgres to store data 
- created table hotel_booking and imported data from csv 
- SQL script for the table created

<br>
 
## Statistical Analysis

<br>

## Machine learning
### Problem
The hotels need to confirm booking reservations to customers keeping in mind, the ascertainity of the rooms being booked for actual reservation as well as the reservation status being cancelled when a customer cancels or rather doesn't get onboard with no-show. Booking cancellations negatively contribute to hotel revenue and accurate

In this project, we are trying to predict the probability of a booked reservation being cancelled using the historic data collected of the hotel reservations. There are 2 outcomes expected(0 or 1) initially, with 2 attributes into account, which are mainly the "hotel" and "reservation_status".

### Preprocessing
The preprocessing of the data includes:

<li>Removal of the observations with null values in any attribute</li>
<li>Conversion of nominal and ordinal variables to integers</li>
<li>Removal of the features with highest null value observations</li>

### Model Selection with the probable attributes used as Input to the model
#### 1. Logistic Regression (Regression) - Fields: ["arrival_date_week_number", "arrival_date_month", "deposit_type"]
Logistic regression is a type of supervised learning classification algorithm which is used for predicting the probability of a target variable. The nature of target or dependent variable is binary, which means there can be only two classes. The variable"deposit_type" contains two types of observations - which is either "no deposit" or "non-refundable".

#### 2. Random Forest (Tree-based) - Fields: ["total_of_special_requests", "deposit_type", "lead_time"]
Random Forest is a machine learning algorithm which is used to solve problems related to regression and classification. It use the Ensemble learning technique which solves complexity of the problems by the combination of classifiers, thus, improving the accuracy.

This model establishes the outcome based on the predictions of the decision trees by calculating the average or mean of the output from different decision trees. It works on the principle which inculcates that the precision of the model outcome is directly proportional to the number of decision trees, thus reduces the overfitting of datasets. It also provides an effective method to deal with missing data.

#### 3. Ensemble classifier (Ensemble) - Fields: ["deposit_type", "lead_time", "adr"(Average Daily Rate)]
Ensemble classifier is a machine learning technique that utilizes the combination of various ML models in order to generate a most robust and optimal prediction model.

### Conclusion
Hence, the cancellation of hotel bookings can be predicted with utmost precision using the models listed above. The features of these models namely average daily rate (adr) and arrival_date are taken as key factors for the is_cancelled attribute prediction for our evaluation.
<br>

## Final Conclusions

<br>

## Collaborators and Communication Protocols 

- Elnaz Pouranbarani  
- Saurabh Patel  
- Mahtab Amiri  
- Nikhil Mahadeshwar  
- Snigdha Kundu  

