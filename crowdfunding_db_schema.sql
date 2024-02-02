

---category csv
create table category(
category_ids varchar(75) not null,
category varchar(75) not null,
primary key (category_ids)
);

---subcategory csv
create table subcategories(
subcategory_ids varchar(75) not null,
subcategory varchar(75) not null,
primary key (subcategory_ids)
);

---campaigns csv
create table campaigns(
cf_id int not null,
contact_id int not null,
company_name varchar(75) not null,
description varchar(75) not null,
goal decimal not null,
pledged decimal not null,
outcome varchar(75) not null,
backers_count int not null,
country varchar(75) not null,
currency varchar(75) not null,
launched_date date not null,
end_date date not null,
category_ids varchar(75) not null,
subcategory_ids varchar(75) not null,
primary key (contact_id),
foreign key (category_ids) references category(category_ids),
foreign key (subcategory_ids) references subcategories(subcategory_ids)
);

---contacts csv
create table contacts(
contact_id int not null,
first_name varchar(75) not null,
last_name varchar(75) not null,
email varchar(75) not null,
foreign key (contact_id) references campaigns(contact_id)
);

--drop table campaigns;
--drop table category;
--drop table subcategories;
--drop table contacts;

---selecting to verify
select * from contacts;

select * from campaigns;

select * from category;

select * from subcategories;

