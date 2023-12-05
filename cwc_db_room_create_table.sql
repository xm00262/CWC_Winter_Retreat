
create table Room(
Hotel_name	varchar(50),
Room_number	varchar(50),
Room_type	char(5),
check (Room_type in ('King','Queen', 'Suite')),
If_assigned	boolean,
room_occu varchar(50),
CHECK (room_occu IN ('Self-pay', 'Family', 'Single')),
Gender varchar(50),
CHECK (Gender IN ('Male', 'Female', 'F', 'M')),
Age	int,
Check_in_datetime timestamptz null default now()
);


