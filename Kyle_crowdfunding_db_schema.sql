-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/2JWmAI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Changed order of tables from import and removed quotations from table and header names
-- Simplified the primary and foreign key designations
-
CREATE TABLE Contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE Category (
    category_id VARCHAR   NOT NULL,
    category VARCHAR   NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR   NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR   NOT NULL,
    description VARCHAR   NOT NULL,
    goal NUMERIC   NOT NULL,
    pledged NUMERIC   NOT NULL,
    outcome VARCHAR   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR   NOT NULL,
    currency VARCHAR   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE  NOT NULL,
    category_id VARCHAR   NOT NULL,
    subcategory_id VARCHAR   NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) References Contacts(contact_id),
	FOREIGN KEY (category_id) References Category(category_id),
	FOREIGN KEY (subcategory_id) References Subcategory(subcategory_id)
);

--CSV files were imported here
-- Run following select statements to verify CSVs were imported correctly

SELECT * from campaign
SELECT * from category
SELECT * from contacts
SELECT * from subcategory
