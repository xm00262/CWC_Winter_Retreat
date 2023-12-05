-- cwc_db_family_create_table
SET schema 'cwc_db';

create table Attendee_family(  -- this table save the family address info to save computational resources 
Family_count serial primary key not null,
Family_ID varchar(50) UNIQUE not null,  
regi_time timestamptz null default now(),
Confirmation_ID bigint generated always as ((((((pi()+10.987)/pi() + (family_count+1.321)/family_count)))+1.234)*10000000000) STORED,    -- we can design how to link CWC_ID with confirmation ID together,  first look into the cwc_id archive 
Address varchar(50) not null,
City varchar(50) not null,
State varchar(50) not null, 
check (state in ('AL',	'AK',	'AS',	'AZ',	'AR',	'CA',	'CO',	'CT',	'DE',	'DC',	'FL',	'GA',	'GU',	'HI',	'ID',	'IL',	'IN',	'IA',	'KS',	'KY',	'LA',	'ME',	'MD',	'MA',	'MI',	'MN',	'MS',	'MO',	'MT',	'NE',	'NV',	'NH',	'NJ',	'NM',	'NY',	'NC',	'ND',	'MP',	'OH',	'OK',	'OR',	'PA',	'PR',	'RI',	'SC',	'SD',	'TN',	'TX',	'UT',	'VT',	'VA',	'VI',	'WA',	'WV',	'WI',	'WY')),
Zip_code varchar(50) not null
);

/* INSERT INTO cwc_db.attendee_family
(family_count, family_id, regi_time,  address, city, state, zip_code)
VALUES(nextval('cwc_db.attendee_family_family_count_seq'::regclass),'4a11', now(), 'adas', 'asd', 'WI', '1683123');
