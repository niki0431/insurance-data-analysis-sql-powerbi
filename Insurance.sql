create database if not exists project;

use project;

create table insurance
(PolicyNumber varchar(15) primary key,
CustomerID varchar(15) not null,
Gender varchar(15) not null, 
Age int not null,
PolicyType varchar(20),
PolicyStartDate date,
PolicyEndDate date,
PremiumAmount decimal(10,2) not null,
CoverageAmount decimal(10,2) not null,
ClaimNumber varchar(15) not null,
ClaimDate date,
ClaimAmount decimal(10,2) not null,
ClaimStatus varchar(25) not null);

-- load the data

load data infile
"D:\InsuranceData.csv"
into table insurance
fields terminated by ","
enclosed by '"'
lines terminated by "\n"
ignore 1 rows;


set session sql_mode ='';

select * from insurance;

desc insurance;

truncate insurance;