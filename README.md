# Isla-Brown-Customer-Analytics

## Project Background
Brown Hotels is an international hospitality group known for a diverse portfolio of design-led boutique hotels. Brown Hotels is vastly expanding with various properties under development in Israel, Greece, Croatia, Cyprus and more.

The company has significant amounts of data on its operational efficiency, guest demographic and marketing efforts that has been previously underutilized. This project thorougly analyzes and synthesizes this data in order to uncover critical insights that will improve Isla Brown's commercial success.

Insights and recommenations are provided on the following key areas:
* **Marketing Trends Analysis**: Analysis of historical marketing patterns, globally, focusing on bookings by market segment, bookings by distribution channel and bookings per customer category.
* **Guest Behaviour Evaluation**: Evaluation of guest behaviour patterns, such as Average Length Of Stay(ALOS), Average Lead Time(ALT), the Average Number Of Days In The Waiting List, the Cancellation Rate and the Cancellation Probability.

An interactive Power Bi Dashboard can be found here(link).

The SQL queries used to inspect and perform quality checks can be found here.

The SQL queries utilized to clean, organize and prepare data for the dashboard can be found here.

Targeted SQL queries regarding various business questions can be found here.

## Data Structure & Initial Checks

Isla Brown's database structure as seen below consists of dour tables: hotel_revenue_2018, hotel_revenue_2019, hoel_revenue_2020 and market_segment with a total row count of 141.939 records.

![ERD](https://github.com/user-attachments/assets/bd936a9b-457b-4721-94d5-34c43b9687d0)

## Executive Summary

### Overview of Findings
There was a peak of bookings in 2019 and more accurately in early till late fall(August through October) of 2019 in both city and resort hotels, although with an unexpectedly high Cancelling Probability for most of the customer categories and a relatively mild Calcellation Rate(10%-40% depending on the customer category). The average of the Days in Waiting List was low for the resort hotels(0-6 days depending on the customer type) as weel as for the city hotels(0-5 days) with the exception of the transient group customer category whose maximum average of Days in Waiting List was 15 days. The Average Length of Stay(ALOS) was cosistently higher for the resort hotels, while the Average Lead Time(ALT) followed the same trends for both the resort and city hotels.

## Marketing Trends
