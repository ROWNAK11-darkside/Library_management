create database library_system;

create table Book_details
(
ISBN_NO int Primary key,
Book_Name varchar(100),
Language varchar(100),
Binding_id int,
No_Of_Copies int,
Copies_Available int,
Category_id int, 
Publication_year int
);

insert values in the table

insert into Book_details
values('001' , 'Let Us C' , 'English' , 2 , 20 , 15 , 2 , 2006);

create new table

create table Binding_details
(
Binding_id int primary key,
Binding_Name varchar(50)
)

insert values in binding table

insert into Binding_details
values(1,'McGraw Hill');

insert into Binding_details
values(2,'BPB Publications');

creating relationship between book detail and Binding Table

alter table Book_details
add constraint Binding_ID_FK foreign key(Binding_id) references
Binding_details(Binding_id);

creating category table

create table Category_Details
(
Category_id int primary key,
Category_name varchar(50)
)

insert values in category details table

insert into Category_Details
values(1,'Database');
insert into Category_Details
values(2,'Programming Language');

creating relationship between book details and category details

alter table Book_details
add constraint Category_id_fk foreign key(Category_id) references
Category_Details(Category_id);

create  borrower table

create table borrower
(
Borrower_id int primary key,
Book_id int,
Borrower_From Date,
Borrower_To Date,
Actual_Return_Date Date,
Issued_by int
)

insert data into borrower table

insert into borrower
values(1,004,'2021-06-16','2021-06-23','2021-06-23',1);
insert into borrower
values(2,005,'2021-06-17','2021-06-24',NULL,2);

create staff table

create table staff_details
(
Staff_id int primary key,
Staff_Name varchar(50),
Password varchar(30),
Is_Admin binary,
Designation varchar(20)
)

inserting some data in staff table


insert into staff_details
values(1,'Rownak Tiwari','1234ronak',0,'Lib_mgr');
insert into staff_details
values(2,'Yash Tambatkar','1234yash',0,'Lib_acc');

relationship b/w borrower and staff table

alter table borrower
add constraint Issued_by_fk foreign key(Issued_by) references
staff_details(Staff_id);


create students table


create table student_Details
(
student_ID varchar(20) primary key,
student_Name varchar(50),
Gender varchar(10),
Date_of_birth date,
Borrower_ID int,
Department varchar(20),
Contact_Number varchar(11)
)

insert student information

insert into student_Details
values('13-23059-1','Rohan Patil','Male','2000-06-12',1,'CSE', 9314567214);
insert into student_Details
values('14-23060-2','Mohit Katkar','Male','2000-04-10',1,'Mech', 9314567901);

relation b/w student and borrower

alter table student_Details
add constraint borrower_id_fk foreign key(Borrower_ID)
references borrower(Borrower_id);

