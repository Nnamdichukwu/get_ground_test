--first create a database
create database getground;
-- Next is to set mysql to use that database
use getground;
-- create the sales_team table with the columns and datatypes
create table sales_team(name varchar(255),country varchar(50));
-- load the csv directly into that table created
LOAD DATA   INFILE '/sales_people.csv' INTO TABLE  sales_team FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
create the partner table with the columns and datatypes. Make id the primary key
CREATE TABLE partner(id int primary key, created_at bigint, updated_at bigint, partner_type varchar(255), lead_sales_contact varchar(255));
-- load the csv directly into the table created
LOAD DATA INFILE '/partners.csv' INTO TABLE partner FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 
-- create the referral table with the columns and datatypes. Make id the primary key
CREATE TABLE referrals(id int primary key, created_at bigint, updated_at bigint, company_id int, partner_id int, consultant_id int, status varchar(255),
is_outbound BOOLEAN);
-- load the csv directly into the table created
LOAD DATA INFILE '/referrals.csv' INTO TABLE referrals FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
