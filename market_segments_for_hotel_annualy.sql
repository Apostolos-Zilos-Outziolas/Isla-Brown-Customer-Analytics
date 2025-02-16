with hotel_info as(
select * from hotel_revenue_2018
union all
select * from hotel_revenue_2019
union all
select * from hotel_revenue_2020),

online_TA_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_online_TA_customers
from hotel_info
where market_segment='Online TA'
group by hotel, arrival_date_year, arrival_date_month),

offline_TA_TO_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_offline_TA_TO_customers
from hotel_info
where market_segment='Offline TA/TO'
group by hotel, arrival_date_year, arrival_date_month),

direct_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_direct_seg_customers
from hotel_info
where market_segment='Direct'
group by hotel, arrival_date_year, arrival_date_month),

corporate_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_corporate_seg_customers
from hotel_info
where market_segment='Corporate'
group by hotel, arrival_date_year, arrival_date_month),

groups_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_groups_customers
from hotel_info
where market_segment='Groups'
group by hotel, arrival_date_year, arrival_date_month),

complementary_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_complementary_customers
from hotel_info
where market_segment='Complementary'
group by hotel, arrival_date_year,arrival_date_month),

aviation_segment as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_aviation_customers
from hotel_info
where market_segment='Aviation'
group by hotel, arrival_date_year, arrival_date_month)

select
online_TA_segment.hotel,
online_TA_segment.arrival_date_year,
online_TA_segment.arrival_date_month,
total_online_TA_customers,
total_offline_TA_TO_customers,
total_direct_seg_customers,
total_corporate_seg_customers,
total_groups_customers,
total_complementary_customers,
total_aviation_customers
from online_TA_segment
join offline_TA_TO_segment on offline_TA_TO_segment.hotel=online_TA_segment.hotel and offline_TA_TO_segment.arrival_date_year=online_TA_segment.arrival_date_year and offline_TA_TO_segment.arrival_date_month=online_TA_segment.arrival_date_month
join direct_segment on direct_segment.hotel=online_TA_segment.hotel and direct_segment.arrival_date_year=online_TA_segment.arrival_date_year and direct_segment.arrival_date_month=online_TA_segment.arrival_date_month
join corporate_segment on corporate_segment.hotel=online_TA_segment.hotel and corporate_segment.arrival_date_year=online_TA_segment.arrival_date_year and corporate_segment.arrival_date_month=online_TA_segment.arrival_date_month
left join groups_segment on groups_segment.hotel=online_TA_segment.hotel and groups_segment.arrival_date_year=online_TA_segment.arrival_date_year and groups_segment.arrival_date_month=online_TA_segment.arrival_date_month
left join complementary_segment on complementary_segment.hotel=online_TA_segment.hotel and complementary_segment.arrival_date_year=online_TA_segment.arrival_date_year and complementary_segment.arrival_date_month=online_TA_segment.arrival_date_month
left join aviation_segment on aviation_segment.hotel=online_TA_segment.hotel and aviation_segment.arrival_date_year=online_TA_segment.arrival_date_year and aviation_segment.arrival_date_month=online_TA_segment.arrival_date_month;



