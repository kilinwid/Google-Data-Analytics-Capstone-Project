# Google-Data-Analytics-Capstone-Project

## SCENARIO
Cyclistic, a company in Chicago, is a bike-share program company that features more than 5,800 bicycles and 600 docking stations. Cyclistic set itself apart by offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who cannot use standard two-wheeled bike. The majority of riders opt for traditional bikes, about 8% of riders use the assistive options. Cyclistic riders are more likely to ride for leisure, and about 30% use the bikes to commute to work every day.

At Cyclistic, there are two types of customers, which are annual members and casual riders. The director of marketing, Lily Moreno, believes the company’s future success depends on maximizing the number of annual memberships. Therefore, Cyclistic’s marketing team wants to understand how casual riders and annual members use Cyclistic bikes differently, so marketing team can design a new marketing strategy to convert casual riders into annual members. As a junior data analyst working on the marketing analyst team at Cyclistic, you have to find insights on how casual riders and annual members use bikes.

The data analysis process has 6 phases, which are Ask, Prepare, Process, Analyse, Share, and Act.

## PHASE 1: ASK
In this phase, we are identifying the problem we are trying to solve, so we can define clear business task in order to solve the problem.

There are three questions guide the future marketing program:
- How do annual members and casual riders use Cyclistic bikes differently?
- Why would casual riders buy Cyclistic annual memberships?
- How can Cyclistic use digital media to influence casual riders to become annual members

The first business task is finding the difference of bike usage between annual members and casual riders. From there, we can design new marketing strategy to convert casual riders to annual members

The key stakeholders for this case study are:
- Lily Moreno, the director of marketing
- Cyclistic marketing analytics team
- Cyclistic executive team

## PHASE 2: PREPARE
In this phase, we are preparing data for analysis by downloading, storing, and checking the data.
The dataset used for this case study is Cyclistic’s historical trip data that made public and can be downloaded [here.](https://divvy-tripdata.s3.amazonaws.com/index.html) This data is made available by Lyft Bikes and Scooters, LLC under this [license.](https://divvybikes.com/data-license-agreement)

For the purpose of case study, we are using one year data (January to December 2023). The file name is: 202301-divvy-tripdata.csv to 202312-divvy-tripdata.csv (12 files for 12 months).

Each file has 13 columns in it, which are ride_id (unique), rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, and member_casual.

To ensure the data is trustworthy and no bias, we are using ROCCC:
- Reliable: Data is reliable since it has more than 5 million rows, so the data is representing the population
- Original: Data is original since it is collected by Lyft Bikes and Scooters, LLC
- Comprehensive: Data is comprehensive since it has data we needed for analysis
- Current: Data is current since we are using a whole year of 2023
- Cited: Data is cited since it is from vetted and credible source

## PHASE 3: PROCESS
In this phase, we are processing and cleaning the datasets we downloaded.

Steps taken in this phase:
- We are using Rstudio desktop and Tableau Public desktop
- Set the environment in Rstudio
- Upload 12 csv files into Rstudio
<img width="300" alt="process_uploaded_data" src="https://github.com/user-attachments/assets/1d7bc8db-d5bf-4958-b901-c387e6ca9d1f">

- Check column names and column data type for each of the 12 tables
<img width="520" alt="process_check_colnames_result" src="https://github.com/user-attachments/assets/449ba3af-8859-49c1-93c9-26963d217a3d">
<img width="676" alt="process_check_string_result" src="https://github.com/user-attachments/assets/cdcced03-75f1-43ee-8e0f-cf93fe966f97">

- Remove unnecessary column and combine all 12 tables in 1 table
- Inspect the combined table
<img width="668" alt="clean_inspect_table" src="https://github.com/user-attachments/assets/72a71af7-6130-4fb2-9290-8523574ddfc6">

- Check member_casual, rideable_type, and ride_id columns for any error
<img width="384" alt="clean_check_error" src="https://github.com/user-attachments/assets/438b3488-e382-4932-b16d-9a255a001852">

- Extract and add day, month, year and day of week columns from starting_at column and add ride_length column by substracting ended_at with started_at
- Check the table data type again, and convert ride_length column to numeric
<img width="679" alt="clean_check_str_after_add_ride_length" src="https://github.com/user-attachments/assets/f162e039-d36e-4432-883d-59df914274b8">

<img width="532" alt="clean_fix_ride_length" src="https://github.com/user-attachments/assets/332039a4-bbbc-413a-966d-93e4ec6ee876">

<img width="695" alt="clean_check_str_after_fix_ride_length" src="https://github.com/user-attachments/assets/ee729b92-b96d-4518-a3d3-e4b6d565233d">

- Remove error and null data

## PHASE 4: ANALYZE
In this phase, we are analysing the cleaned data, so that we can find trend or pattern that can help us to answer business task, which is finding the difference of bike usage between annual members and casual riders.

Steps taken in this phase:
- Descriptive analysis on ride_length
<img width="302" alt="analyze_desc_analysis" src="https://github.com/user-attachments/assets/4cfd63fb-9105-4c63-a6b9-d0262b1e1dd4">

- Descriptive analysis on ride_length by customer type
<img width="512" alt="analyze_desc_analysis_customer_type" src="https://github.com/user-attachments/assets/9bc3b059-8120-49f0-ae01-b0d34a9b3aca">

- Break down customer type’s average ride_length by day of week
<img width="668" alt="analyze_customer_type_break_down_mean" src="https://github.com/user-attachments/assets/a2a338eb-3b66-4d65-8157-5498bd9e1ef7">

- Fixing the order of day of week
<img width="896" alt="analyze_customer_type_break_down_after_fixing_mean" src="https://github.com/user-attachments/assets/6465d974-3a99-463d-9551-20843a423938">

- Break down customer type’s trip per day of week
<img width="615" alt="analyze_customer_type_day_of_week_trip" src="https://github.com/user-attachments/assets/fb9f0f8e-4029-4331-88ee-d2215b41ca1b">

- Export the file to csv

## PHASE 5: SHARE
In this phase, we are sharing our analysis findings to the stakeholders. For Tableau Public visualization can be seen in [here.](https://public.tableau.com/app/profile/kilin.widjaja/viz/GoogleDataAnalyticsCapstoneProject_17226131402400/Dashboard1)

Steps taken in this phase:
- Visualize customer type by number of rides using ggplot column
<img width="330" alt="ggcol_customer_type_number_of_rides" src="https://github.com/user-attachments/assets/5d791d72-adda-40b6-97bc-ed6ccf94f7cc">

- Visualize customer type by average duration using ggplot column
<img width="330" alt="ggcol_customer_type_avg_duration" src="https://github.com/user-attachments/assets/bc8ef6db-4a8f-4cdf-a416-d6ac42427be6">

- Visualize customer type’s ride_length (average duration and count)
<img width="326" alt="tableau_ride_length" src="https://github.com/user-attachments/assets/9cf6a4fa-9daa-4d72-a0ae-058ef651c659">

- Visualize customer type’s ride_length (count) by bike type
<img width="648" alt="tableau_bike_type" src="https://github.com/user-attachments/assets/41ff954e-71e3-41b0-9043-e9ad6c0e35b9">

- Visualize customer type’s ride_length by day (average duration and count)
<img width="325" alt="tableau_by_day" src="https://github.com/user-attachments/assets/d402c723-d835-4ffe-b098-198bd922b4d5">

- Visualize customer type’s ride_length by month
<img width="323" alt="tableau_by_month" src="https://github.com/user-attachments/assets/98866a11-4d89-4670-b508-6910dc288107">

### Finding summary:
- For average rides duration:
  - Casual riders have higher average rides duration than annual members
  - Both Casual riders and annual members have higher average rides duration during weekend, however casual riders have much higher increase than annual members
- For number of rides:
  - Annual members have higher rides than casual riders
  - Casual riders have more rides in the weekend while annual members have less rides in the weekend
- For bike type:
  - Annual members like to use classic and electrical bike equally, and no annual members use docked bike
  - Casual riders like electrical bike and classic bike as the second choice, while docked bike is used but not popular 
- For Monthly comparison:
  - For average ride duration: both casual riders and annual members peak at August
  - For number of rides: casual riders peak at July, while annual members peak at August
- From the findings above we can understand that:
  - Annual members have consistent average ride duration throughout the year while having higher number of rides during June to September (summer season)
  - Casual riders have higher average ride duration during June to August (summer season) and also have higher number of rides during June to September (summer season)
  - Annual members use bike for daily commute since annual members have consistent average ride duration, while more annual members use bike during summer season
  - Casual riders use bike for leisure and sports, and more casual riders use bike during summer season, which can be seen from consistent increase
  - Electric bike is the most popular, classic bike is the second popular, and docked bike is distant third choice
 
## PHASE 6: ACT
In this final phase, we are applying our findings from data analysis to solve three questions we defined in the phase 1 (ASK). 

From finding summary, we know the answer for the first business task, which is: How do annual members and casual riders use Cyclistic bikes differently? Annual member use bike for daily commute while casual riders use bike for leisure and sports.

For the second business task, which is: Why would casual riders buy Cyclistic annual memberships? Since annual members and casual riders are different type of customers, we can not use the same marketing program to get casual riders. We need to tailor specific marketing program for casual riders beside running the existing marketing program for annual members. 

For the third business task, which is: How can Cyclistic use digital media to influence casual riders to become annual members? 

### Recommendation
- Promote health awareness to casual riders so they use bike more consistently
- Collaborate with software company to make tailored application for Cyclistic. This application must offer some alternatives to existing application, by making personalized map for annual members to know which area had they visit
- Make sports event during summer season, which has prizes and also discount for annual memberships
- Partner with local business, so annual membership has more value to have
