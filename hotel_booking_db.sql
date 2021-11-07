-- Creating tables for Hotel_booking
CREATE TABLE hotel_booking (
     hotel text,
     is_canceled boolean,
	 lead_time integer,
	 arrival_date_year text,
	 arrival_date_month text,
	 arrival_date_week_number integer,
	 arrival_date_day_of_month integer,
	 stays_in_weekend_nights integer,
	 stays_in_week_nights integer,
	 adults integer,
	 children text,
	 babies integer, 
	 meal text,
	 country text null,
	 market_segment text,
	 distribution_channel text,
	 is_repeated_guest boolean,
	 previous_cancellations integer,
	 previous_bookings_not_canceled integer,
	 reserved_room_type text,
	 assigned_room_type text,
	 booking_changes integer,
	 deposit_type text,
	 agent integer null,
	 company integer null,
	 days_in_waiting_list integer,
	 customer_type text,
	 adr decimal,
	 required_car_parking_spaces integer,
	 total_of_special_requests integer,
	 reservation_status text,
	 reservation_status_date date
 );
	
 select * from hotel_booking 
 


















	 






 

