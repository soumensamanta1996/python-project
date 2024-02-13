## question-1-----------
create database alumni;
## question-2----------
ATTACHED SCREENSHOT in bottom of the answer sheet

##  Question-3----------
use alumni;
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;
##--Question-4---------------
 Submit the solution in jupyter notebook
##--Question-5---------------
i am going to attach my excel sheet in bottom of the answer sheet

##--Question-6--------------
create view college_a_hs_v as select * from college_a_hs where RollNo is not null and LastUpdate is not null and FatherName ;

##--Question-7 

create view college_a_se_v as select * from college_a_se where RollNo is not null and FatherName is not null and MotherName 
is not null and batch is not null and degree is not null and PresentStatus is not null and  Organization is not null and Location;
##--Question-8

create view college_a_sj_v as select * from college_a_sj where RollNo is not null and LastUpdate is not null and FatherName 
is not null and MotherName is not null and batch is not null and degree is not null and PresentStatus is not null and 
 Organization is not null and designation is not null and Location;
 
 ##--Question-9

 create view college_b_hs_v as select * from college_b_hs where RollNo is not null and LastUpdate is not null and FatherName
 is not null and MotherName is not null and batch is not null and degree is not null and PresentStatus is not null and 
 hsdegree is not null and entranceexam is not null and institute is not null and location ;
 
  ##--Question-10
create view college_b_se_v as select * from college_b_se where RollNo is not null and LastUpdate is not null and
 FatherName is not null and mothername is not null and batch is not null and degree is not null and PresentStatus is not null and 
  Organization is not null and Location;
 
 ##--Question-11----------
 
 create view college_b_sj_v as select * from college_b_sj where RollNo is not null and LastUpdate is not null and
 FatherName is not null and mothername is not null and batch is not null and degree is not null and PresentStatus is not null and 
  Organization is not null and designation is not null and Location;
  
  ## Question-12--------------
## for college_a_hs_v----1 
USE `alumni`;
DROP procedure IF EXISTS `college_a_hs_v`;

DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_a_hs_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_a_hs;
END$$
DELIMITER ;
call college_a_hs_v();
## for college_a_se_v ---2
USE `alumni`;
DROP procedure IF EXISTS `college_a_se_v`;
DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_a_se_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_a_se;
END$$
DELIMITER ;

## for college_a_sj_v ---3

USE `alumni`;
DROP procedure IF EXISTS `college_a_sj_v`;
DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_a_sj_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_a_sj;
END$$
DELIMITER ;

## for college_b_hs_v ---4

USE `alumni`;
DROP procedure IF EXISTS `college_b_hs_v`;
DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_b_hs_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_b_hs;
END$$
DELIMITER ;

## for college_b_se_v ---5

USE `alumni`;
DROP procedure IF EXISTS `college_b_se_v`;
DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_b_se_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_b_se;
END$$
DELIMITER ;

## for college_b_sj_v ---6

USE `alumni`;
DROP procedure IF EXISTS `college_b_sj_v`;
DELIMITER $$
USE `alumni`$$
CREATE definer='root'@'localhost' PROCEDURE college_b_sj_v ()
BEGIN
select lower(name),lower(FatherName),lower(mothername) from college_b_sj;
END$$
DELIMITER ;

## Question-13----------------

attach my excel sheet in bottom of the answer sheet.
 MS Excel and make pivot chart .

## Question-14-----------------

delimiter //
create procedure get_name_collegeA
( inout name1 text(20000))
begin
declare finished int default 0;
declare namelist varchar (400) default "";
declare namedetail
cursor for 
select name from college_a_hs union
select name from college_a_se union
select name from college_a_sj ;
declare continue handler for not found set finished = 1;
open namedetail;
getnames:loop
fetch namedetail into namelist;
if finished = 1 then leave getnames;
end if ;
set name1 = concat(namelist,";",name1);
end loop getnames;
close namedetail;
end //
set@name1 =" ";
call get_name_collegeA(@collegeA);
select @collegeA ;


## Question-15-----------------

delimiter //
create procedure get_name_collegeB
( inout name1 text(20000))
begin
declare finished int default 0;
declare namelist varchar (400) default "";
declare namedetail
cursor for 
select name from college_b_hs union
select name from college_b_se union
select name from college_b_sj ;
declare continue handler for not found set finished = 1;
open namedetail;
getnames:loop
fetch namedetail into namelist;
if finished = 1 then leave getnames;
end if ;
set name1 = concat(namelist,";",name1);
end loop getnames;
close namedetail;
end //
set@name1 =" ";
call get_name_collegeB(@collegeB);
select @collegeB ;


## Question-16-----------------

select ( select count(*)from college_A_hs) + (select count(*)from college_A_se) + (select count(*)from college_A_sj); -----5887
select ( select count(*)from college_B_hs) + (select count(*)from college_B_se) + (select count(*)from college_B_sj);-----2259

select 'higher studies' ,((select count(*) from college_A_hs)/5887)*100 college_A_percentage,((select count(*)from college_B_hs)/2259)*100 college_B_percentage union  
select 'self Employee' ,((select count(*) from college_A_se)/5887)*100 college_A_percentage,((select count(*)from college_B_se)/2259)*100 college_B_percentage union 
select 'service job' ,((select count(*) from college_A_sj)/5887)*100 college_A_percentage,((select count(*)from college_B_sj)/2259)*100 college_B_percentage ;

-------------------------------================THANKS==============-----------------------------------------------------------------
 