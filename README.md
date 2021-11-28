## Predicting Hotel Booking Cancellations

# Overview of the Project

Annually hotels experience several cancellations, which has adverse impacts on hotel business and industry. In this project, factors influencing the hotel cancellations will be determined. Also, the prediction model predicts how many customers will cancel their reservations.
The outcome of this project can be used by hotel owners. In the following, there are examples to reveal the applications of this project.

The model can improve the resource management of hotels.
The model helps the finance department in estimation for hotel revenue.
Tools and Resources

## Data: 
Data is extracted from Kaggle.com open source and consists of 119,391 rows (instances) and 32 columns which includes but not limited to:
hotel, is_canceled(the hotel is canceled or not),lead_time (the number of days that the hotel booked in advance), arrival_date_year, arrival_date_month, arrival_date_week_number, arrival_date_day_of_month,stays_in_weekend_nights, stays_in_week_nights, adults (number of adults), market_segment(categories: TA (travel agents) and TO (tour operations), distribution_channel(categories: TA and TO), adr(average daily rate) and etc.

# Tools:

Language: Python - codes are written in Jupyter Notebook.
Libraries: Pandas, Matplotlib, Sckiti-learn, TensorFlow.
Database: PostgreSQL.
Machine learning: Supervised learning, Logistic regression, Random Forest, Deep learning.
Dashboard: Tableau.

# Data Description and Process Flow
The dataset of City Hotel and Resort Hotel contains booking information and following information: booking date, length of stay, no of adults, children, babies and the parking availability. The datasets has the same structure, with 32 variables describing the 119391 observations. Each observation represents the hotel booking and the datasets comprehend bookings due to the arrive between the 1st of July of 2015 and the 31st of August 2017. It includes bookings that effectively arrived and bookings that were canceled. 
![alt text](https://github.com/nikmahadeshwar/group-project/blob/main/Business%20process%20flow%20example-3.jpeg)
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
 
### Machine Learning using Random Forest Algorithm
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
A balanced accuarcy score of 0.79 implies that the model can correctly predict 79.51 % of the labels of each class.
A precision score of 0.85 implies that of all the cases wherein the model predicted that the booking will be cancelled, 85% were identified correctly.
A recall score of 0.83 implies that of all the cases wherein the booking was cancelled, the model correctly identified 83%.
An F1 score of 0.83, is the weighted average of precision and recall. 

