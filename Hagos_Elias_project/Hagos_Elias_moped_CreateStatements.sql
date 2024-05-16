drop database if exists mopeddb;
create database mopeddb;

use mopeddb;

create table moped(
    mopedId integer not null primary key, name varchar(16) not null, itemsInStock integer not null, rating varchar(5) not null, topspeed integer not null
);

insert into moped values(10,'Mr200',400,'****',40);
insert into moped values(11,'T40',550,'*****',50);

drop user if exists 'charlie'@'localhost';
create user 'charlie'@'localhost' identified by 'Inr7X3HU';
grant all privileges on mopeddb.* to 'charlie'@'localhost';

insert into moped (mopedId, name, itemsInStock, rating, topspeed)
values
(5, 'Grampa 89', 350, '***', 20),
(2, 'MotoX 2000', 70, '**', 15),
(6, 'MaxNoise 120', 130, '**', 25),
(3, 'Mummy 10', 150, '*****', 5),
(4, 'Xross 3', 100, '****', 10),
(7, 'Skooter 95', 350, '*', 30),
(1, 'Daddy 1', 30, '*', 40);

-- select all coloumns
select * from moped;

-- select
select * from moped where rating='**';
select * from moped where itemsInStock=150;
select * from moped where rating='*****';

--update
update moped set rating = '*', topspeed= 30 where mopedId = 3;
update moped set itemsInStock = 130, topspeed= 30 where mopedId = 7;
update moped set itemsInStock = 70, topspeed= 15 where mopedId = 1;
update moped set itemsInStock = 350, topspeed= 10 where mopedId = 2;

--Delete
delete from moped where mopedId=3;
delete from moped where mopedId=4;
delete from moped where rating='*';
delete from moped where name='Grampa 89' or topspeed=25;
delete from moped where name='Daddy 1' or topspeed=25 or rating='***';




 