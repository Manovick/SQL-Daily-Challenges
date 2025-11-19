create database hospital;
use hospital;
create table patients(
patient_id int,
patient_name varchar(50) unique not null,
age int,
gender enum("M","F"),
admission_date date
);
select * from patients;

alter table patients add column doctor_assigned varchar(50);
alter table patients modify column patient_name varchar (150);
rename table patients to patients_info;

truncate table patients_info;
drop table patients_info;

