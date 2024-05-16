drop database if exists flowerdb;
create database flowerdb;

use flowerdb;

--creating table
create table flower(
    flowerId integer not null primary key, name varchar(26) not null, farmer varchar(31) not null, stock integer not null, unitPrice integer not null
);

--inserting two statements for testing
insert into flower values(10,'Elliot','G&Z Ltd. Co.',220,4);
insert into flower values(11,'Tigray','TiAd co.',129,11);

--creating new user
drop user if exists 'ava'@'localhost';

create user 'ava'@'localhost' identified by 'IOZupQxy';
grant all privileges on flowerdb.* to 'ava'@'localhost';

insert into flower (flowerId, name, farmer, stock, unitPrice)
values
(1, 'lily-of-the-valley', 'Viola and Hyacinth Company', 25, 5),
(3, 'violet',  'Poison Ivy & Co.', 100, 7),
(7, 'rose', 'Fungus Ltd.', 7, 9),
(2, 'mushroom',  'Rosamunda', 1, 8),
(4, 'tuilp',  'Roses of Rovaniemi Oy', 30, 6),
(6, 'toadstool','Mike Mycelium Ltd.', 13, 3),
(5, 'marigold', "Violet's garden", 10, 2);

select * from flower;

-- select
select * from flower where unitPrice=7;
select * from flower where name='rose';
select * from flower where farmer='Fungus Ltd.';

--update
update flower set stock = 30, name= 'mushroom' where flowerId = 2;
update flower set name = 'tulip', farmer='Rosamunda' where flowerId =1;
update flower set stock = 150, unitPrice= 7, name= 'violet' where flowerId =4;
update flower set farmer = 'Rosamunda', unitPrice= 6, name ='marigold' where flowerId = 6;


--Delete
delete from flower where flowerId=4;
delete from flower where flowerId=2;
delete from flower where farmer='Fungus Ltd.';
delete from flower where unitPrice=2 or name='violet';
delete from flower where farmer='Fungus Ltd.' and (name='lily-of-the-valley' and unitPrice=6);



