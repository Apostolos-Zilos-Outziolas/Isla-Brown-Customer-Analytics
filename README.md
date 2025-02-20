# Isla-Brown-Customer-Analytics

## Project Background
Brown Hotels is an international hospitality group known for a diverse portfolio of design-led boutique hotels. Brown Hotels is vastly expanding with various properties under development in Israel, Greece, Croatia, Cyprus and more.

The company has significant amounts of data on its operational efficiency, guest demographic and marketing efforts that has been previously underutilized. This project thorougly analyzes and synthesizes this data in order to uncover critical insights that will improve Isla Brown's commercial success.

Insights and recommenations are provided on the following key areas:
* **Marketing Trends Analysis**: Analysis of historical marketing patterns, globally, focusing on bookings by market segment, bookings by distribution channel and bookings per customer category.
* **Guest Behaviour Evaluation**: Evaluation of guest behaviour patterns, such as Average Length Of Stay(ALOS), Average Lead Time(ALT), the Average Number Of Days In The Waiting List, the Cancellation Rate and the Cancellation Probability.

## Data Structure & Initial Checks

Isla Brown's database structure as seen below consists of dour tables: hotel_revenue_2018, hotel_revenue_2019, hoel_revenue_2020 and market_segment with a total row count of 141.939 records.

![ERD](https://github.com/user-attachments/assets/bd936a9b-457b-4721-94d5-34c43b9687d0)

## Executive Summary

### Overview of Findings
There was a peak of bookings in 2019 and more accurately in early till late fall(August through October) of 2019 in both city and resort hotels, although with an unexpectedly high Cancelling Probability for most of the customer categories and a relatively mild Calcellation Rate(10%-40% depending on the customer category). The annual average of the Days in Waiting List was low for the resort hotels(0-6 days depending on the customer type) as weel as for the city hotels(0-5 days) with the exception of the transient group customer category whose maximum average of Days in Waiting List was 15 days. The Average Length of Stay(ALOS) was cosistently higher for the resort hotels.

## Marketing Trends for City Hotels
* The **company's bookings peaked in October 2019** with the **most bookings per market segment belonging to online Travel Agent customers corresponding to 2852 bookings**, **most bookings per distribution channel being Travel Agent or Travel Operator with 6819 bookings** and **most customers belonged in the Transient customer category with 4584 customers** in total.

* Beginning in November 2019, **bookings declined on a month to month basis for three months(November-January)**, with the bookings hitting an **season low January 2020**, where the **most bookings per market segment belonged to Online Travel Agency customers with 1308 bookings**, **most bookings per distribution channels being Travel Agent or Travel Operator with 1964 bookings** and **most customers belonged in the Transient customer category with 2058 customers**. **In the following four months (February-May) a resurgence appeared** with a **peaking of bookings in May 2020**, where **the most popular market segment, distribution channel and customer type being the same, totaling 2477 bookings, 3942 bookings and 3967 customers**. In the following months the bookings followed regular seasonality patterns.

* Another market segment that proved to be popular was **offline Travel Agent or Travel Operator customers**, which **followed the same pattern as the online Travel Agent** market segment, with **peak bookings totaling 2554 in November 2019 and lowest bookings totaling 142 bookings in January 2020**.

* No other distrubution channels seemed to be sufficient, considering the lowest difference in bookings was 1769 bookings in January 2020.

* The second most popular customer category was Transient Group customers, **following the same pattern as the Transient customer category**, **peaking with a total of 2372 customers in November 2019**, while **the lowest amount was in January 2020 totaling 300 customers**.
  
## Marketing Trends for Resort Hotels
* The **company's bookings peaked in August 2019** with the **most bookings per market segment belonging to online Travel Agency customers corresponding to 1777 bookings**, **most bookings per distribution channel being Travel Agent or Travel Operator with 2409 bookings** and **most customers belonged in the Transient customer category with 2694 customers** in total.

* Following August 2019, **bookings reduced with continuous resurgences in a month to month basis** until **March 2020, where bookings were consistently improving until August 2020**, while however not reaching their peak.

 ![market_segment](https://github.com/user-attachments/assets/7dbb91ef-f9bd-4534-95f8-b802a2cad291)


![distribution channel](https://github.com/user-attachments/assets/5a607b3a-8cf6-423d-be28-1b12157ea3ff)


![bookings per customer category](https://github.com/user-attachments/assets/6b099312-d5d8-4be6-8e9b-33c61c30155d)

## Guest Behaviour in City Hotels
* **The ALOS in city hotels peaked in November 2018 with a value of 2.15**, and had the **lowest value in July 2018 with 0.79**, however there weren't significant fluctuations on a month to month basis.

* **The cancellation rate in city hotels was the lowest in November 2018 with 0.24**, and **had the highest value in July 2018 with 0.67**. From **November 2018 until June 2019 the cancellation rate increased**, however with constant fluctuations on a month to month basis. From **October 2019 until 2020 March the cancellation rate continued to increase** with bigger fluctuation peaks. **After April 2020 the cancellation rate continuously decreased**.

* The cancellation rate of transient type customers was relatively constant, with a **peak in July 2018 of 0.64** and the **lowest value of 0.29 in August 2018 and November 2018**. 

## Guest Behaviour in Resort Hotels
* **The ALOS  in resort hotels peaked in June 2019 with a value of 4.05**, and **had the lowest value in February 2019 with 1.88** A dip in the ALOS is noticable from October until November, while it increases in the summer months.

* **The cancellation rate in resort hotels was the lowest in January 2020 with 0.16** and **had the highest value in August 2020 with 0.39**. A dip in the cancellation rate can be seen in November until January with fluctuations, while it increases in the following months until October.

* The cancellation rate of transient type customers was relatively constant, with a **peak in August 2020 of 0.43** and the **lowest value of 0.12 in November 2018**.

![ALOS](https://github.com/user-attachments/assets/08fd7d0a-771f-4a17-902f-7d9bde93472d)


![CANCELLATION RATE](https://github.com/user-attachments/assets/ae733d76-8e51-4525-b80c-b19975cc0a5e)


![cancellation rate per customr category](https://github.com/user-attachments/assets/c3e74fdc-408c-4315-ad96-febceac1723f)

## Recommendations
Based on the uncovered insights, the following recommendations have been provided:

* In order to mitigate the negative effects of seasonality, noticable by the drops of bookings in the early months of the year, management should seek to attract customers during these off-peak periods. More specifically, **a focus on improving utilixzation of market segments that are not popular, such as the group, direct, corporate and complementary market segment, may improve the number of bookings**.

* Noticing that online Travel Agents or Travel Operators attract more customers, **emphhasis should be placed on maximising their marketing and commercial potential**.

* Marketing efforts should be directed towards attracting customers other than the **transient category**, considering **they make up for 65%-90% of total bookings** in general .

* **The ALOS in resort hotels is consistently higher than the ALOS in city hotels**. In order to increase the ALOS of city hotels, and thus maximize profit, attractive packages and pricing can be promoted to potential customers or customers that may increase their stay at the hotel.
