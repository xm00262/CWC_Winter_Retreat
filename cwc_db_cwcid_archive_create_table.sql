-- Please input the historically existed CWC_ID into this table as archive first 
-- Family_ID & CWC_ID linked to be confirmation ID together,  first look into the cwc_id archive 

create table cwcid_archive( 
cwc_id varchar(50) primary key not null,  
family_id varchar(50) not null,
email varchar(50) not null, 
phone varchar(50) not null,
first_name varchar(50) not null,
last_name varchar(50) not null
);
