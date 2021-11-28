create table car
(
    manufacturer varchar(50) not null,
    model_name varchar(50) not null,
    weight decimal(5,2) not null,
    price decimal(5,2) not null,
    constraint section_pk primary key (manufacturer, model_name)
);

create table salesperson
(
	sid varchar(10) not null primary key,
    name varchar(50) not null
);

create table customer
(
	cid varchar(10) not null primary key,
    name varchar(50) not null,
    phone int not null
);

create table transaction
(	
	tid varchar(10) not null primary key,
	cid varchar(10) not null,
    sid varchar(10) not null,
	manufacturer varchar(50) not null,
    model_name varchar(50) not null,
	car_serial varchar(10) not null,
    date date not null,    
    constraint section_fk1 foreign key (cid) references customer(cid),
    constraint section_fk2 foreign key (sid) references salesperson(sid),
    constraint section_fk3 foreign key (manufacturer, model_name) references car(manufacturer, model_name)
);