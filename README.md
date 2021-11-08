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
  - Libraries: Pandas, Matplotlib, Sckiti-learn, TensorFlow (probably).
  - Database: PostgreSQL.
  - Machine learning: Supervised learning, Logistic regression, Random Forest, Deep learning (probably).
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

<li>Removal of the observations with null values in any attribute</li>
<li>Conversion of nominal and ordinal variables to integers</li>
<li>Removal of the features with highest null value observations</li>  

## Data Processing (Extract, Transform, Load)
The following processes are done for data processing : 
- PGadmin and postgres are used to store data 
- Table hotel_booking is created and imported data from csv 
- SQL script for the table is created

 ## Statistical Analysis
(To be conducted later)
<br>

## Machine Learning
In this project, we are trying to predict the probability of a booked reservation being cancelled using the historic data collected of the hotel reservations. There are 2 outcomes expected (0 or 1) initially, with 2 attributes into account, which are mainly the ```hotel``` and ```reservation_status```.


### Model Selection with the probable attributes used as Input to the model
#### 1. Logistic Regression (Regression) - Fields: [```arrival_date_week_number```, ```arrival_date_month```, ```deposit_type```]
Logistic regression is a type of supervised learning classification algorithm which is used for predicting the probability of a target variable. The nature of target or dependent variable is binary, which means there can be only two classes. The variable"deposit_type" contains two types of observations - which is either "no deposit" or "non-refundable".

#### 2. Random Forest (Tree-based) - Fields: [```total_of_special_requests```, ```deposit_type```, ```lead_time```]
Random Forest is a machine learning algorithm which is used to solve problems related to regression and classification. It uses the Ensemble learning technique which solves complexity of the problems by the combination of classifiers, thus, improving the accuracy.

This model establishes the outcome based on the predictions of the decision trees by calculating the average or mean of the output from different decision trees. It works on the principle which inculcates that the precision of the model outcome is directly proportional to the number of decision trees, thus reduces the overfitting of datasets. It also provides an effective method to deal with missing data.

#### 3. Ensemble classifier (Ensemble) - Fields: [```deposit_type```, ```lead_time```, ```adr```(Average Daily Rate)]
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

