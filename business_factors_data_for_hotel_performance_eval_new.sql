with hotel_info as(
select * from hotel_revenue_2018
union all
select * from hotel_revenue_2019
union all
select * from hotel_revenue_2020),

hotel_year_lead_time as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_entries,
avg(lead_time) as avg_lead_time
from hotel_info
group by hotel, arrival_date_year, arrival_date_month),

where_clause_pos as(
select
hotel,
arrival_date_year,
arrival_date_month,
reservation_status,
sum(stays_in_weekend_nights)+sum(stays_in_week_nights) as nights_that_showed,
count(*) as non_canceled_bookings,
sum(required_car_parking_spaces) as total_parking_spaces
from hotel_info
where reservation_status!='Canceled' and reservation_status!='No-Show'
group by hotel, arrival_date_year, arrival_date_month, reservation_status),

family_calculation as(
select
hotel,
arrival_date_year,
arrival_date_month,
count(*) as families
from hotel_info
where children!=0 or babies!=0
group by hotel, arrival_date_year, arrival_date_month)

select
where_clause_pos.hotel,
where_clause_pos.arrival_date_year,
where_clause_pos.arrival_date_month,
avg_lead_time,
nights_that_showed/total_entries as monthly_ALOS,
1-(non_canceled_bookings)/total_entries as cancellation_rate,
families,
total_parking_spaces
from where_clause_pos
join hotel_year_lead_time on hotel_year_lead_time.hotel=where_clause_pos.hotel and hotel_year_lead_time.arrival_date_year=where_clause_pos.arrival_date_year and hotel_year_lead_time.arrival_date_month=where_clause_pos.arrival_date_month
join family_calculation on family_calculation.hotel=where_clause_pos.hotel and family_calculation.arrival_date_year=where_clause_pos.arrival_date_year and family_calculation.arrival_date_month=where_clause_pos.arrival_date_month;
