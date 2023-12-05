
create table if not exists check_in_out(
Person_ID serial primary key not null,
Hotel_name varchar(50),
Check_in_datetime  timestamptz null default now(),
Expected_check_out_datetime  timestamptz null default now(),
Actual_check_out_datetime  timestamptz null default now(),
Room_number varchar(50),
Room_type varchar(50),
Room_leader boolean,
Table_number varchar(50),
Day1dinner boolean,
Day2breakfast boolean,
Day2lunch boolean,
Day2dinner boolean,
Day3breakfast boolean,
Day3lunch boolean,
Day3dinner boolean,
Day4breakfast boolean,
Day4lunch boolean,
Day4dinner boolean,
Day5breakfast boolean,
Day5lunch boolean,
Special_request text,
Lodging boolean,
Table_leader boolean
);

alter table check_in_out 
add constraint Person_ID_FK 
foreign key (Person_ID)
references attendee(Person_ID)


