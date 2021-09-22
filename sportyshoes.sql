create table admin
(
   adminid varchar(50) not null,
   pwd varchar(50) not null,
   primary key(adminid)
);

create table users
(
   userid varchar(50) not null,
   fname varchar(50),
   lname varchar(50),
   userpwd varchar(50) not null,
   primary key(userid)
);

create table products
(
   productid integer not null,
   productname varchar(50),
   brand varchar(50),
   price integer,
   primary key(productid)
);

create table purchases
(
   purchaseid integer not null,
   productid integer,
   userid varchar(50),
   purchasedate varchar(50),
   primary key(purchaseid),
   foreign key(productid) references products(productid),
   foreign key(userid) references users(userid)
);

insert into admin(adminid, pwd) values('admin1@sportyshoes.com', 'admin1@123');
insert into admin(adminid, pwd) values('admin2@sportyshoes.com', 'admin2@123');
insert into admin(adminid, pwd) values('admin3@sportyshoes.com', 'admin3@123');
insert into admin(adminid, pwd) values('admin4@sportyshoes.com', 'admin4@123');
insert into admin(adminid, pwd) values('admin5@sportyshoes.com', 'admin5@123');

insert into users(userid, fname, lname, userpwd) values('adam@sportyshoes.com', 'Adam', 'Michael', 'adam@123');
insert into users(userid, fname, lname, userpwd) values('mason@sportyshoes.com', 'Mason', 'West', 'mason#123$');
insert into users(userid, fname, lname, userpwd) values('jane@sportyshoes.com', 'Jane', 'Jaxon', 'jane@$12!3');
insert into users(userid, fname, lname, userpwd) values('carter@sportyshoes.com', 'Carter', 'Miles', 'miles#4321');
insert into users(userid, fname, lname, userpwd) values('cindy@sportyshoes.com', 'Cindy', 'Nolan', 'nolan$123');


insert into products(productid, productname, brand, price) values(100, 'Nike Air', 'Nike', '2956');
insert into products(productid, productname, brand, price) values(200, 'Nike Revolution', 'Nike', '4999');
insert into products(productid, productname, brand, price) values(300, 'Adias Trainers', 'Adidas', '3300');
insert into products(productid, productname, brand, price) values(400, 'Nike Jordan', 'Nike', '11398');
insert into products(productid, productname, brand, price) values(500, 'Drift Cat 5 Ultra', 'Puma', '3849');

insert into purchases(purchaseid, productid, userid, purchasedate) values(1, 100, 'adam@sportyshoes.com', 'June 1st 2021');
insert into purchases(purchaseid, productid, userid, purchasedate) values(2, 200, 'jane@sportyshoes.com', 'August 12th 2021');
insert into purchases(purchaseid, productid, userid, purchasedate) values(3, 400, 'carter@sportyshoes.com', 'April 9th 2021');
insert into purchases(purchaseid, productid, userid, purchasedate) values(4, 500, 'cindy@sportyshoes.com', 'May 1st 2021');
insert into purchases(purchaseid, productid, userid, purchasedate) values(5, 300, 'mason@sportyshoes.com', 'June 8th 2021');
