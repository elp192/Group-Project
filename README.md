In progress
# Predicting Hotel Booking Cancellations
## Overview of the Project
Annually hotels experience several cancellations, which has adverse impacts on hotel business and industry. In this project, factors influencing the hotel cancellations will be determined. Also, the prediction model predicts how many customers will cancel their reservations.<br>
The outcome of this project can be used by hotel owners. In the following, there are examples to reveal the applications of this project.<br>
- The model can improve the resource management of hotels.<br>
- The model helps the finance department in estimation for hotel revenue.<br>

## Tools and Resources
- [Data](https://github.com/elp192/Hotel-Reservation/blob/d47b91009c9f1c52add774d48e8972680fc33d43/hotel_reservations.csv): <br>Data is extracted from Kaggle.com open source and consists of 119,391 rows (instances) and 32 columns which includes but not limited to:<br>
```hotel```, ```is_canceled```(the hotel is canceled or not),```lead_time``` (the number of days that the hotel booked in advance),  ```arrival_date_year```, ```arrival_date_month```, ```arrival_date_week_number```, ```arrival_date_day_of_month```,```stays_in_weekend_nights```, ```stays_in_week_nights```, ```adults``` (number of adults), ```market_segment```(categories: TA (travel agents) and TO (tour operations), ```distribution_channel```(categories: TA and TO), ```adr```(average daily rate) and etc.

- Tools:
  - Language: Python - codes are written in Jupyter Notebook.
  - Libraries: Pandas, Matplotlib, Sckiti-learn, TensorFlow.
  - Database: PostgreSQL.
  - Machine learning: Supervised learning, Logistic regression, Random Forest, Deep learning.
  - Dashboard: Tableau.
## Data Description and Process Flow Diagram

The following table depicts the type and description of each variable used in the dataset: 

|            Variable          |     Type      |         Description
| ---------------------------- | ------------- |------------------------------
|     ADR                      |    Numeric    |Average Daily Rate as defined
|     Agent                    |   Categorial  |ID of the travel agency that made the booking
|     Adults                   |    Integer    |Number of adults
|     ArrivalDateDayOfMonth    |     Integer   |Day of the month of the arrival date
|     ArrivalDateMonth         |     Integer   |Month of arrival date with 12 categories: “January” to “December”
|     ArrivalDateWeekNumber    |     Integer   |Week number of the arrival date
|     ArrivalDateYear          |     Integer   |Year of arrival date
|     AssignedRoomType         |  Categorical  |Code for the type of room assigned to the booking.
|     Babies                   |     Integer   |Number of babies
|    BookingChanges            |     Integer   |Number of changes made to the booking from the moment the booking was entered 
|     Children                 |     Integer   |Number of children
|    Company                   |     Integer   |ID of the company/entity that made the booking or responsible for paying the booking
|    Country                   |     Integer   |Country of origin
|    CustomerType              | Categorical   |Type of booking, assuming one of four categories: Contract - when the booking has an allotment or other type of contract associated to it; Group – when the booking is associated to a group; Transient – when the booking is not part of a group or contract, and is not associated to other transient booking;Transient-party – when the booking is transient, but is associated to at least other transient booking
| DaysInWaitingList            | Integer       |Number of days the booking was in the waiting list before it was confirmed to the customer
|   DepositType                | Categorical   |Indication on if the customer made a deposit to guarantee the booking. This variable can assume three categories:No Deposit – no deposit was made; Non Refund – a deposit was made in the value of the total stay cost; Refundable – a deposit was made with a value under the total cost of stay.
|DistributionChannel           | Categorical   |Booking distribution channel. The term “TA” means “Travel Agents” and “TO” means “Tour Operators”
|IsCanceled                    | Categorical   |Value indicating if the booking was canceled (1) or not (0)
|IsRepeatedGuest               | Categorical   |Value indicating if the booking name was from a repeated guest (1) or not (0)
|LeadTime                      | Integer       |Number of days that elapsed between the entering date of the booking into the PMS and the arrival date
|MarketSegment                 | Categorical   |Market segment designation. In categories, the term “TA” means “Travel Agents” and “TO” means “Tour Operators”
|Meal                          | Categorical   |BB – Bed & Breakfast; HB – Half board (breakfast and one other meal – usually dinner); FB – Full board(breakfast,lunch and dinner)
|PreviousBookingsNotCanceled   | Integer       |Number of previous bookings not cancelled by the customer prior to the current booking
|PreviousCancellations         | Integer       |Number of previous bookings that were cancelled by the customer prior to the current booking
|RequiredCardParkingSpaces     | Integer       |Number of car parking spaces required by the customer
|ReservationStatus             | Categorical   |Canceled – booking was canceled by the customer; Check-Out – customer has checked in but already departed; No-Show – customer did not check-in and did inform the hotel of the reason why
| ReservationStatusDate        | Date          |Date at which the last status was set. This variable can be used in conjunction with the ReservationStatus to understand when was the booking canceled or when did the customer checked-out of the hotel
| ReservedRoomType             | Categorical   |Code of room type reserved. Code is presented instead of designation for anonymity reasons
|StaysInWeekendNights          |Integer        |Number of weekend nights (Saturday or Sunday) the guest stayed or booked to stay at the hotel
|StaysInWeekNights             |Integer        |Number of week nights (Monday to Friday) the guest stayed or booked to stay at the hotel
|TotalOfSpecialRequests        |Integer        |Number of special requests made by the customer (e.g. twin bed or high floor)

The hotel reservation flow diagram is also shown below:
![alt text](https://github.com/nikmahadeshwar/group-project/blob/main/Business%20process%20flow%20example-3.jpeg)
## Data Preprocessing
The preprocessing of the data includes:
- Removal of the observations with null values in any attribute.<br>
- Removal of the features with highest null value observations.<br>  
- Removal of duplicated rows.<br>
- Ensuring that data types are in correct form. <br>

## Exploratory Data Analysis
### How Many Booking Were Cancelled?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%204.58.04%20PM.png)
 37% of the time bookings were canceled and 63% of the bookings were checkedin.
 
### Which was the most booked accommodation type (Single, Couple, Family)?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%205.55.57%20PM.png)
Couple (or 2 adults) is the most popular accommodation type. 

### What is the percentage of booking for each year?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%205.00.05%20PM.png)

Maximun number of bookings made in 2016, compared to the previous year. 

### Which is the busiest month for hotels?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%205.00.26%20PM.png)
The above graph depicts that most bookings were made from the month of July to August. On other hand least number of bookings were made at the start and end of the year.
### How Long People Stay in the hotel?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%206.22.13%20PM.png)

Most people stay for one, two, or three. More than 60% of guests come under these three options.

### From which country most guests come?
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-27%20at%205.00.45%20PM.png)

Above diagram describes that the top countries from where the guests arrive are Portugal, UK and France, Spain and Germany.
## Database creation using cloud platform 
Cloud computing such as AMAZON WEB SERVICE(AWS) is the future for almost every aspect of business.
AWS offers a wide variety of storage options on its platform,both structured and unstructured databases.Following are the steps to do that :

 - Set up a Postgres database(database-1) using AWS's relational database service (RDS)
 - After setting up your RDS there are some quick adjustments to the settings to make sure your database is available everywhere
The reason why the Postgres database hosted on the cloud, so it can be accessed by anyone with credentials using whatever platform you prefer. 
- Then connect with PGAdmin to create the table .
- We use pandas library and sqlalchemy to create a function (dbexport.py)
- Added all the configuration in (config.py)which is added in gitignore
- now , we use hotel_df1_clean data to used to run through codes and genrate the SQL table 
- This creates the csv file 



 ## Statistical Analysis
(In progress)
<br>

## Machine Learning
In this project, we are trying to predict the probability of a booked reservation being cancelled using the historic data collected of the hotel reservations. There are 2 outcomes expected (0 or 1).

### Preprocessing
- Split reservation_status_date to day, month and year.<br>
- Separate the categorical variables from others.<br>
- Replace null values by "undefined" in categorical variables and by zero in other variables.<br>
- Applied ordinalencoder on categorical variables.<br>

### Model 
First, train-test split procedure is applied on dataset (75% training and 25% test). The following machine learning methods are used:<br>
1. **Logistic Regression (Regression)** - Fields: [```arrival_date_week_number```, ```arrival_date_month```, ```deposit_type```]<br>
  Logistic regression is a type of supervised learning classification algorithm which is used for predicting the probability of a target variable. The nature of target or dependent variable is binary, which means there can be only two classes. The variable"deposit_type" contains two types of observations - which is either "no deposit" or "non-refundable".
  
    #### Splitting Data into Training (70%) and Test (30%) Sets
    We make training and test sets to make sure that after we train our classification algorithm, it is able to generalize well to new data

        from sklearn.model_selection import train_test_split
        X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0, test_size=0.3)

    #### Importing the Logistic Regression Model from Sci-Kit Learn
        from sklearn.linear_model import LogisticRegression

    #### Making an instance of the Model
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
    The model performance initially came out to be 98%, proving to be overfitting, therefore, after making effective use of the model with recursive feature elimination, made the model come down to approxiamately 94%, which was neither overfitting nor under-fitting.

2. **Neural Network**<br>
**Compiling, Training, and Evaluating the model**
   - The two hidden layers are used for the neural network model. The first and second hidden layers contain 100 and 50 neurons, respectively. The output layer contains a single neuron (binary classification problem).
   - The relu activation function is used for hidden layers as it provides better accuracy. For the output layer, the sigmoid function is used.
   - The model is trained using 100 epochs.
   - The binary cross entropy is used for the loss function as this function is appropriate for binary classification.
   - The adam optimizer is used as an optimizer.
   - To evaluate the machine learning algorithm the 10-fold cross-validation is used.
   - The accuracy of 93% is obtained from our deep learning model.

3. **Random Forest (Tree-based)**<br>
  Random Forest is a machine learning algorithm which is used to solve problems related to regression and classification. It uses the Ensemble learning technique which solves complexity of the problems by the combination of classifiers, thus, improving the accuracy.<br>
This model establishes the outcome based on the predictions of the decision trees by calculating the average or mean of the output from different decision trees. It works on the principle which inculcates that the precision of the model outcome is directly proportional to the number of decision trees, thus reduces the overfitting of datasets. It also provides an effective method to deal with missing data.
#### Import Libraries
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%2012.45.19%20PM.png)
#### Load data
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.20.25%20PM.png)
#### Extract Target
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.14.55%20PM.png)
#### Converting Categorical variables to Numerical
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.29.45%20PM.png)
#### Identify columns to drop
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.23.41%20PM.png)
We dropped columns reservation_status,reservation_status_date, company and agent as they conatain missing values and are not useful.
#### Split the data into train and test datasets
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.31.17%20PM.png)
We set the random_state variable to 42 to ensure reproducibility of results.
#### Build categorical and continuous pipelines
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.35.41%20PM.png)
#### Build pipeline
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.38.37%20PM.png)
#### Initialize the search space for model hyperparameters
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.40.15%20PM.png)
#### Initialize the metrics used for scoring
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.44.24%20PM.png)
We used Balanced Accuracy Score,precision score, recall score and  f1 score metric to determine the score of classification model as it captures recall of each class in single metric and accounts for imbalance in data.
#### Fit model
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.46.13%20PM.png)
#### Print best hyperparameters
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.47.58%20PM.png)
#### Fit the model on training data
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.50.51%20PM.png)
#### Predict using test dataset
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.54.41%20PM.png)
#### Metrics for Model
![alt text](https://github.com/elp192/Hotel-Reservation/blob/Final_project/nikmahadeshwar/Screen%20Shot%202021-11-28%20at%201.56.15%20PM.png)
A balanced accuracy score of 0.79 implies that the model can correctly predict 79.51 % of the labels of each class.
A precision score of 0.85 implies that of all the cases wherein the model predicted that the booking will be cancelled, 85% were identified correctly.
A recall score of 0.83 implies that of all the cases wherein the booking was cancelled, the model correctly identified 83%.
An F1 score of 0.83, is the weighted average of precision and recall. 

4. **Ensemble classifier (Ensemble)(In progress)**<br>
  Ensemble classifier is a machine learning technique that utilizes the combination of various ML models in order to generate a more robust and optimal prediction model.

### Conclusion
Hence, the cancellation of hotel bookings can be predicted with utmost precision using the models described above. The features of these models namely average daily rate (adr) and arrival_date are taken as key factors for the is_cancelled attribute prediction for our evaluation.
<br>

## Final Conclusions
(To be done later)
<br>

## Collaborators and Communication Protocols 

- Elnaz Pouranbarani  
- Saurabh Patel  
- Mahtab Amiri  
- Nikhil Mahadeshwar  
- Snigdha Kundu  
Our team communicates via messaging in Slack. We also have regular zoom meetings at least twice a week to discuss project status and clarify each member's responsibilities.

Presentation Link:
https://docs.google.com/presentation/d/1EV7a8vf5qAvJWqqaAbC-Qyj0sDApTnZGS-sbxHzDKdg/edit#slide=id.g101b7c7e2a2_0_228
