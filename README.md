# Crowdfunding_ETL
This repository contains all the group members work for the project 2: Crowdfunding_ETL

## Nick
For the subcategory and category data frame section of the project the crowdfunding.xlsx file was used to create two various data frames. The process was started by sorting the data frame into columns, and then assigning the category and subcategory values to category and subcategory columns. After understanding the sub/category breakdown and placing them into their respective lists we were able to provide an id value to the data via an array and use a list comprehension to add sub cat and cat to each specific Id. Finally, we were able to break data out into two separate data frames of subcategory and category.

## Andrea
The crowdunding.xlsx file was used in order to create the campaign data frame. Some of the columns were renamed then, the columns 'goal' and 'pledge'  were converted to a 'float' data type. The columns associated with dates were also converted, but into a datetime format. The campaign_df was then merged with the category_df and the subcategory_df and was edited to remove unnecessary columns. This dataframe was then saved to a csv file named campaign.csv

## Eileen
The provided contacts excel file contains a singular contact_info column containing contact IDs, names, and emails. Regex was used to organize this information and separate each piece of information into its own column. The contact ID’s were extracted and converted into integers. The names were extracted and separated into first and last name columns. Now, the data can be extracted into a new excel file that people may use to perform necessary queries and data manipulation.

## Kyle
The database ERD was created using the quickdatabasediagrams app (https://app.quickdatabasediagrams.com) based on the CSV files created in the previous parts. A screenshot of this ERD can be found in this repository. The Schema code was imported directly from quickdatabasediagrams into PostgreSQL, some minor stylistic changes were made, and the data was imported from the CSVs into Postgres. The imports were verified with select * statements for each table. The .SQL file containing the database schema code and select statements can be found in the repository.
