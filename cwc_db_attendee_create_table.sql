SET schema 'cwc_db';

create table Attendee(
Person_ID serial primary key not null,
Family_ID varchar(50) not null,  -- we can design how to link CWC_ID with confirmation ID together,  first look into the cwc_id archive 
First_name varchar(50) not null,
Last_name varchar(50) not null,  
Middle_name varchar(50),
Chinese_Name varchar(50),
--Church_Name varchar(50),
Christian_flag BOOLEAN DEFAULT 'N', 
Single BOOLEAN DEFAULT 'Y',
Gender varchar(50),
CHECK (Gender IN ('Male', 'Female', 'F', 'M')),
Age int,
Phone varchar(50) not null,
Email varchar(50) not null,
--Address varchar(50),
--City varchar(50),
--State varchar(50), 
--check (state in ('AL',	'AK',	'AS',	'AZ',	'AR',	'CA',	'CO',	'CT',	'DE',	'DC',	'FL',	'GA',	'GU',	'HI',	'ID',	'IL',	'IN',	'IA',	'KS',	'KY',	'LA',	'ME',	'MD',	'MA',	'MI',	'MN',	'MS',	'MO',	'MT',	'NE',	'NV',	'NH',	'NJ',	'NM',	'NY',	'NC',	'ND',	'MP',	'OH',	'OK',	'OR',	'PA',	'PR',	'RI',	'SC',	'SD',	'TN',	'TX',	'UT',	'VT',	'VA',	'VI',	'WA',	'WV',	'WI',	'WY')),
--Zip_code varchar(50),
Fax varchar(50),
Language_preference varchar(50),
Worship_group boolean,
Worship_date varchar(50),
Worship_morning boolean,
Worship_afternoon boolean,
General_affair boolean,
Book_room boolean,
Dining_room boolean,
Tape_recording boolean,
English_translation boolean,
Cantonese_translation boolean,
Nursery boolean,
Time_keeper boolean, 
Registration boolean,
Counselor boolean,
Speaker boolean,
CWC_worker boolean,
Mission_member boolean,
Children_coworker boolean,
Winter_coworker boolean
);

alter table attendee 
add constraint Family_ID_FK 
foreign key (Family_ID)
references attendee_family(Family_ID);




