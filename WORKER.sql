create database Office;

use office;

create table Worker (
WORKER_ID CHAR(3) PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
SALARY INT,
JOINING_DATE DATE,
DEPARTMENT VARCHAR(20)
);

ALTER TABLE WORKER
MODIFY COLUMN JOINING_DATE DATETIME;

INSERT INTO Worker
VALUES ("001", "Monika", "Arora", 100000, "2014-02-20 09:00:00", "HR"),
("002", "Niharika", "Verma", 80000, "2014-06-11 09:00:00", "Admin"),
("003", "Vishal", "Singhal", 300000, "2014-02-20 09:00:00", "HR"),
("004", "Amitabh", "Singh", 500000, "2014-02-20 09:00:00", "Admin"),
("005", "Vivek", "Bhati", 500000, "2014-06-11 09:00:00", "Admin"),
("006", "Vipul", "Diwan", 200000, "2014-06-11 09:00:00", "Account"),
("007", "Satish", "Kumar", 75000, "2014-01-20 09:00:00", "Account"),
("008", "Geetika", "Chauhan", 90000, "2014-04-11 09:00:00", "Adminary");

Select * from worker

create table Bonus (
WORKER_REF_ID CHAR(3),
BONUS_DATE DATE,
BONUS_AMOUNT INT
);

insert into Bonus 
VALUES ("1", "2016-02-20 00:00:00", 5000),
("2", "2016-06-11 00:00:00", 3000),
("3", "2016-02-20 00:00:00", 4000),
("1", "2014-02-20 00:00:00", 4500),
("2", "2014-06-11 00:00:00", 3500);

ALTER TABLE Bonus
MODIFY COLUMN BONUS_DATE DATETIME;

update Bonus
set BONUS_DATE = "2016-02-20 00:00:00"
where WORKER_REF_ID = "1";

update Bonus
set BONUS_DATE = "2016-06-11 00:00:00"
where BONUS_amount = 3500;

Select * from Bonus

create table Title (
WORKER_REF_ID CHAR(3),
WORK_TITLE VARCHAR(20),
AFFECTED_FROM DATETIME
);

INSERT INTO Title
VALUES ("1", "Manager", "2016-02-20 00:00:00"),
("2", "Executive", "2016-06-11 00:00:00"),
("8", "Executive", "2016-06-11 00:00:00"),
("5", "Manager", "2016-06-11 00:00:00"),
("4","Asst. Manager", "2016-06-11 00:00:00"),
("7", "Executive", "2016-06-11 00:00:00"),
("6", "Lead", "2016-06-11 00:00:00"),
("3", "Lead", "2016-06-11 00:00:00");

Select * from Title