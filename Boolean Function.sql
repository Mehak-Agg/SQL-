use employee_DB
create table tbl_user_login
(
	user_id int primary key identity,
	username varchar(50) not null unique,
	email varchar(100) not null unique,
	password varchar(50) not null
);

insert into tbl_user_login (username,email,password) values
('ironman','tony@stark.com','tony123'),
('captain','steve@captain.com','steve456'),
('spidy','peter@paker.com','peter123'),
('wonder','wonder@woman','wonder123');

select * from tbl_user_login;

/*-> Boolean Operator <-*/

/*AND OPERATOR...*/
select username from tbl_user_login
where email='steve@captain.com' and password='steve456';

/*OR OPEARTOR...*/
select password from tbl_user_login
where username='spidy' or email='peter@peter.com';

select * from tbl_user_login
where username='spidy' or email='peter@peter.com';

/*NOT OPERATOR...*/
select * from tbl_user_login
where not username = 'wonder';

select * from tbl_user_login
where username != 'wonder';