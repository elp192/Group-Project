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


