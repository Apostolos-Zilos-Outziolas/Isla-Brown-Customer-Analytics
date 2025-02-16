with hotel_info as(
select * from hotel_revenue_2018
union all
select * from hotel_revenue_2019
union all
select * from hotel_revenue_2020),

TA_TO_dis_channel as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_TA_TO_customers
from hotel_info
where distribution_channel='TA/TO'
group by hotel, arrival_date_year, arrival_date_month),

direct_dis_channel as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_direct_customers
from hotel_info
where distribution_channel='Direct'
group by hotel, arrival_date_year, arrival_date_month),

corporate_dis_channel as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_corporate_customers
from hotel_info
where distribution_channel='Corporate'
group by hotel, arrival_date_year, arrival_date_month),

undefined_dis_channel as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_undefined_customers
from hotel_info
where distribution_channel='Undefined'
group by hotel, arrival_date_year, arrival_date_month),

GDS_dis_channel as(
select 
hotel,
arrival_date_year,
arrival_date_month,
count(*) as total_GDS_customers
from hotel_info
where distribution_channel='GDS'
group by hotel, arrival_date_year, arrival_date_month)

select 
TA_TO_dis_channel.hotel,
TA_TO_dis_channel.arrival_date_year,
TA_TO_dis_channel.arrival_date_month,
total_TA_TO_customers,
total_direct_customers,
total_corporate_customers,
total_undefined_customers,
total_GDS_customers
from TA_TO_dis_channel
join direct_dis_channel on direct_dis_channel.hotel=TA_TO_dis_channel.hotel and direct_dis_channel.arrival_date_year=TA_TO_dis_channel.arrival_date_year and direct_dis_channel.arrival_date_month=TA_TO_dis_channel.arrival_date_month
left join corporate_dis_channel on corporate_dis_channel.hotel=TA_TO_dis_channel.hotel and corporate_dis_channel.arrival_date_year=TA_TO_dis_channel.arrival_date_year and corporate_dis_channel.arrival_date_month=TA_TO_dis_channel.arrival_date_month
left join undefined_dis_channel on undefined_dis_channel.hotel=TA_TO_dis_channel.hotel and undefined_dis_channel.arrival_date_year=TA_TO_dis_channel.arrival_date_year and undefined_dis_channel.arrival_date_month=TA_TO_dis_channel.arrival_date_month
left join GDS_dis_channel on GDS_dis_channel.hotel=TA_TO_dis_channel.hotel and GDS_dis_channel.arrival_date_year=TA_TO_dis_channel.arrival_date_year and GDS_dis_channel.arrival_date_month=TA_TO_dis_channel.arrival_date_month;

