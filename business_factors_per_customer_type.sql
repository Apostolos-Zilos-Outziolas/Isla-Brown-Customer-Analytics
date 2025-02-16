with hotel_info as(
select * from hotel_revenue_2018
union all
select * from hotel_revenue_2019
union all
select * from hotel_revenue_2020),

transient_customers as(
select
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_transient_customers_bookings,
avg(days_in_waiting_list) as waiting_list_days_transient,
sum(is_canceled) as no_of_total_cancelations_transient,
(sum(is_canceled)/count(*)) as cancellation_rate_transient ,
sum(previous_cancellations) as previous_cancellations_transient,
sum(previous_bookings_not_canceled) as successfull_prev_bookings_transient,
(sum(previous_cancellations)/(sum(previous_bookings_not_canceled)+sum(previous_cancellations))) as probability_of_cancelling_transient
from hotel_info
where customer_type='Transient'
group by hotel, arrival_date_year, arrival_date_month),

contract_customers as(
select
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_contract_customers_bookings,
avg(days_in_waiting_list) as waiting_list_days_contract,
sum(is_canceled) as no_of_total_cancelations_contract,
(sum(is_canceled)/count(*)) as cancellation_rate_contract,
sum(previous_cancellations) as previous_cancellations_contract,
sum(previous_bookings_not_canceled) as successfull_prev_bookings_contract,
(sum(previous_cancellations)/(sum(previous_bookings_not_canceled)+sum(previous_cancellations))) as probability_of_cancelling_contract
from hotel_info
where customer_type='Contract'
group by hotel, arrival_date_year, arrival_date_month),

transient_party_customers as(
select
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_transient_party_customers_bookings,
avg(days_in_waiting_list) as waiting_list_days_transient_party,
sum(is_canceled) as no_of_total_cancelations_transient_party,
(sum(is_canceled)/count(*)) as cancellation_rate_transient_party,
sum(previous_cancellations) as previous_cancellations_transient_party,
sum(previous_bookings_not_canceled) as successfull_prev_bookings_transient_party,
(sum(previous_cancellations)/(sum(previous_bookings_not_canceled)+sum(previous_cancellations))) as probability_of_cancelling_transient_party
from hotel_info
where customer_type='Transient-Party'
group by hotel, arrival_date_year, arrival_date_month),

group_customers as(
select
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_group_customers_bookings,
avg(days_in_waiting_list) as waiting_list_days_group,
sum(is_canceled) as no_of_total_cancelations_group,
(sum(is_canceled)/count(*)) as cancellation_rate_group,
sum(previous_cancellations) as previous_cancellations_group,
sum(previous_bookings_not_canceled) as successfull_prev_bookings_group,
(sum(previous_cancellations)/(sum(previous_bookings_not_canceled)+sum(previous_cancellations))) as probability_of_cancelling_group
from hotel_info
where customer_type='Group'
group by hotel, arrival_date_year, arrival_date_month)

select
transient_customers.hotel,
transient_customers.arrival_date_year,
transient_customers.arrival_date_month,
total_transient_customers_bookings,
waiting_list_days_transient,
cancellation_rate_transient,
probability_of_cancelling_transient,
total_contract_customers_bookings,
waiting_list_days_contract,
cancellation_rate_contract,
probability_of_cancelling_contract,
total_transient_party_customers_bookings,
waiting_list_days_transient_party,
cancellation_rate_transient_party,
probability_of_cancelling_transient_party,
total_group_customers_bookings,
waiting_list_days_group,
cancellation_rate_group,
probability_of_cancelling_group
from transient_customers
left join contract_customers on contract_customers.hotel=transient_customers.hotel and contract_customers.arrival_date_year=transient_customers.arrival_date_year and contract_customers.arrival_date_month=transient_customers.arrival_date_month
left join transient_party_customers on transient_party_customers.hotel=transient_customers.hotel and transient_party_customers.arrival_date_year=transient_customers.arrival_date_year and transient_party_customers.arrival_date_month=transient_customers.arrival_date_month
left join group_customers on group_customers.hotel=transient_customers.hotel and group_customers.arrival_date_year=transient_customers.arrival_date_year and group_customers.arrival_date_month=transient_customers.arrival_date_month;
